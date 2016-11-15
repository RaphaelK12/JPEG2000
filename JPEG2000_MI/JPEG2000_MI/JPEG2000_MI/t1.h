
#ifndef __T1_H
#define __T1_H
/**
@file t1.h
@brief Implementation of the tier-1 coding (coding of code-block coefficients) (T1)

The functions in T1.C have for goal to realize the tier-1 coding operation. The functions
in T1.C are used by some function in TCD.C.
*/

/** @defgroup T1 T1 - Implementation of the tier-1 coding */
/*@{*/

/* ----------------------------------------------------------------------- */
#define T1_NMSEDEC_BITS 7
//�˸���λ��־��ֻҪ������Я���а˸����κ�һ���������ᱻ��Ҫ�Ա��루ZC����
#define T1_SIG_NE 0x0001	/**< Context orientation : North-East direction */
#define T1_SIG_SE 0x0002	/**< Context orientation : South-East direction */
#define T1_SIG_SW 0x0004	/**< Context orientation : South-West direction */
#define T1_SIG_NW 0x0008	/**< Context orientation : North-West direction */
#define T1_SIG_N 0x0010		/**< Context orientation : North direction */
#define T1_SIG_E 0x0020		/**< Context orientation : East direction */
#define T1_SIG_S 0x0040		/**< Context orientation : South direction */
#define T1_SIG_W 0x0080		/**< Context orientation : West direction */

#define T1_SIG_OTH (T1_SIG_N|T1_SIG_NE|T1_SIG_E|T1_SIG_SE|T1_SIG_S|T1_SIG_SW|T1_SIG_W|T1_SIG_NW)
#define T1_SIG_PRIM (T1_SIG_N|T1_SIG_E|T1_SIG_S|T1_SIG_W)

#define T1_SGN_N 0x0100//�������Ǹ���
#define T1_SGN_E 0x0200//�������Ǹ���
#define T1_SGN_S 0x0400//�������Ǹ���
#define T1_SGN_W 0x0800//�������Ǹ���
#define T1_SGN (T1_SGN_N|T1_SGN_E|T1_SGN_S|T1_SGN_W)

#define T1_SIG 0x1000//������ڵ�ǰλƽ���ѱ�ZC�������˵������������֮ǰ���Ѿ��ҵ����׸�����λ
#define T1_REFINE 0x2000//������ڵ�ǰλƽ�����ڷ���ϸ�������б�������
#define T1_VISIT 0x4000//������ڵ�ǰλƽ����������Ҫ�Դ��������б��������

#define T1_NUMCTXS_ZC 9//ZC������
#define T1_NUMCTXS_SC 5//SC������
#define T1_NUMCTXS_MAG 3//MRC������
#define T1_NUMCTXS_AGG 1//RLC������
#define T1_NUMCTXS_UNI 1//UNIFORM������
//���涼�Ǹ�������������ʼ����ֵ
#define T1_CTXNO_ZC 0
#define T1_CTXNO_SC (T1_CTXNO_ZC+T1_NUMCTXS_ZC)//9
#define T1_CTXNO_MAG (T1_CTXNO_SC+T1_NUMCTXS_SC)//14
#define T1_CTXNO_AGG (T1_CTXNO_MAG+T1_NUMCTXS_MAG)//17
#define T1_CTXNO_UNI (T1_CTXNO_AGG+T1_NUMCTXS_AGG)//18
#define T1_NUMCTXS (T1_CTXNO_UNI+T1_NUMCTXS_UNI)//19

#define T1_NMSEDEC_FRACBITS (T1_NMSEDEC_BITS-1)//6

#define T1_TYPE_MQ 0	/**< Normal coding using entropy coder */
#define T1_TYPE_RAW 1	/**< No encoding the information is store under raw format in codestream (mode switch RAW)*/

/* ----------------------------------------------------------------------- */
//��Ҫ�Ա�־
typedef mi_INT16 mi_flag_t;

/**
Tier-1 coding (coding of code-block coefficients)
*/
typedef struct mi_t1 {

	/** MQC component ��������Ӧ��ָ����Ҫ����MQ�����ͼ�������*/
	mi_mqc_t *mqc;
	/** RAW component ��ԭʼͼ�������*/
	mi_raw_t *raw;

	mi_INT32  *data;
	mi_flag_t *flags;
	mi_UINT32 w;
	mi_UINT32 h;
	mi_UINT32 datasize;
	mi_UINT32 flagssize;
	mi_UINT32 flags_stride;
	mi_UINT32 data_stride;
	mi_BOOL   encoder;
} mi_t1_t;

#define MACRO_t1_flags(x,y) t1->flags[((x)*(t1->flags_stride))+(y)]

/** @name Exported functions */
/*@{*/
/* ----------------------------------------------------------------------- */

/**
Encode the code-blocks of a tile
@param t1 T1 handle
@param tile The tile to encode
@param tcp Tile coding parameters
@param mct_norms  FIXME DOC
@param mct_numcomps Number of components used for MCT
*/
mi_BOOL mi_t1_encode_cblks(   mi_t1_t *t1,
                                mi_tcd_tile_t *tile,
                                mi_tcp_t *tcp,
                                const mi_FLOAT64 * mct_norms,
                                mi_UINT32 mct_numcomps);

/**
Decode the code-blocks of a tile
@param t1 T1 handle
@param tilec The tile to decode
@param tccp Tile coding parameters
*/
mi_BOOL mi_t1_decode_cblks(   mi_t1_t* t1,
                                mi_tcd_tilecomp_t* tilec,
                                mi_tccp_t* tccp);



/**
 * Creates a new Tier 1 handle
 * and initializes the look-up tables of the Tier-1 coder/decoder
 * @return a new T1 handle if successful, returns NULL otherwise
*/
mi_t1_t* mi_t1_create(mi_BOOL isEncoder);

/**
 * Destroys a previously created T1 handle
 *
 * @param p_t1 Tier 1 handle to destroy
*/
void mi_t1_destroy(mi_t1_t *p_t1);
/* ----------------------------------------------------------------------- */
/*@}*/

/*@}*/

#endif /* __T1_H */
