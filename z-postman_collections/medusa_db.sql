PGDMP                         |            medusa-ArMr    15.3    15.3 �   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    47784    medusa-ArMr    DATABASE     �   CREATE DATABASE "medusa-ArMr" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_India.1252';
    DROP DATABASE "medusa-ArMr";
                postgres    false                        3079    50153    pg_trgm 	   EXTENSION     ;   CREATE EXTENSION IF NOT EXISTS pg_trgm WITH SCHEMA public;
    DROP EXTENSION pg_trgm;
                   false            �           0    0    EXTENSION pg_trgm    COMMENT     e   COMMENT ON EXTENSION pg_trgm IS 'text similarity measurement and index searching based on trigrams';
                        false    2            +           1247    49960    PAYMENT_COLLECTION_STATUS_ENUM    TYPE     �   CREATE TYPE public."PAYMENT_COLLECTION_STATUS_ENUM" AS ENUM (
    'not_paid',
    'awaiting',
    'authorized',
    'partially_authorized',
    'canceled'
);
 3   DROP TYPE public."PAYMENT_COLLECTION_STATUS_ENUM";
       public          postgres    false            (           1247    49957    PAYMENT_COLLECTION_TYPE_ENUM    TYPE     P   CREATE TYPE public."PAYMENT_COLLECTION_TYPE_ENUM" AS ENUM (
    'order_edit'
);
 1   DROP TYPE public."PAYMENT_COLLECTION_TYPE_ENUM";
       public          postgres    false            �           1247    49392    cart_type_enum    TYPE     }   CREATE TYPE public.cart_type_enum AS ENUM (
    'default',
    'swap',
    'draft_order',
    'payment_link',
    'claim'
);
 !   DROP TYPE public.cart_type_enum;
       public          postgres    false            �           1247    48849    claim_item_reason_enum    TYPE     �   CREATE TYPE public.claim_item_reason_enum AS ENUM (
    'missing_item',
    'wrong_item',
    'production_failure',
    'other'
);
 )   DROP TYPE public.claim_item_reason_enum;
       public          postgres    false            �           1247    48878 #   claim_order_fulfillment_status_enum    TYPE     �   CREATE TYPE public.claim_order_fulfillment_status_enum AS ENUM (
    'not_fulfilled',
    'partially_fulfilled',
    'fulfilled',
    'partially_shipped',
    'shipped',
    'partially_returned',
    'returned',
    'canceled',
    'requires_action'
);
 6   DROP TYPE public.claim_order_fulfillment_status_enum;
       public          postgres    false            �           1247    48870    claim_order_payment_status_enum    TYPE     m   CREATE TYPE public.claim_order_payment_status_enum AS ENUM (
    'na',
    'not_refunded',
    'refunded'
);
 2   DROP TYPE public.claim_order_payment_status_enum;
       public          postgres    false            �           1247    48898    claim_order_type_enum    TYPE     R   CREATE TYPE public.claim_order_type_enum AS ENUM (
    'refund',
    'replace'
);
 (   DROP TYPE public.claim_order_type_enum;
       public          postgres    false            �           1247    49610     discount_condition_operator_enum    TYPE     X   CREATE TYPE public.discount_condition_operator_enum AS ENUM (
    'in',
    'not_in'
);
 3   DROP TYPE public.discount_condition_operator_enum;
       public          postgres    false            �           1247    49599    discount_condition_type_enum    TYPE     �   CREATE TYPE public.discount_condition_type_enum AS ENUM (
    'products',
    'product_types',
    'product_collections',
    'product_tags',
    'customer_groups'
);
 /   DROP TYPE public.discount_condition_type_enum;
       public          postgres    false                       1247    47978    discount_rule_allocation_enum    TYPE     V   CREATE TYPE public.discount_rule_allocation_enum AS ENUM (
    'total',
    'item'
);
 0   DROP TYPE public.discount_rule_allocation_enum;
       public          postgres    false                       1247    47970    discount_rule_type_enum    TYPE     k   CREATE TYPE public.discount_rule_type_enum AS ENUM (
    'fixed',
    'percentage',
    'free_shipping'
);
 *   DROP TYPE public.discount_rule_type_enum;
       public          postgres    false            �           1247    49144    draft_order_status_enum    TYPE     T   CREATE TYPE public.draft_order_status_enum AS ENUM (
    'open',
    'completed'
);
 *   DROP TYPE public.draft_order_status_enum;
       public          postgres    false            �           1247    49348    invite_role_enum    TYPE     \   CREATE TYPE public.invite_role_enum AS ENUM (
    'admin',
    'member',
    'developer'
);
 #   DROP TYPE public.invite_role_enum;
       public          postgres    false            >           1247    48210    order_fulfillment_status_enum    TYPE     �   CREATE TYPE public.order_fulfillment_status_enum AS ENUM (
    'not_fulfilled',
    'partially_fulfilled',
    'fulfilled',
    'partially_shipped',
    'shipped',
    'partially_returned',
    'returned',
    'canceled',
    'requires_action'
);
 0   DROP TYPE public.order_fulfillment_status_enum;
       public          postgres    false                       1247    49894    order_item_change_type_enum    TYPE     q   CREATE TYPE public.order_item_change_type_enum AS ENUM (
    'item_add',
    'item_remove',
    'item_update'
);
 .   DROP TYPE public.order_item_change_type_enum;
       public          postgres    false            A           1247    48230    order_payment_status_enum    TYPE     �   CREATE TYPE public.order_payment_status_enum AS ENUM (
    'not_paid',
    'awaiting',
    'captured',
    'partially_refunded',
    'refunded',
    'canceled',
    'requires_action'
);
 ,   DROP TYPE public.order_payment_status_enum;
       public          postgres    false            ;           1247    48199    order_status_enum    TYPE     �   CREATE TYPE public.order_status_enum AS ENUM (
    'pending',
    'completed',
    'archived',
    'canceled',
    'requires_action'
);
 $   DROP TYPE public.order_status_enum;
       public          postgres    false                       1247    48004    payment_session_status_enum    TYPE     �   CREATE TYPE public.payment_session_status_enum AS ENUM (
    'authorized',
    'pending',
    'requires_more',
    'error',
    'canceled'
);
 .   DROP TYPE public.payment_session_status_enum;
       public          postgres    false                       1247    49744    price_list_status_enum    TYPE     Q   CREATE TYPE public.price_list_status_enum AS ENUM (
    'active',
    'draft'
);
 )   DROP TYPE public.price_list_status_enum;
       public          postgres    false                       1247    49738    price_list_type_enum    TYPE     P   CREATE TYPE public.price_list_type_enum AS ENUM (
    'sale',
    'override'
);
 '   DROP TYPE public.price_list_type_enum;
       public          postgres    false            �           1247    49327    product_status_enum    TYPE     q   CREATE TYPE public.product_status_enum AS ENUM (
    'draft',
    'proposed',
    'published',
    'rejected'
);
 &   DROP TYPE public.product_status_enum;
       public          postgres    false            �           1247    48926    refund_reason_enum    TYPE     v   CREATE TYPE public.refund_reason_enum AS ENUM (
    'discount',
    'return',
    'swap',
    'claim',
    'other'
);
 %   DROP TYPE public.refund_reason_enum;
       public          postgres    false            �           1247    49252    return_status_enum    TYPE     z   CREATE TYPE public.return_status_enum AS ENUM (
    'requested',
    'received',
    'requires_action',
    'canceled'
);
 %   DROP TYPE public.return_status_enum;
       public          postgres    false            �           1247    47927    shipping_option_price_type_enum    TYPE     b   CREATE TYPE public.shipping_option_price_type_enum AS ENUM (
    'flat_rate',
    'calculated'
);
 2   DROP TYPE public.shipping_option_price_type_enum;
       public          postgres    false            �           1247    47914 %   shipping_option_requirement_type_enum    TYPE     m   CREATE TYPE public.shipping_option_requirement_type_enum AS ENUM (
    'min_subtotal',
    'max_subtotal'
);
 8   DROP TYPE public.shipping_option_requirement_type_enum;
       public          postgres    false                       1247    47943    shipping_profile_type_enum    TYPE     h   CREATE TYPE public.shipping_profile_type_enum AS ENUM (
    'default',
    'gift_card',
    'custom'
);
 -   DROP TYPE public.shipping_profile_type_enum;
       public          postgres    false                       1247    49873    swap_fulfillment_status_enum    TYPE     �   CREATE TYPE public.swap_fulfillment_status_enum AS ENUM (
    'not_fulfilled',
    'fulfilled',
    'shipped',
    'partially_shipped',
    'canceled',
    'requires_action'
);
 /   DROP TYPE public.swap_fulfillment_status_enum;
       public          postgres    false            �           1247    49276    swap_payment_status_enum    TYPE     �   CREATE TYPE public.swap_payment_status_enum AS ENUM (
    'not_paid',
    'awaiting',
    'captured',
    'confirmed',
    'canceled',
    'difference_refunded',
    'partially_refunded',
    'refunded',
    'requires_action'
);
 +   DROP TYPE public.swap_payment_status_enum;
       public          postgres    false            �           1247    49368    user_role_enum    TYPE     Z   CREATE TYPE public.user_role_enum AS ENUM (
    'admin',
    'member',
    'developer'
);
 !   DROP TYPE public.user_role_enum;
       public          postgres    false            �            1259    48274    address    TABLE     g  CREATE TABLE public.address (
    id character varying NOT NULL,
    customer_id character varying,
    company character varying,
    first_name character varying,
    last_name character varying,
    address_1 character varying,
    address_2 character varying,
    city character varying,
    country_code character varying,
    province character varying,
    postal_code character varying,
    phone character varying,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb
);
    DROP TABLE public.address;
       public         heap    postgres    false            6           1259    50042    analytics_config    TABLE     w  CREATE TABLE public.analytics_config (
    id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    user_id character varying NOT NULL,
    opt_out boolean DEFAULT false NOT NULL,
    anonymize boolean DEFAULT false NOT NULL
);
 $   DROP TABLE public.analytics_config;
       public         heap    postgres    false            .           1259    49808 	   batch_job    TABLE     |  CREATE TABLE public.batch_job (
    id character varying NOT NULL,
    type text NOT NULL,
    created_by character varying,
    context jsonb,
    result jsonb,
    dry_run boolean DEFAULT false NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    pre_processed_at timestamp with time zone,
    confirmed_at timestamp with time zone,
    processing_at timestamp with time zone,
    completed_at timestamp with time zone,
    failed_at timestamp with time zone,
    canceled_at timestamp with time zone,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);
    DROP TABLE public.batch_job;
       public         heap    postgres    false            �            1259    48061    cart    TABLE     �  CREATE TABLE public.cart (
    id character varying NOT NULL,
    email character varying,
    billing_address_id character varying,
    shipping_address_id character varying,
    region_id character varying NOT NULL,
    customer_id character varying,
    payment_id character varying,
    type public.cart_type_enum DEFAULT 'default'::public.cart_type_enum NOT NULL,
    completed_at timestamp with time zone,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb,
    idempotency_key character varying,
    context jsonb,
    payment_authorized_at timestamp with time zone,
    sales_channel_id character varying
);
    DROP TABLE public.cart;
       public         heap    postgres    false    1230    1230                       1259    48374    cart_discounts    TABLE     {   CREATE TABLE public.cart_discounts (
    cart_id character varying NOT NULL,
    discount_id character varying NOT NULL
);
 "   DROP TABLE public.cart_discounts;
       public         heap    postgres    false                       1259    48383    cart_gift_cards    TABLE     }   CREATE TABLE public.cart_gift_cards (
    cart_id character varying NOT NULL,
    gift_card_id character varying NOT NULL
);
 #   DROP TABLE public.cart_gift_cards;
       public         heap    postgres    false            
           1259    48829    claim_image    TABLE     V  CREATE TABLE public.claim_image (
    id character varying NOT NULL,
    claim_item_id character varying NOT NULL,
    url character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb
);
    DROP TABLE public.claim_image;
       public         heap    postgres    false                       1259    48857 
   claim_item    TABLE     �  CREATE TABLE public.claim_item (
    id character varying NOT NULL,
    claim_order_id character varying NOT NULL,
    item_id character varying NOT NULL,
    variant_id character varying NOT NULL,
    reason public.claim_item_reason_enum NOT NULL,
    note character varying,
    quantity integer NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb
);
    DROP TABLE public.claim_item;
       public         heap    postgres    false    1152                       1259    48914    claim_item_tags    TABLE     w   CREATE TABLE public.claim_item_tags (
    item_id character varying NOT NULL,
    tag_id character varying NOT NULL
);
 #   DROP TABLE public.claim_item_tags;
       public         heap    postgres    false                       1259    48903    claim_order    TABLE       CREATE TABLE public.claim_order (
    id character varying NOT NULL,
    payment_status public.claim_order_payment_status_enum DEFAULT 'na'::public.claim_order_payment_status_enum NOT NULL,
    fulfillment_status public.claim_order_fulfillment_status_enum DEFAULT 'not_fulfilled'::public.claim_order_fulfillment_status_enum NOT NULL,
    type public.claim_order_type_enum NOT NULL,
    order_id character varying NOT NULL,
    shipping_address_id character varying,
    refund_amount integer,
    canceled_at timestamp with time zone,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb,
    idempotency_key character varying,
    no_notification boolean
);
    DROP TABLE public.claim_order;
       public         heap    postgres    false    1158    1161    1164    1161    1158                       1259    48838 	   claim_tag    TABLE     (  CREATE TABLE public.claim_tag (
    id character varying NOT NULL,
    value character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb
);
    DROP TABLE public.claim_tag;
       public         heap    postgres    false            �            1259    47835    country    TABLE       CREATE TABLE public.country (
    id integer NOT NULL,
    iso_2 character varying NOT NULL,
    iso_3 character varying NOT NULL,
    num_code integer NOT NULL,
    name character varying NOT NULL,
    display_name character varying NOT NULL,
    region_id character varying
);
    DROP TABLE public.country;
       public         heap    postgres    false            �            1259    47834    country_id_seq    SEQUENCE     �   CREATE SEQUENCE public.country_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.country_id_seq;
       public          postgres    false    223            �           0    0    country_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.country_id_seq OWNED BY public.country.id;
          public          postgres    false    222            �            1259    47827    currency    TABLE     �   CREATE TABLE public.currency (
    code character varying NOT NULL,
    symbol character varying NOT NULL,
    symbol_native character varying NOT NULL,
    name character varying NOT NULL
);
    DROP TABLE public.currency;
       public         heap    postgres    false                       1259    49378    custom_shipping_option    TABLE     }  CREATE TABLE public.custom_shipping_option (
    id character varying NOT NULL,
    price integer NOT NULL,
    shipping_option_id character varying NOT NULL,
    cart_id character varying,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb
);
 *   DROP TABLE public.custom_shipping_option;
       public         heap    postgres    false            �            1259    48261    customer    TABLE       CREATE TABLE public.customer (
    id character varying NOT NULL,
    email character varying NOT NULL,
    first_name character varying,
    last_name character varying,
    billing_address_id character varying,
    password_hash character varying,
    phone character varying,
    has_account boolean DEFAULT false NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb
);
    DROP TABLE public.customer;
       public         heap    postgres    false            #           1259    49569    customer_group    TABLE     ,  CREATE TABLE public.customer_group (
    id character varying NOT NULL,
    name character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb
);
 "   DROP TABLE public.customer_group;
       public         heap    postgres    false            $           1259    49579    customer_group_customers    TABLE     �   CREATE TABLE public.customer_group_customers (
    customer_group_id character varying NOT NULL,
    customer_id character varying NOT NULL
);
 ,   DROP TABLE public.customer_group_customers;
       public         heap    postgres    false            �            1259    47992    discount    TABLE     �  CREATE TABLE public.discount (
    id character varying NOT NULL,
    code character varying NOT NULL,
    is_dynamic boolean NOT NULL,
    rule_id character varying,
    is_disabled boolean NOT NULL,
    parent_discount_id character varying,
    starts_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    ends_at timestamp with time zone,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb,
    usage_limit integer,
    usage_count integer DEFAULT 0 NOT NULL,
    valid_duration character varying
);
    DROP TABLE public.discount;
       public         heap    postgres    false            %           1259    49615    discount_condition    TABLE     �  CREATE TABLE public.discount_condition (
    id character varying NOT NULL,
    type public.discount_condition_type_enum NOT NULL,
    operator public.discount_condition_operator_enum NOT NULL,
    discount_rule_id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb
);
 &   DROP TABLE public.discount_condition;
       public         heap    postgres    false    1260    1263            &           1259    49627 !   discount_condition_customer_group    TABLE     -  CREATE TABLE public.discount_condition_customer_group (
    customer_group_id character varying NOT NULL,
    condition_id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    metadata jsonb
);
 5   DROP TABLE public.discount_condition_customer_group;
       public         heap    postgres    false            *           1259    49663    discount_condition_product    TABLE       CREATE TABLE public.discount_condition_product (
    product_id character varying NOT NULL,
    condition_id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    metadata jsonb
);
 .   DROP TABLE public.discount_condition_product;
       public         heap    postgres    false            '           1259    49636 %   discount_condition_product_collection    TABLE     5  CREATE TABLE public.discount_condition_product_collection (
    product_collection_id character varying NOT NULL,
    condition_id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    metadata jsonb
);
 9   DROP TABLE public.discount_condition_product_collection;
       public         heap    postgres    false            (           1259    49645    discount_condition_product_tag    TABLE     '  CREATE TABLE public.discount_condition_product_tag (
    product_tag_id character varying NOT NULL,
    condition_id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    metadata jsonb
);
 2   DROP TABLE public.discount_condition_product_tag;
       public         heap    postgres    false            )           1259    49654    discount_condition_product_type    TABLE     )  CREATE TABLE public.discount_condition_product_type (
    product_type_id character varying NOT NULL,
    condition_id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    metadata jsonb
);
 3   DROP TABLE public.discount_condition_product_type;
       public         heap    postgres    false                       1259    48365    discount_regions    TABLE        CREATE TABLE public.discount_regions (
    discount_id character varying NOT NULL,
    region_id character varying NOT NULL
);
 $   DROP TABLE public.discount_regions;
       public         heap    postgres    false            �            1259    47983    discount_rule    TABLE     �  CREATE TABLE public.discount_rule (
    id character varying NOT NULL,
    description character varying,
    type public.discount_rule_type_enum NOT NULL,
    value integer NOT NULL,
    allocation public.discount_rule_allocation_enum,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb
);
 !   DROP TABLE public.discount_rule;
       public         heap    postgres    false    1038    1041                       1259    48356    discount_rule_products    TABLE     �   CREATE TABLE public.discount_rule_products (
    discount_rule_id character varying NOT NULL,
    product_id character varying NOT NULL
);
 *   DROP TABLE public.discount_rule_products;
       public         heap    postgres    false                       1259    49150    draft_order    TABLE     =  CREATE TABLE public.draft_order (
    id character varying NOT NULL,
    status public.draft_order_status_enum DEFAULT 'open'::public.draft_order_status_enum NOT NULL,
    display_id integer NOT NULL,
    cart_id character varying,
    order_id character varying,
    canceled_at timestamp with time zone,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    completed_at timestamp with time zone,
    metadata jsonb,
    idempotency_key character varying,
    no_notification_order boolean
);
    DROP TABLE public.draft_order;
       public         heap    postgres    false    1194    1194                       1259    49149    draft_order_display_id_seq    SEQUENCE     �   CREATE SEQUENCE public.draft_order_display_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.draft_order_display_id_seq;
       public          postgres    false    278            �           0    0    draft_order_display_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.draft_order_display_id_seq OWNED BY public.draft_order.display_id;
          public          postgres    false    277            A           1259    52819    dtdc_states    TABLE     b   CREATE TABLE public.dtdc_states (
    type character varying,
    state_city character varying
);
    DROP TABLE public.dtdc_states;
       public         heap    postgres    false            �            1259    47809    fulfillment    TABLE     o  CREATE TABLE public.fulfillment (
    id character varying NOT NULL,
    swap_id character varying,
    order_id character varying,
    tracking_numbers jsonb DEFAULT '[]'::jsonb NOT NULL,
    data jsonb NOT NULL,
    shipped_at timestamp with time zone,
    canceled_at timestamp with time zone,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    metadata jsonb,
    idempotency_key character varying,
    provider_id character varying,
    claim_order_id character varying,
    no_notification boolean,
    location_id character varying
);
    DROP TABLE public.fulfillment;
       public         heap    postgres    false            �            1259    47802    fulfillment_item    TABLE     �   CREATE TABLE public.fulfillment_item (
    fulfillment_id character varying NOT NULL,
    item_id character varying NOT NULL,
    quantity integer NOT NULL
);
 $   DROP TABLE public.fulfillment_item;
       public         heap    postgres    false            �            1259    47794    fulfillment_provider    TABLE     �   CREATE TABLE public.fulfillment_provider (
    id character varying NOT NULL,
    is_installed boolean DEFAULT true NOT NULL
);
 (   DROP TABLE public.fulfillment_provider;
       public         heap    postgres    false            �            1259    48040 	   gift_card    TABLE       CREATE TABLE public.gift_card (
    id character varying NOT NULL,
    code character varying NOT NULL,
    value integer NOT NULL,
    balance integer NOT NULL,
    region_id character varying NOT NULL,
    order_id character varying,
    is_disabled boolean DEFAULT false NOT NULL,
    ends_at timestamp with time zone,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb,
    tax_rate real
);
    DROP TABLE public.gift_card;
       public         heap    postgres    false            �            1259    48170    gift_card_transaction    TABLE     /  CREATE TABLE public.gift_card_transaction (
    id character varying NOT NULL,
    gift_card_id character varying NOT NULL,
    order_id character varying NOT NULL,
    amount integer NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    is_taxable boolean,
    tax_rate real
);
 )   DROP TABLE public.gift_card_transaction;
       public         heap    postgres    false            �            1259    48283    idempotency_key    TABLE     �  CREATE TABLE public.idempotency_key (
    id character varying NOT NULL,
    idempotency_key character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    locked_at timestamp with time zone,
    request_method character varying,
    request_params jsonb,
    request_path character varying,
    response_code integer,
    response_body jsonb,
    recovery_point character varying DEFAULT 'started'::character varying NOT NULL
);
 #   DROP TABLE public.idempotency_key;
       public         heap    postgres    false            �            1259    47861    image    TABLE     "  CREATE TABLE public.image (
    id character varying NOT NULL,
    url character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb
);
    DROP TABLE public.image;
       public         heap    postgres    false                       1259    49355    invite    TABLE     	  CREATE TABLE public.invite (
    id character varying NOT NULL,
    user_email character varying NOT NULL,
    role public.invite_role_enum DEFAULT 'member'::public.invite_role_enum,
    accepted boolean DEFAULT false NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb,
    token character varying NOT NULL,
    expires_at timestamp with time zone DEFAULT now() NOT NULL
);
    DROP TABLE public.invite;
       public         heap    postgres    false    1218    1218            �            1259    48150 	   line_item    TABLE       CREATE TABLE public.line_item (
    id character varying NOT NULL,
    cart_id character varying,
    order_id character varying,
    swap_id character varying,
    title character varying NOT NULL,
    description character varying,
    thumbnail character varying,
    is_giftcard boolean DEFAULT false NOT NULL,
    should_merge boolean DEFAULT true NOT NULL,
    allow_discounts boolean DEFAULT true NOT NULL,
    has_shipping boolean,
    unit_price integer NOT NULL,
    variant_id character varying,
    quantity integer NOT NULL,
    fulfilled_quantity integer,
    returned_quantity integer,
    shipped_quantity integer,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    metadata jsonb,
    claim_order_id character varying,
    is_return boolean DEFAULT false NOT NULL,
    original_item_id character varying,
    order_edit_id character varying,
    CONSTRAINT "CHK_0cd85e15610d11b553d5e8fda6" CHECK ((shipped_quantity <= fulfilled_quantity)),
    CONSTRAINT "CHK_64eef00a5064887634f1680866" CHECK ((quantity > 0)),
    CONSTRAINT "CHK_91f40396d847f6ecfd9f752bf8" CHECK ((returned_quantity <= quantity)),
    CONSTRAINT "CHK_c61716c68f5ad5de2834c827d3" CHECK ((fulfilled_quantity <= quantity))
);
    DROP TABLE public.line_item;
       public         heap    postgres    false            -           1259    49784    line_item_adjustment    TABLE     �   CREATE TABLE public.line_item_adjustment (
    id character varying NOT NULL,
    item_id character varying NOT NULL,
    description character varying NOT NULL,
    discount_id character varying,
    amount numeric NOT NULL,
    metadata jsonb
);
 (   DROP TABLE public.line_item_adjustment;
       public         heap    postgres    false                       1259    49463    line_item_tax_line    TABLE     c  CREATE TABLE public.line_item_tax_line (
    id character varying NOT NULL,
    rate real NOT NULL,
    name character varying NOT NULL,
    code character varying,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    metadata jsonb,
    item_id character varying NOT NULL
);
 &   DROP TABLE public.line_item_tax_line;
       public         heap    postgres    false            �            1259    47786 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    "timestamp" bigint NOT NULL,
    name character varying NOT NULL
);
    DROP TABLE public.migrations;
       public         heap    postgres    false            �            1259    47785    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public          postgres    false    216            �           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
          public          postgres    false    215            �            1259    47870    money_amount    TABLE     �  CREATE TABLE public.money_amount (
    id character varying NOT NULL,
    currency_code character varying NOT NULL,
    amount integer NOT NULL,
    region_id character varying,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    min_quantity integer,
    max_quantity integer,
    price_list_id character varying
);
     DROP TABLE public.money_amount;
       public         heap    postgres    false                       1259    49336    note    TABLE     �  CREATE TABLE public.note (
    id character varying NOT NULL,
    value character varying NOT NULL,
    resource_type character varying NOT NULL,
    resource_id character varying NOT NULL,
    author_id character varying,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb
);
    DROP TABLE public.note;
       public         heap    postgres    false                       1259    49059    notification    TABLE     �  CREATE TABLE public.notification (
    id character varying NOT NULL,
    event_name character varying,
    resource_type character varying NOT NULL,
    resource_id character varying NOT NULL,
    customer_id character varying,
    "to" character varying NOT NULL,
    data jsonb NOT NULL,
    parent_id character varying,
    provider_id character varying,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL
);
     DROP TABLE public.notification;
       public         heap    postgres    false                       1259    49051    notification_provider    TABLE     �   CREATE TABLE public.notification_provider (
    id character varying NOT NULL,
    is_installed boolean DEFAULT true NOT NULL
);
 )   DROP TABLE public.notification_provider;
       public         heap    postgres    false            �            1259    48293    oauth    TABLE     �   CREATE TABLE public.oauth (
    id character varying NOT NULL,
    display_name character varying NOT NULL,
    application_name character varying NOT NULL,
    install_url character varying,
    uninstall_url character varying,
    data jsonb
);
    DROP TABLE public.oauth;
       public         heap    postgres    false            >           1259    50258    onboarding_state    TABLE     4  CREATE TABLE public.onboarding_state (
    id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    current_step character varying,
    is_complete boolean NOT NULL,
    product_id character varying
);
 $   DROP TABLE public.onboarding_state;
       public         heap    postgres    false            �            1259    48246    order    TABLE     Y  CREATE TABLE public."order" (
    id character varying NOT NULL,
    status public.order_status_enum DEFAULT 'pending'::public.order_status_enum NOT NULL,
    fulfillment_status public.order_fulfillment_status_enum DEFAULT 'not_fulfilled'::public.order_fulfillment_status_enum NOT NULL,
    payment_status public.order_payment_status_enum DEFAULT 'not_paid'::public.order_payment_status_enum NOT NULL,
    display_id integer NOT NULL,
    cart_id character varying,
    customer_id character varying NOT NULL,
    email character varying NOT NULL,
    billing_address_id character varying,
    shipping_address_id character varying,
    region_id character varying NOT NULL,
    currency_code character varying NOT NULL,
    tax_rate real,
    canceled_at timestamp with time zone,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    metadata jsonb,
    idempotency_key character varying,
    draft_order_id character varying,
    no_notification boolean,
    external_id character varying,
    sales_channel_id character varying
);
    DROP TABLE public."order";
       public         heap    postgres    false    1083    1086    1089    1086    1083    1089                       1259    48392    order_discounts    TABLE     }   CREATE TABLE public.order_discounts (
    order_id character varying NOT NULL,
    discount_id character varying NOT NULL
);
 #   DROP TABLE public.order_discounts;
       public         heap    postgres    false            �            1259    48245    order_display_id_seq    SEQUENCE     �   CREATE SEQUENCE public.order_display_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.order_display_id_seq;
       public          postgres    false    248            �           0    0    order_display_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.order_display_id_seq OWNED BY public."order".display_id;
          public          postgres    false    247            2           1259    49916 
   order_edit    TABLE     �  CREATE TABLE public.order_edit (
    id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    order_id character varying NOT NULL,
    internal_note character varying,
    created_by character varying NOT NULL,
    requested_by character varying,
    requested_at timestamp with time zone,
    confirmed_by character varying,
    confirmed_at timestamp with time zone,
    declined_by character varying,
    declined_reason character varying,
    declined_at timestamp with time zone,
    canceled_by character varying,
    canceled_at timestamp with time zone,
    payment_collection_id character varying
);
    DROP TABLE public.order_edit;
       public         heap    postgres    false                       1259    48401    order_gift_cards    TABLE        CREATE TABLE public.order_gift_cards (
    order_id character varying NOT NULL,
    gift_card_id character varying NOT NULL
);
 $   DROP TABLE public.order_gift_cards;
       public         heap    postgres    false            1           1259    49901    order_item_change    TABLE     �  CREATE TABLE public.order_item_change (
    id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    type public.order_item_change_type_enum NOT NULL,
    order_edit_id character varying NOT NULL,
    original_line_item_id character varying,
    line_item_id character varying
);
 %   DROP TABLE public.order_item_change;
       public         heap    postgres    false    1311            �            1259    48026    payment    TABLE     p  CREATE TABLE public.payment (
    id character varying NOT NULL,
    swap_id character varying,
    cart_id character varying,
    order_id character varying,
    amount integer NOT NULL,
    currency_code character varying NOT NULL,
    amount_refunded integer DEFAULT 0 NOT NULL,
    provider_id character varying NOT NULL,
    data jsonb NOT NULL,
    captured_at timestamp with time zone,
    canceled_at timestamp with time zone,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    metadata jsonb,
    idempotency_key character varying
);
    DROP TABLE public.payment;
       public         heap    postgres    false            3           1259    49971    payment_collection    TABLE     V  CREATE TABLE public.payment_collection (
    id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    type public."PAYMENT_COLLECTION_TYPE_ENUM" NOT NULL,
    status public."PAYMENT_COLLECTION_STATUS_ENUM" NOT NULL,
    description text,
    amount integer NOT NULL,
    authorized_amount integer,
    region_id character varying NOT NULL,
    currency_code character varying NOT NULL,
    metadata jsonb,
    created_by character varying NOT NULL
);
 &   DROP TABLE public.payment_collection;
       public         heap    postgres    false    1323    1320            5           1259    50006    payment_collection_payments    TABLE     �   CREATE TABLE public.payment_collection_payments (
    payment_collection_id character varying NOT NULL,
    payment_id character varying NOT NULL
);
 /   DROP TABLE public.payment_collection_payments;
       public         heap    postgres    false            4           1259    49987    payment_collection_sessions    TABLE     �   CREATE TABLE public.payment_collection_sessions (
    payment_collection_id character varying NOT NULL,
    payment_session_id character varying NOT NULL
);
 /   DROP TABLE public.payment_collection_sessions;
       public         heap    postgres    false            �            1259    47844    payment_provider    TABLE     |   CREATE TABLE public.payment_provider (
    id character varying NOT NULL,
    is_installed boolean DEFAULT true NOT NULL
);
 $   DROP TABLE public.payment_provider;
       public         heap    postgres    false            �            1259    48015    payment_session    TABLE        CREATE TABLE public.payment_session (
    id character varying NOT NULL,
    cart_id character varying,
    provider_id character varying NOT NULL,
    is_selected boolean,
    status public.payment_session_status_enum NOT NULL,
    data jsonb NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    idempotency_key character varying,
    payment_authorized_at timestamp with time zone,
    amount integer,
    is_initiated boolean DEFAULT false NOT NULL
);
 #   DROP TABLE public.payment_session;
       public         heap    postgres    false    1050            @           1259    52811    pincode    TABLE     �   CREATE TABLE public.pincode (
    postofficename character varying(100),
    pincode numeric,
    city character varying(100),
    district character varying(100),
    state character varying(100)
);
    DROP TABLE public.pincode;
       public         heap    postgres    false            +           1259    49749 
   price_list    TABLE     K  CREATE TABLE public.price_list (
    id character varying NOT NULL,
    name character varying NOT NULL,
    description character varying NOT NULL,
    type public.price_list_type_enum DEFAULT 'sale'::public.price_list_type_enum NOT NULL,
    status public.price_list_status_enum DEFAULT 'draft'::public.price_list_status_enum NOT NULL,
    starts_at timestamp with time zone,
    ends_at timestamp with time zone,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);
    DROP TABLE public.price_list;
       public         heap    postgres    false    1284    1287    1287    1284            ,           1259    49760    price_list_customer_groups    TABLE     �   CREATE TABLE public.price_list_customer_groups (
    price_list_id character varying NOT NULL,
    customer_group_id character varying NOT NULL
);
 .   DROP TABLE public.price_list_customer_groups;
       public         heap    postgres    false            �            1259    47958    product    TABLE     �  CREATE TABLE public.product (
    id character varying NOT NULL,
    title character varying NOT NULL,
    subtitle character varying,
    description character varying,
    handle character varying,
    is_giftcard boolean DEFAULT false NOT NULL,
    thumbnail character varying,
    weight integer,
    length integer,
    height integer,
    width integer,
    hs_code character varying,
    origin_country character varying,
    mid_code character varying,
    material character varying,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb,
    collection_id character varying,
    type_id character varying,
    discountable boolean DEFAULT true NOT NULL,
    status public.product_status_enum DEFAULT 'draft'::public.product_status_enum NOT NULL,
    external_id character varying
);
    DROP TABLE public.product;
       public         heap    postgres    false    1212    1212            ;           1259    50097    product_category    TABLE     -  CREATE TABLE public.product_category (
    id character varying NOT NULL,
    name text NOT NULL,
    handle text NOT NULL,
    parent_category_id character varying,
    mpath text,
    is_active boolean DEFAULT false,
    is_internal boolean DEFAULT false,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    rank integer DEFAULT 0 NOT NULL,
    description text DEFAULT ''::text NOT NULL,
    metadata jsonb,
    CONSTRAINT product_category_rank_check CHECK ((rank >= 0))
);
 $   DROP TABLE public.product_category;
       public         heap    postgres    false            <           1259    50113    product_category_product    TABLE     �   CREATE TABLE public.product_category_product (
    product_category_id character varying NOT NULL,
    product_id character varying NOT NULL
);
 ,   DROP TABLE public.product_category_product;
       public         heap    postgres    false                       1259    49086    product_collection    TABLE     O  CREATE TABLE public.product_collection (
    id character varying NOT NULL,
    title character varying NOT NULL,
    handle character varying,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb
);
 &   DROP TABLE public.product_collection;
       public         heap    postgres    false                       1259    48347    product_images    TABLE     {   CREATE TABLE public.product_images (
    product_id character varying NOT NULL,
    image_id character varying NOT NULL
);
 "   DROP TABLE public.product_images;
       public         heap    postgres    false            �            1259    47904    product_option    TABLE     O  CREATE TABLE public.product_option (
    id character varying NOT NULL,
    title character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb,
    product_id character varying
);
 "   DROP TABLE public.product_option;
       public         heap    postgres    false            �            1259    47894    product_option_value    TABLE     �  CREATE TABLE public.product_option_value (
    id character varying NOT NULL,
    value character varying NOT NULL,
    option_id character varying NOT NULL,
    variant_id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb
);
 (   DROP TABLE public.product_option_value;
       public         heap    postgres    false            0           1259    49833    product_sales_channel    TABLE     �   CREATE TABLE public.product_sales_channel (
    product_id character varying NOT NULL,
    sales_channel_id character varying NOT NULL
);
 )   DROP TABLE public.product_sales_channel;
       public         heap    postgres    false            =           1259    50250    product_shipping_profile    TABLE     m   CREATE TABLE public.product_shipping_profile (
    profile_id text NOT NULL,
    product_id text NOT NULL
);
 ,   DROP TABLE public.product_shipping_profile;
       public         heap    postgres    false                       1259    49096    product_tag    TABLE     *  CREATE TABLE public.product_tag (
    id character varying NOT NULL,
    value character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb
);
    DROP TABLE public.product_tag;
       public         heap    postgres    false                       1259    49114    product_tags    TABLE        CREATE TABLE public.product_tags (
    product_id character varying NOT NULL,
    product_tag_id character varying NOT NULL
);
     DROP TABLE public.product_tags;
       public         heap    postgres    false                        1259    49483    product_tax_rate    TABLE       CREATE TABLE public.product_tax_rate (
    product_id character varying NOT NULL,
    rate_id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    metadata jsonb
);
 $   DROP TABLE public.product_tax_rate;
       public         heap    postgres    false                       1259    49105    product_type    TABLE     +  CREATE TABLE public.product_type (
    id character varying NOT NULL,
    value character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb
);
     DROP TABLE public.product_type;
       public         heap    postgres    false            !           1259    49492    product_type_tax_rate    TABLE       CREATE TABLE public.product_type_tax_rate (
    product_type_id character varying NOT NULL,
    rate_id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    metadata jsonb
);
 )   DROP TABLE public.product_type_tax_rate;
       public         heap    postgres    false            �            1259    47879    product_variant    TABLE     R  CREATE TABLE public.product_variant (
    id character varying NOT NULL,
    title character varying NOT NULL,
    product_id character varying NOT NULL,
    sku character varying,
    barcode character varying,
    ean character varying,
    upc character varying,
    inventory_quantity integer NOT NULL,
    allow_backorder boolean DEFAULT false NOT NULL,
    manage_inventory boolean DEFAULT true NOT NULL,
    hs_code character varying,
    origin_country character varying,
    mid_code character varying,
    material character varying,
    weight integer,
    length integer,
    height integer,
    width integer,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb,
    variant_rank integer DEFAULT 0
);
 #   DROP TABLE public.product_variant;
       public         heap    postgres    false            :           1259    50083    product_variant_inventory_item    TABLE     x  CREATE TABLE public.product_variant_inventory_item (
    id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    inventory_item_id text NOT NULL,
    variant_id text NOT NULL,
    required_quantity integer DEFAULT 1 NOT NULL,
    deleted_at timestamp with time zone
);
 2   DROP TABLE public.product_variant_inventory_item;
       public         heap    postgres    false            ?           1259    50268    product_variant_money_amount    TABLE     B  CREATE TABLE public.product_variant_money_amount (
    id character varying NOT NULL,
    money_amount_id text NOT NULL,
    variant_id text NOT NULL,
    deleted_at timestamp with time zone,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL
);
 0   DROP TABLE public.product_variant_money_amount;
       public         heap    postgres    false            8           1259    50061    publishable_api_key    TABLE     b  CREATE TABLE public.publishable_api_key (
    id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    created_by character varying,
    revoked_by character varying,
    revoked_at timestamp with time zone,
    title character varying NOT NULL
);
 '   DROP TABLE public.publishable_api_key;
       public         heap    postgres    false            7           1259    50054 !   publishable_api_key_sales_channel    TABLE     ]  CREATE TABLE public.publishable_api_key_sales_channel (
    sales_channel_id character varying NOT NULL,
    publishable_key_id character varying NOT NULL,
    id text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);
 5   DROP TABLE public.publishable_api_key_sales_channel;
       public         heap    postgres    false            �            1259    48189    refund    TABLE     �  CREATE TABLE public.refund (
    id character varying NOT NULL,
    order_id character varying,
    amount integer NOT NULL,
    note character varying,
    reason public.refund_reason_enum NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    metadata jsonb,
    idempotency_key character varying,
    payment_id character varying
);
    DROP TABLE public.refund;
       public         heap    postgres    false    1173            �            1259    47852    region    TABLE       CREATE TABLE public.region (
    id character varying NOT NULL,
    name character varying NOT NULL,
    currency_code character varying NOT NULL,
    tax_rate real NOT NULL,
    tax_code character varying,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb,
    gift_cards_taxable boolean DEFAULT true NOT NULL,
    automatic_taxes boolean DEFAULT true NOT NULL,
    tax_provider_id character varying
);
    DROP TABLE public.region;
       public         heap    postgres    false                       1259    48338    region_fulfillment_providers    TABLE     �   CREATE TABLE public.region_fulfillment_providers (
    region_id character varying NOT NULL,
    provider_id character varying NOT NULL
);
 0   DROP TABLE public.region_fulfillment_providers;
       public         heap    postgres    false                        1259    48329    region_payment_providers    TABLE     �   CREATE TABLE public.region_payment_providers (
    region_id character varying NOT NULL,
    provider_id character varying NOT NULL
);
 ,   DROP TABLE public.region_payment_providers;
       public         heap    postgres    false            �            1259    48097    return    TABLE     g  CREATE TABLE public.return (
    id character varying NOT NULL,
    status public.return_status_enum DEFAULT 'requested'::public.return_status_enum NOT NULL,
    swap_id character varying,
    order_id character varying,
    shipping_data jsonb,
    refund_amount integer NOT NULL,
    received_at timestamp with time zone,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    metadata jsonb,
    idempotency_key character varying,
    claim_order_id character varying,
    no_notification boolean,
    location_id character varying
);
    DROP TABLE public.return;
       public         heap    postgres    false    1206    1206            �            1259    47819    return_item    TABLE     U  CREATE TABLE public.return_item (
    return_id character varying NOT NULL,
    item_id character varying NOT NULL,
    quantity integer NOT NULL,
    is_requested boolean DEFAULT true NOT NULL,
    requested_quantity integer,
    received_quantity integer,
    metadata jsonb,
    reason_id character varying,
    note character varying
);
    DROP TABLE public.return_item;
       public         heap    postgres    false                       1259    49222    return_reason    TABLE     �  CREATE TABLE public.return_reason (
    id character varying NOT NULL,
    value character varying NOT NULL,
    label character varying NOT NULL,
    description character varying,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb,
    parent_return_reason_id character varying
);
 !   DROP TABLE public.return_reason;
       public         heap    postgres    false            /           1259    49823    sales_channel    TABLE     ~  CREATE TABLE public.sales_channel (
    id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    name character varying NOT NULL,
    description character varying,
    is_disabled boolean DEFAULT false NOT NULL,
    metadata jsonb
);
 !   DROP TABLE public.sales_channel;
       public         heap    postgres    false            9           1259    50072    sales_channel_location    TABLE     >  CREATE TABLE public.sales_channel_location (
    id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    sales_channel_id text NOT NULL,
    location_id text NOT NULL,
    deleted_at timestamp with time zone
);
 *   DROP TABLE public.sales_channel_location;
       public         heap    postgres    false            �            1259    48073    shipping_method    TABLE     ]  CREATE TABLE public.shipping_method (
    id character varying NOT NULL,
    shipping_option_id character varying NOT NULL,
    order_id character varying,
    cart_id character varying,
    swap_id character varying,
    return_id character varying,
    price integer NOT NULL,
    data jsonb NOT NULL,
    claim_order_id character varying,
    CONSTRAINT "CHK_64c6812fe7815be30d688df513" CHECK ((price >= 0)),
    CONSTRAINT "CHK_a7020b08665bbd64d84a6641cf" CHECK (((claim_order_id IS NOT NULL) OR (order_id IS NOT NULL) OR (cart_id IS NOT NULL) OR (swap_id IS NOT NULL) OR (return_id IS NOT NULL)))
);
 #   DROP TABLE public.shipping_method;
       public         heap    postgres    false                       1259    49473    shipping_method_tax_line    TABLE     t  CREATE TABLE public.shipping_method_tax_line (
    id character varying NOT NULL,
    rate real NOT NULL,
    name character varying NOT NULL,
    code character varying,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    metadata jsonb,
    shipping_method_id character varying NOT NULL
);
 ,   DROP TABLE public.shipping_method_tax_line;
       public         heap    postgres    false            �            1259    47931    shipping_option    TABLE     �  CREATE TABLE public.shipping_option (
    id character varying NOT NULL,
    name character varying NOT NULL,
    region_id character varying NOT NULL,
    profile_id character varying NOT NULL,
    provider_id character varying NOT NULL,
    price_type public.shipping_option_price_type_enum NOT NULL,
    amount integer,
    is_return boolean DEFAULT false NOT NULL,
    data jsonb NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb,
    admin_only boolean DEFAULT false NOT NULL,
    CONSTRAINT "CHK_7a367f5901ae0a5b0df75aee38" CHECK ((amount >= 0))
);
 #   DROP TABLE public.shipping_option;
       public         heap    postgres    false    1023            �            1259    47919    shipping_option_requirement    TABLE       CREATE TABLE public.shipping_option_requirement (
    id character varying NOT NULL,
    shipping_option_id character varying NOT NULL,
    type public.shipping_option_requirement_type_enum NOT NULL,
    amount integer NOT NULL,
    deleted_at timestamp with time zone
);
 /   DROP TABLE public.shipping_option_requirement;
       public         heap    postgres    false    1017            �            1259    47949    shipping_profile    TABLE     c  CREATE TABLE public.shipping_profile (
    id character varying NOT NULL,
    name character varying NOT NULL,
    type public.shipping_profile_type_enum NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb
);
 $   DROP TABLE public.shipping_profile;
       public         heap    postgres    false    1029            "           1259    49501    shipping_tax_rate    TABLE       CREATE TABLE public.shipping_tax_rate (
    shipping_option_id character varying NOT NULL,
    rate_id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    metadata jsonb
);
 %   DROP TABLE public.shipping_tax_rate;
       public         heap    postgres    false            �            1259    48301 
   staged_job    TABLE     �   CREATE TABLE public.staged_job (
    id character varying NOT NULL,
    event_name character varying NOT NULL,
    data jsonb NOT NULL,
    options jsonb DEFAULT '{}'::jsonb NOT NULL
);
    DROP TABLE public.staged_job;
       public         heap    postgres    false            �            1259    48308    store    TABLE     Y  CREATE TABLE public.store (
    id character varying NOT NULL,
    name character varying DEFAULT 'Medusa Store'::character varying NOT NULL,
    default_currency_code character varying DEFAULT 'usd'::character varying NOT NULL,
    swap_link_template character varying,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    metadata jsonb,
    payment_link_template character varying,
    invite_link_template character varying,
    default_sales_channel_id character varying,
    default_location_id character varying
);
    DROP TABLE public.store;
       public         heap    postgres    false            	           1259    48410    store_currencies    TABLE     �   CREATE TABLE public.store_currencies (
    store_id character varying NOT NULL,
    currency_code character varying NOT NULL
);
 $   DROP TABLE public.store_currencies;
       public         heap    postgres    false            �            1259    48139    swap    TABLE     �  CREATE TABLE public.swap (
    id character varying NOT NULL,
    fulfillment_status public.swap_fulfillment_status_enum NOT NULL,
    payment_status public.swap_payment_status_enum NOT NULL,
    order_id character varying NOT NULL,
    difference_due integer,
    shipping_address_id character varying,
    cart_id character varying,
    confirmed_at timestamp with time zone,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb,
    idempotency_key character varying,
    no_notification boolean,
    canceled_at timestamp with time zone,
    allow_backorder boolean DEFAULT false NOT NULL
);
    DROP TABLE public.swap;
       public         heap    postgres    false    1308    1209                       1259    49455    tax_provider    TABLE     x   CREATE TABLE public.tax_provider (
    id character varying NOT NULL,
    is_installed boolean DEFAULT true NOT NULL
);
     DROP TABLE public.tax_provider;
       public         heap    postgres    false                       1259    49446    tax_rate    TABLE     R  CREATE TABLE public.tax_rate (
    id character varying NOT NULL,
    rate real,
    code character varying,
    name character varying NOT NULL,
    region_id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    metadata jsonb
);
    DROP TABLE public.tax_rate;
       public         heap    postgres    false                       1259    49208    tracking_link    TABLE     �  CREATE TABLE public.tracking_link (
    id character varying NOT NULL,
    url character varying,
    tracking_number character varying NOT NULL,
    fulfillment_id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb,
    idempotency_key character varying
);
 !   DROP TABLE public.tracking_link;
       public         heap    postgres    false            �            1259    48319    user    TABLE     �  CREATE TABLE public."user" (
    id character varying NOT NULL,
    email character varying NOT NULL,
    first_name character varying,
    last_name character varying,
    password_hash character varying,
    api_token character varying,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb,
    role public.user_role_enum DEFAULT 'member'::public.user_role_enum
);
    DROP TABLE public."user";
       public         heap    postgres    false    1224    1224            �           2604    47838 
   country id    DEFAULT     h   ALTER TABLE ONLY public.country ALTER COLUMN id SET DEFAULT nextval('public.country_id_seq'::regclass);
 9   ALTER TABLE public.country ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            �           2604    49154    draft_order display_id    DEFAULT     �   ALTER TABLE ONLY public.draft_order ALTER COLUMN display_id SET DEFAULT nextval('public.draft_order_display_id_seq'::regclass);
 E   ALTER TABLE public.draft_order ALTER COLUMN display_id DROP DEFAULT;
       public          postgres    false    278    277    278            �           2604    47789    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216            �           2604    48252    order display_id    DEFAULT     v   ALTER TABLE ONLY public."order" ALTER COLUMN display_id SET DEFAULT nextval('public.order_display_id_seq'::regclass);
 A   ALTER TABLE public."order" ALTER COLUMN display_id DROP DEFAULT;
       public          postgres    false    247    248    248            ?          0    48274    address 
   TABLE DATA           �   COPY public.address (id, customer_id, company, first_name, last_name, address_1, address_2, city, country_code, province, postal_code, phone, created_at, updated_at, deleted_at, metadata) FROM stdin;
    public          postgres    false    250   s1      {          0    50042    analytics_config 
   TABLE DATA           o   COPY public.analytics_config (id, created_at, updated_at, deleted_at, user_id, opt_out, anonymize) FROM stdin;
    public          postgres    false    310   �1      s          0    49808 	   batch_job 
   TABLE DATA           �   COPY public.batch_job (id, type, created_by, context, result, dry_run, created_at, pre_processed_at, confirmed_at, processing_at, completed_at, failed_at, canceled_at, updated_at, deleted_at) FROM stdin;
    public          postgres    false    302   2      5          0    48061    cart 
   TABLE DATA           �   COPY public.cart (id, email, billing_address_id, shipping_address_id, region_id, customer_id, payment_id, type, completed_at, created_at, updated_at, deleted_at, metadata, idempotency_key, context, payment_authorized_at, sales_channel_id) FROM stdin;
    public          postgres    false    240   ,2      J          0    48374    cart_discounts 
   TABLE DATA           >   COPY public.cart_discounts (cart_id, discount_id) FROM stdin;
    public          postgres    false    261   I2      K          0    48383    cart_gift_cards 
   TABLE DATA           @   COPY public.cart_gift_cards (cart_id, gift_card_id) FROM stdin;
    public          postgres    false    262   f2      O          0    48829    claim_image 
   TABLE DATA           k   COPY public.claim_image (id, claim_item_id, url, created_at, updated_at, deleted_at, metadata) FROM stdin;
    public          postgres    false    266   �2      Q          0    48857 
   claim_item 
   TABLE DATA           �   COPY public.claim_item (id, claim_order_id, item_id, variant_id, reason, note, quantity, created_at, updated_at, deleted_at, metadata) FROM stdin;
    public          postgres    false    268   �2      S          0    48914    claim_item_tags 
   TABLE DATA           :   COPY public.claim_item_tags (item_id, tag_id) FROM stdin;
    public          postgres    false    270   �2      R          0    48903    claim_order 
   TABLE DATA           �   COPY public.claim_order (id, payment_status, fulfillment_status, type, order_id, shipping_address_id, refund_amount, canceled_at, created_at, updated_at, deleted_at, metadata, idempotency_key, no_notification) FROM stdin;
    public          postgres    false    269   �2      P          0    48838 	   claim_tag 
   TABLE DATA           \   COPY public.claim_tag (id, value, created_at, updated_at, deleted_at, metadata) FROM stdin;
    public          postgres    false    267   �2      $          0    47835    country 
   TABLE DATA           \   COPY public.country (id, iso_2, iso_3, num_code, name, display_name, region_id) FROM stdin;
    public          postgres    false    223   3      "          0    47827    currency 
   TABLE DATA           E   COPY public.currency (code, symbol, symbol_native, name) FROM stdin;
    public          postgres    false    221   �I      `          0    49378    custom_shipping_option 
   TABLE DATA           �   COPY public.custom_shipping_option (id, price, shipping_option_id, cart_id, created_at, updated_at, deleted_at, metadata) FROM stdin;
    public          postgres    false    283   �Q      >          0    48261    customer 
   TABLE DATA           �   COPY public.customer (id, email, first_name, last_name, billing_address_id, password_hash, phone, has_account, created_at, updated_at, deleted_at, metadata) FROM stdin;
    public          postgres    false    249   �Q      h          0    49569    customer_group 
   TABLE DATA           `   COPY public.customer_group (id, name, created_at, updated_at, deleted_at, metadata) FROM stdin;
    public          postgres    false    291   �Q      i          0    49579    customer_group_customers 
   TABLE DATA           R   COPY public.customer_group_customers (customer_group_id, customer_id) FROM stdin;
    public          postgres    false    292   �Q      1          0    47992    discount 
   TABLE DATA           �   COPY public.discount (id, code, is_dynamic, rule_id, is_disabled, parent_discount_id, starts_at, ends_at, created_at, updated_at, deleted_at, metadata, usage_limit, usage_count, valid_duration) FROM stdin;
    public          postgres    false    236   	R      j          0    49615    discount_condition 
   TABLE DATA           �   COPY public.discount_condition (id, type, operator, discount_rule_id, created_at, updated_at, deleted_at, metadata) FROM stdin;
    public          postgres    false    293   &R      k          0    49627 !   discount_condition_customer_group 
   TABLE DATA           ~   COPY public.discount_condition_customer_group (customer_group_id, condition_id, created_at, updated_at, metadata) FROM stdin;
    public          postgres    false    294   CR      o          0    49663    discount_condition_product 
   TABLE DATA           p   COPY public.discount_condition_product (product_id, condition_id, created_at, updated_at, metadata) FROM stdin;
    public          postgres    false    298   `R      l          0    49636 %   discount_condition_product_collection 
   TABLE DATA           �   COPY public.discount_condition_product_collection (product_collection_id, condition_id, created_at, updated_at, metadata) FROM stdin;
    public          postgres    false    295   }R      m          0    49645    discount_condition_product_tag 
   TABLE DATA           x   COPY public.discount_condition_product_tag (product_tag_id, condition_id, created_at, updated_at, metadata) FROM stdin;
    public          postgres    false    296   �R      n          0    49654    discount_condition_product_type 
   TABLE DATA           z   COPY public.discount_condition_product_type (product_type_id, condition_id, created_at, updated_at, metadata) FROM stdin;
    public          postgres    false    297   �R      I          0    48365    discount_regions 
   TABLE DATA           B   COPY public.discount_regions (discount_id, region_id) FROM stdin;
    public          postgres    false    260   �R      0          0    47983    discount_rule 
   TABLE DATA              COPY public.discount_rule (id, description, type, value, allocation, created_at, updated_at, deleted_at, metadata) FROM stdin;
    public          postgres    false    235   �R      H          0    48356    discount_rule_products 
   TABLE DATA           N   COPY public.discount_rule_products (discount_rule_id, product_id) FROM stdin;
    public          postgres    false    259   S      [          0    49150    draft_order 
   TABLE DATA           �   COPY public.draft_order (id, status, display_id, cart_id, order_id, canceled_at, created_at, updated_at, completed_at, metadata, idempotency_key, no_notification_order) FROM stdin;
    public          postgres    false    278   +S      �          0    52819    dtdc_states 
   TABLE DATA           7   COPY public.dtdc_states (type, state_city) FROM stdin;
    public          postgres    false    321   HS                 0    47809    fulfillment 
   TABLE DATA           �   COPY public.fulfillment (id, swap_id, order_id, tracking_numbers, data, shipped_at, canceled_at, created_at, updated_at, metadata, idempotency_key, provider_id, claim_order_id, no_notification, location_id) FROM stdin;
    public          postgres    false    219   �T                0    47802    fulfillment_item 
   TABLE DATA           M   COPY public.fulfillment_item (fulfillment_id, item_id, quantity) FROM stdin;
    public          postgres    false    218   �T                0    47794    fulfillment_provider 
   TABLE DATA           @   COPY public.fulfillment_provider (id, is_installed) FROM stdin;
    public          postgres    false    217   �T      4          0    48040 	   gift_card 
   TABLE DATA           �   COPY public.gift_card (id, code, value, balance, region_id, order_id, is_disabled, ends_at, created_at, updated_at, deleted_at, metadata, tax_rate) FROM stdin;
    public          postgres    false    239   U      :          0    48170    gift_card_transaction 
   TABLE DATA           u   COPY public.gift_card_transaction (id, gift_card_id, order_id, amount, created_at, is_taxable, tax_rate) FROM stdin;
    public          postgres    false    245   $U      @          0    48283    idempotency_key 
   TABLE DATA           �   COPY public.idempotency_key (id, idempotency_key, created_at, locked_at, request_method, request_params, request_path, response_code, response_body, recovery_point) FROM stdin;
    public          postgres    false    251   AU      '          0    47861    image 
   TABLE DATA           V   COPY public.image (id, url, created_at, updated_at, deleted_at, metadata) FROM stdin;
    public          postgres    false    226   ^U      _          0    49355    invite 
   TABLE DATA           �   COPY public.invite (id, user_email, role, accepted, created_at, updated_at, deleted_at, metadata, token, expires_at) FROM stdin;
    public          postgres    false    282   {U      9          0    48150 	   line_item 
   TABLE DATA           U  COPY public.line_item (id, cart_id, order_id, swap_id, title, description, thumbnail, is_giftcard, should_merge, allow_discounts, has_shipping, unit_price, variant_id, quantity, fulfilled_quantity, returned_quantity, shipped_quantity, created_at, updated_at, metadata, claim_order_id, is_return, original_item_id, order_edit_id) FROM stdin;
    public          postgres    false    244   �V      r          0    49784    line_item_adjustment 
   TABLE DATA           g   COPY public.line_item_adjustment (id, item_id, description, discount_id, amount, metadata) FROM stdin;
    public          postgres    false    301   �V      c          0    49463    line_item_tax_line 
   TABLE DATA           m   COPY public.line_item_tax_line (id, rate, name, code, created_at, updated_at, metadata, item_id) FROM stdin;
    public          postgres    false    286   �V                0    47786 
   migrations 
   TABLE DATA           ;   COPY public.migrations (id, "timestamp", name) FROM stdin;
    public          postgres    false    216   W      (          0    47870    money_amount 
   TABLE DATA           �   COPY public.money_amount (id, currency_code, amount, region_id, created_at, updated_at, deleted_at, min_quantity, max_quantity, price_list_id) FROM stdin;
    public          postgres    false    227   �]      ^          0    49336    note 
   TABLE DATA           ~   COPY public.note (id, value, resource_type, resource_id, author_id, created_at, updated_at, deleted_at, metadata) FROM stdin;
    public          postgres    false    281   ^      U          0    49059    notification 
   TABLE DATA           �   COPY public.notification (id, event_name, resource_type, resource_id, customer_id, "to", data, parent_id, provider_id, created_at, updated_at) FROM stdin;
    public          postgres    false    272   4^      T          0    49051    notification_provider 
   TABLE DATA           A   COPY public.notification_provider (id, is_installed) FROM stdin;
    public          postgres    false    271   Q^      A          0    48293    oauth 
   TABLE DATA           e   COPY public.oauth (id, display_name, application_name, install_url, uninstall_url, data) FROM stdin;
    public          postgres    false    252   n^      �          0    50258    onboarding_state 
   TABLE DATA           m   COPY public.onboarding_state (id, created_at, updated_at, current_step, is_complete, product_id) FROM stdin;
    public          postgres    false    318   �^      =          0    48246    order 
   TABLE DATA           G  COPY public."order" (id, status, fulfillment_status, payment_status, display_id, cart_id, customer_id, email, billing_address_id, shipping_address_id, region_id, currency_code, tax_rate, canceled_at, created_at, updated_at, metadata, idempotency_key, draft_order_id, no_notification, external_id, sales_channel_id) FROM stdin;
    public          postgres    false    248   �^      L          0    48392    order_discounts 
   TABLE DATA           @   COPY public.order_discounts (order_id, discount_id) FROM stdin;
    public          postgres    false    263   _      w          0    49916 
   order_edit 
   TABLE DATA           �   COPY public.order_edit (id, created_at, updated_at, order_id, internal_note, created_by, requested_by, requested_at, confirmed_by, confirmed_at, declined_by, declined_reason, declined_at, canceled_by, canceled_at, payment_collection_id) FROM stdin;
    public          postgres    false    306   1_      M          0    48401    order_gift_cards 
   TABLE DATA           B   COPY public.order_gift_cards (order_id, gift_card_id) FROM stdin;
    public          postgres    false    264   N_      v          0    49901    order_item_change 
   TABLE DATA           �   COPY public.order_item_change (id, created_at, updated_at, deleted_at, type, order_edit_id, original_line_item_id, line_item_id) FROM stdin;
    public          postgres    false    305   k_      3          0    48026    payment 
   TABLE DATA           �   COPY public.payment (id, swap_id, cart_id, order_id, amount, currency_code, amount_refunded, provider_id, data, captured_at, canceled_at, created_at, updated_at, metadata, idempotency_key) FROM stdin;
    public          postgres    false    238   �_      x          0    49971    payment_collection 
   TABLE DATA           �   COPY public.payment_collection (id, created_at, updated_at, deleted_at, type, status, description, amount, authorized_amount, region_id, currency_code, metadata, created_by) FROM stdin;
    public          postgres    false    307   �_      z          0    50006    payment_collection_payments 
   TABLE DATA           X   COPY public.payment_collection_payments (payment_collection_id, payment_id) FROM stdin;
    public          postgres    false    309   �_      y          0    49987    payment_collection_sessions 
   TABLE DATA           `   COPY public.payment_collection_sessions (payment_collection_id, payment_session_id) FROM stdin;
    public          postgres    false    308   �_      %          0    47844    payment_provider 
   TABLE DATA           <   COPY public.payment_provider (id, is_installed) FROM stdin;
    public          postgres    false    224   �_      2          0    48015    payment_session 
   TABLE DATA           �   COPY public.payment_session (id, cart_id, provider_id, is_selected, status, data, created_at, updated_at, idempotency_key, payment_authorized_at, amount, is_initiated) FROM stdin;
    public          postgres    false    237   "`      �          0    52811    pincode 
   TABLE DATA           Q   COPY public.pincode (postofficename, pincode, city, district, state) FROM stdin;
    public          postgres    false    320   ?`      p          0    49749 
   price_list 
   TABLE DATA           �   COPY public.price_list (id, name, description, type, status, starts_at, ends_at, created_at, updated_at, deleted_at) FROM stdin;
    public          postgres    false    299   p�	      q          0    49760    price_list_customer_groups 
   TABLE DATA           V   COPY public.price_list_customer_groups (price_list_id, customer_group_id) FROM stdin;
    public          postgres    false    300   ��	      /          0    47958    product 
   TABLE DATA             COPY public.product (id, title, subtitle, description, handle, is_giftcard, thumbnail, weight, length, height, width, hs_code, origin_country, mid_code, material, created_at, updated_at, deleted_at, metadata, collection_id, type_id, discountable, status, external_id) FROM stdin;
    public          postgres    false    234   ��	      �          0    50097    product_category 
   TABLE DATA           �   COPY public.product_category (id, name, handle, parent_category_id, mpath, is_active, is_internal, created_at, updated_at, rank, description, metadata) FROM stdin;
    public          postgres    false    315   =�	      �          0    50113    product_category_product 
   TABLE DATA           S   COPY public.product_category_product (product_category_id, product_id) FROM stdin;
    public          postgres    false    316   Z�	      V          0    49086    product_collection 
   TABLE DATA           m   COPY public.product_collection (id, title, handle, created_at, updated_at, deleted_at, metadata) FROM stdin;
    public          postgres    false    273   w�	      G          0    48347    product_images 
   TABLE DATA           >   COPY public.product_images (product_id, image_id) FROM stdin;
    public          postgres    false    258   ��	      +          0    47904    product_option 
   TABLE DATA           m   COPY public.product_option (id, title, created_at, updated_at, deleted_at, metadata, product_id) FROM stdin;
    public          postgres    false    230   ��	      *          0    47894    product_option_value 
   TABLE DATA           ~   COPY public.product_option_value (id, value, option_id, variant_id, created_at, updated_at, deleted_at, metadata) FROM stdin;
    public          postgres    false    229   3�	      u          0    49833    product_sales_channel 
   TABLE DATA           M   COPY public.product_sales_channel (product_id, sales_channel_id) FROM stdin;
    public          postgres    false    304   μ	      �          0    50250    product_shipping_profile 
   TABLE DATA           J   COPY public.product_shipping_profile (profile_id, product_id) FROM stdin;
    public          postgres    false    317   &�	      W          0    49096    product_tag 
   TABLE DATA           ^   COPY public.product_tag (id, value, created_at, updated_at, deleted_at, metadata) FROM stdin;
    public          postgres    false    274   ~�	      Y          0    49114    product_tags 
   TABLE DATA           B   COPY public.product_tags (product_id, product_tag_id) FROM stdin;
    public          postgres    false    276   ��	      e          0    49483    product_tax_rate 
   TABLE DATA           a   COPY public.product_tax_rate (product_id, rate_id, created_at, updated_at, metadata) FROM stdin;
    public          postgres    false    288   ��	      X          0    49105    product_type 
   TABLE DATA           _   COPY public.product_type (id, value, created_at, updated_at, deleted_at, metadata) FROM stdin;
    public          postgres    false    275   ս	      f          0    49492    product_type_tax_rate 
   TABLE DATA           k   COPY public.product_type_tax_rate (product_type_id, rate_id, created_at, updated_at, metadata) FROM stdin;
    public          postgres    false    289   �	      )          0    47879    product_variant 
   TABLE DATA             COPY public.product_variant (id, title, product_id, sku, barcode, ean, upc, inventory_quantity, allow_backorder, manage_inventory, hs_code, origin_country, mid_code, material, weight, length, height, width, created_at, updated_at, deleted_at, metadata, variant_rank) FROM stdin;
    public          postgres    false    228   �	                0    50083    product_variant_inventory_item 
   TABLE DATA           �   COPY public.product_variant_inventory_item (id, created_at, updated_at, inventory_item_id, variant_id, required_quantity, deleted_at) FROM stdin;
    public          postgres    false    314   ��	      �          0    50268    product_variant_money_amount 
   TABLE DATA           {   COPY public.product_variant_money_amount (id, money_amount_id, variant_id, deleted_at, created_at, updated_at) FROM stdin;
    public          postgres    false    319   ��	      }          0    50061    publishable_api_key 
   TABLE DATA           t   COPY public.publishable_api_key (id, created_at, updated_at, created_by, revoked_by, revoked_at, title) FROM stdin;
    public          postgres    false    312   ܾ	      |          0    50054 !   publishable_api_key_sales_channel 
   TABLE DATA           �   COPY public.publishable_api_key_sales_channel (sales_channel_id, publishable_key_id, id, created_at, updated_at, deleted_at) FROM stdin;
    public          postgres    false    311   I�	      ;          0    48189    refund 
   TABLE DATA           �   COPY public.refund (id, order_id, amount, note, reason, created_at, updated_at, metadata, idempotency_key, payment_id) FROM stdin;
    public          postgres    false    246   տ	      &          0    47852    region 
   TABLE DATA           �   COPY public.region (id, name, currency_code, tax_rate, tax_code, created_at, updated_at, deleted_at, metadata, gift_cards_taxable, automatic_taxes, tax_provider_id) FROM stdin;
    public          postgres    false    225   �	      F          0    48338    region_fulfillment_providers 
   TABLE DATA           N   COPY public.region_fulfillment_providers (region_id, provider_id) FROM stdin;
    public          postgres    false    257   ��	      E          0    48329    region_payment_providers 
   TABLE DATA           J   COPY public.region_payment_providers (region_id, provider_id) FROM stdin;
    public          postgres    false    256   ��	      7          0    48097    return 
   TABLE DATA           �   COPY public.return (id, status, swap_id, order_id, shipping_data, refund_amount, received_at, created_at, updated_at, metadata, idempotency_key, claim_order_id, no_notification, location_id) FROM stdin;
    public          postgres    false    242   8�	      !          0    47819    return_item 
   TABLE DATA           �   COPY public.return_item (return_id, item_id, quantity, is_requested, requested_quantity, received_quantity, metadata, reason_id, note) FROM stdin;
    public          postgres    false    220   U�	      ]          0    49222    return_reason 
   TABLE DATA           �   COPY public.return_reason (id, value, label, description, created_at, updated_at, deleted_at, metadata, parent_return_reason_id) FROM stdin;
    public          postgres    false    280   r�	      t          0    49823    sales_channel 
   TABLE DATA           y   COPY public.sales_channel (id, created_at, updated_at, deleted_at, name, description, is_disabled, metadata) FROM stdin;
    public          postgres    false    303   ��	      ~          0    50072    sales_channel_location 
   TABLE DATA           w   COPY public.sales_channel_location (id, created_at, updated_at, sales_channel_id, location_id, deleted_at) FROM stdin;
    public          postgres    false    313   �	      6          0    48073    shipping_method 
   TABLE DATA           �   COPY public.shipping_method (id, shipping_option_id, order_id, cart_id, swap_id, return_id, price, data, claim_order_id) FROM stdin;
    public          postgres    false    241   8�	      d          0    49473    shipping_method_tax_line 
   TABLE DATA           ~   COPY public.shipping_method_tax_line (id, rate, name, code, created_at, updated_at, metadata, shipping_method_id) FROM stdin;
    public          postgres    false    287   U�	      -          0    47931    shipping_option 
   TABLE DATA           �   COPY public.shipping_option (id, name, region_id, profile_id, provider_id, price_type, amount, is_return, data, created_at, updated_at, deleted_at, metadata, admin_only) FROM stdin;
    public          postgres    false    232   r�	      ,          0    47919    shipping_option_requirement 
   TABLE DATA           g   COPY public.shipping_option_requirement (id, shipping_option_id, type, amount, deleted_at) FROM stdin;
    public          postgres    false    231   �	      .          0    47949    shipping_profile 
   TABLE DATA           h   COPY public.shipping_profile (id, name, type, created_at, updated_at, deleted_at, metadata) FROM stdin;
    public          postgres    false    233   -�	      g          0    49501    shipping_tax_rate 
   TABLE DATA           j   COPY public.shipping_tax_rate (shipping_option_id, rate_id, created_at, updated_at, metadata) FROM stdin;
    public          postgres    false    290   ��	      B          0    48301 
   staged_job 
   TABLE DATA           C   COPY public.staged_job (id, event_name, data, options) FROM stdin;
    public          postgres    false    253   ��	      C          0    48308    store 
   TABLE DATA           �   COPY public.store (id, name, default_currency_code, swap_link_template, created_at, updated_at, metadata, payment_link_template, invite_link_template, default_sales_channel_id, default_location_id) FROM stdin;
    public          postgres    false    254   �	      N          0    48410    store_currencies 
   TABLE DATA           C   COPY public.store_currencies (store_id, currency_code) FROM stdin;
    public          postgres    false    265   ��	      8          0    48139    swap 
   TABLE DATA           �   COPY public.swap (id, fulfillment_status, payment_status, order_id, difference_due, shipping_address_id, cart_id, confirmed_at, created_at, updated_at, deleted_at, metadata, idempotency_key, no_notification, canceled_at, allow_backorder) FROM stdin;
    public          postgres    false    243   ��	      b          0    49455    tax_provider 
   TABLE DATA           8   COPY public.tax_provider (id, is_installed) FROM stdin;
    public          postgres    false    285   �	      a          0    49446    tax_rate 
   TABLE DATA           e   COPY public.tax_rate (id, rate, code, name, region_id, created_at, updated_at, metadata) FROM stdin;
    public          postgres    false    284   !�	      \          0    49208    tracking_link 
   TABLE DATA           �   COPY public.tracking_link (id, url, tracking_number, fulfillment_id, created_at, updated_at, deleted_at, metadata, idempotency_key) FROM stdin;
    public          postgres    false    279   >�	      D          0    48319    user 
   TABLE DATA           �   COPY public."user" (id, email, first_name, last_name, password_hash, api_token, created_at, updated_at, deleted_at, metadata, role) FROM stdin;
    public          postgres    false    255   [�	      �           0    0    country_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.country_id_seq', 250, true);
          public          postgres    false    222            �           0    0    draft_order_display_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.draft_order_display_id_seq', 1, false);
          public          postgres    false    277            �           0    0    migrations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.migrations_id_seq', 78, true);
          public          postgres    false    215            �           0    0    order_display_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.order_display_id_seq', 1, false);
          public          postgres    false    247            �           2606    48025    payment_session OneSelected 
   CONSTRAINT     h   ALTER TABLE ONLY public.payment_session
    ADD CONSTRAINT "OneSelected" UNIQUE (cart_id, is_selected);
 G   ALTER TABLE ONLY public.payment_session DROP CONSTRAINT "OneSelected";
       public            postgres    false    237    237            m           2606    47878 +   money_amount PK_022e49a7e21a8dfb820f788778a 
   CONSTRAINT     k   ALTER TABLE ONLY public.money_amount
    ADD CONSTRAINT "PK_022e49a7e21a8dfb820f788778a" PRIMARY KEY (id);
 W   ALTER TABLE ONLY public.money_amount DROP CONSTRAINT "PK_022e49a7e21a8dfb820f788778a";
       public            postgres    false    227            =           2606    49058 4   notification_provider PK_0425c2423e2ce9fdfd5c23761d9 
   CONSTRAINT     t   ALTER TABLE ONLY public.notification_provider
    ADD CONSTRAINT "PK_0425c2423e2ce9fdfd5c23761d9" PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.notification_provider DROP CONSTRAINT "PK_0425c2423e2ce9fdfd5c23761d9";
       public            postgres    false    271            (           2606    48416 /   store_currencies PK_0f2bff3bccc785c320a4df836de 
   CONSTRAINT     �   ALTER TABLE ONLY public.store_currencies
    ADD CONSTRAINT "PK_0f2bff3bccc785c320a4df836de" PRIMARY KEY (store_id, currency_code);
 [   ALTER TABLE ONLY public.store_currencies DROP CONSTRAINT "PK_0f2bff3bccc785c320a4df836de";
       public            postgres    false    265    265            �           2606    48258 $   order PK_1031171c13130102495201e3e20 
   CONSTRAINT     f   ALTER TABLE ONLY public."order"
    ADD CONSTRAINT "PK_1031171c13130102495201e3e20" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public."order" DROP CONSTRAINT "PK_1031171c13130102495201e3e20";
       public            postgres    false    248                       2606    48380 -   cart_discounts PK_10bd412c9071ccc0cf555afd9bb 
   CONSTRAINT        ALTER TABLE ONLY public.cart_discounts
    ADD CONSTRAINT "PK_10bd412c9071ccc0cf555afd9bb" PRIMARY KEY (cart_id, discount_id);
 Y   ALTER TABLE ONLY public.cart_discounts DROP CONSTRAINT "PK_10bd412c9071ccc0cf555afd9bb";
       public            postgres    false    261    261                       2606    48353 -   product_images PK_10de97980da2e939c4c0e8423f2 
   CONSTRAINT        ALTER TABLE ONLY public.product_images
    ADD CONSTRAINT "PK_10de97980da2e939c4c0e8423f2" PRIMARY KEY (product_id, image_id);
 Y   ALTER TABLE ONLY public.product_images DROP CONSTRAINT "PK_10de97980da2e939c4c0e8423f2";
       public            postgres    false    258    258            H           2606    49104 *   product_tag PK_1439455c6528caa94fcc8564fda 
   CONSTRAINT     j   ALTER TABLE ONLY public.product_tag
    ADD CONSTRAINT "PK_1439455c6528caa94fcc8564fda" PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.product_tag DROP CONSTRAINT "PK_1439455c6528caa94fcc8564fda";
       public            postgres    false    274                       2606    48371 /   discount_regions PK_15974566a8b6e04a7c754e85b75 
   CONSTRAINT     �   ALTER TABLE ONLY public.discount_regions
    ADD CONSTRAINT "PK_15974566a8b6e04a7c754e85b75" PRIMARY KEY (discount_id, region_id);
 [   ALTER TABLE ONLY public.discount_regions DROP CONSTRAINT "PK_15974566a8b6e04a7c754e85b75";
       public            postgres    false    260    260            u           2606    47889 .   product_variant PK_1ab69c9935c61f7c70791ae0a9f 
   CONSTRAINT     n   ALTER TABLE ONLY public.product_variant
    ADD CONSTRAINT "PK_1ab69c9935c61f7c70791ae0a9f" PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.product_variant DROP CONSTRAINT "PK_1ab69c9935c61f7c70791ae0a9f";
       public            postgres    false    228            �           2606    49766 9   price_list_customer_groups PK_1afcbe15cc8782dc80c05707df9 
   CONSTRAINT     �   ALTER TABLE ONLY public.price_list_customer_groups
    ADD CONSTRAINT "PK_1afcbe15cc8782dc80c05707df9" PRIMARY KEY (price_list_id, customer_group_id);
 e   ALTER TABLE ONLY public.price_list_customer_groups DROP CONSTRAINT "PK_1afcbe15cc8782dc80c05707df9";
       public            postgres    false    300    300            N           2606    49120 +   product_tags PK_1cf5c9537e7198df494b71b993f 
   CONSTRAINT     �   ALTER TABLE ONLY public.product_tags
    ADD CONSTRAINT "PK_1cf5c9537e7198df494b71b993f" PRIMARY KEY (product_id, product_tag_id);
 W   ALTER TABLE ONLY public.product_tags DROP CONSTRAINT "PK_1cf5c9537e7198df494b71b993f";
       public            postgres    false    276    276            �           2606    48291 .   idempotency_key PK_213f125e14469be304f9ff1d452 
   CONSTRAINT     n   ALTER TABLE ONLY public.idempotency_key
    ADD CONSTRAINT "PK_213f125e14469be304f9ff1d452" PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.idempotency_key DROP CONSTRAINT "PK_213f125e14469be304f9ff1d452";
       public            postgres    false    251                       2606    48389 .   cart_gift_cards PK_2389be82bf0ef3635e2014c9ef1 
   CONSTRAINT     �   ALTER TABLE ONLY public.cart_gift_cards
    ADD CONSTRAINT "PK_2389be82bf0ef3635e2014c9ef1" PRIMARY KEY (cart_id, gift_card_id);
 Z   ALTER TABLE ONLY public.cart_gift_cards DROP CONSTRAINT "PK_2389be82bf0ef3635e2014c9ef1";
       public            postgres    false    262    262            k           2606    49454 '   tax_rate PK_23b71b53f650c0b39e99ccef4fd 
   CONSTRAINT     g   ALTER TABLE ONLY public.tax_rate
    ADD CONSTRAINT "PK_23b71b53f650c0b39e99ccef4fd" PRIMARY KEY (id);
 S   ALTER TABLE ONLY public.tax_rate DROP CONSTRAINT "PK_23b71b53f650c0b39e99ccef4fd";
       public            postgres    false    284            y           2606    47902 3   product_option_value PK_2ab71ed3b21be5800905c621535 
   CONSTRAINT     s   ALTER TABLE ONLY public.product_option_value
    ADD CONSTRAINT "PK_2ab71ed3b21be5800905c621535" PRIMARY KEY (id);
 _   ALTER TABLE ONLY public.product_option_value DROP CONSTRAINT "PK_2ab71ed3b21be5800905c621535";
       public            postgres    false    229            �           2606    49790 3   line_item_adjustment PK_2b1360103753df2dc8257c2c8c3 
   CONSTRAINT     s   ALTER TABLE ONLY public.line_item_adjustment
    ADD CONSTRAINT "PK_2b1360103753df2dc8257c2c8c3" PRIMARY KEY (id);
 _   ALTER TABLE ONLY public.line_item_adjustment DROP CONSTRAINT "PK_2b1360103753df2dc8257c2c8c3";
       public            postgres    false    301            �           2606    47941 .   shipping_option PK_2e56fddaa65f3a26d402e5d786e 
   CONSTRAINT     n   ALTER TABLE ONLY public.shipping_option
    ADD CONSTRAINT "PK_2e56fddaa65f3a26d402e5d786e" PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.shipping_option DROP CONSTRAINT "PK_2e56fddaa65f3a26d402e5d786e";
       public            postgres    false    232            {           2606    49491 /   product_tax_rate PK_326257ce468df46cd5c8c5922e9 
   CONSTRAINT     �   ALTER TABLE ONLY public.product_tax_rate
    ADD CONSTRAINT "PK_326257ce468df46cd5c8c5922e9" PRIMARY KEY (product_id, rate_id);
 [   ALTER TABLE ONLY public.product_tax_rate DROP CONSTRAINT "PK_326257ce468df46cd5c8c5922e9";
       public            postgres    false    288    288                       2606    48362 5   discount_rule_products PK_351c8c92f5d27283c445cd022ee 
   CONSTRAINT     �   ALTER TABLE ONLY public.discount_rule_products
    ADD CONSTRAINT "PK_351c8c92f5d27283c445cd022ee" PRIMARY KEY (discount_rule_id, product_id);
 a   ALTER TABLE ONLY public.discount_rule_products DROP CONSTRAINT "PK_351c8c92f5d27283c445cd022ee";
       public            postgres    false    259    259            �           2606    49662 >   discount_condition_product_type PK_35d538a5a24399d0df978df12ed 
   CONSTRAINT     �   ALTER TABLE ONLY public.discount_condition_product_type
    ADD CONSTRAINT "PK_35d538a5a24399d0df978df12ed" PRIMARY KEY (product_type_id, condition_id);
 j   ALTER TABLE ONLY public.discount_condition_product_type DROP CONSTRAINT "PK_35d538a5a24399d0df978df12ed";
       public            postgres    false    297    297            ]           2606    47826 *   return_item PK_46409dc1dd5f38509b9000c3069 
   CONSTRAINT     z   ALTER TABLE ONLY public.return_item
    ADD CONSTRAINT "PK_46409dc1dd5f38509b9000c3069" PRIMARY KEY (return_id, item_id);
 V   ALTER TABLE ONLY public.return_item DROP CONSTRAINT "PK_46409dc1dd5f38509b9000c3069";
       public            postgres    false    220    220            $           2606    48407 /   order_gift_cards PK_49a8ec66a6625d7c2e3526e05b4 
   CONSTRAINT     �   ALTER TABLE ONLY public.order_gift_cards
    ADD CONSTRAINT "PK_49a8ec66a6625d7c2e3526e05b4" PRIMARY KEY (order_id, gift_card_id);
 [   ALTER TABLE ONLY public.order_gift_cards DROP CONSTRAINT "PK_49a8ec66a6625d7c2e3526e05b4";
       public            postgres    false    264    264            E           2606    49094 1   product_collection PK_49d419fc77d3aed46c835c558ac 
   CONSTRAINT     q   ALTER TABLE ONLY public.product_collection
    ADD CONSTRAINT "PK_49d419fc77d3aed46c835c558ac" PRIMARY KEY (id);
 ]   ALTER TABLE ONLY public.product_collection DROP CONSTRAINT "PK_49d419fc77d3aed46c835c558ac";
       public            postgres    false    273            p           2606    49471 1   line_item_tax_line PK_4a0f4322fcd5ce4af85727f89a8 
   CONSTRAINT     q   ALTER TABLE ONLY public.line_item_tax_line
    ADD CONSTRAINT "PK_4a0f4322fcd5ce4af85727f89a8" PRIMARY KEY (id);
 ]   ALTER TABLE ONLY public.line_item_tax_line DROP CONSTRAINT "PK_4a0f4322fcd5ce4af85727f89a8";
       public            postgres    false    286            �           2606    48147 #   swap PK_4a10d0f359339acef77e7f986d9 
   CONSTRAINT     c   ALTER TABLE ONLY public.swap
    ADD CONSTRAINT "PK_4a10d0f359339acef77e7f986d9" PRIMARY KEY (id);
 O   ALTER TABLE ONLY public.swap DROP CONSTRAINT "PK_4a10d0f359339acef77e7f986d9";
       public            postgres    false    243            }           2606    47912 -   product_option PK_4cf3c467e9bc764bdd32c4cd938 
   CONSTRAINT     m   ALTER TABLE ONLY public.product_option
    ADD CONSTRAINT "PK_4cf3c467e9bc764bdd32c4cd938" PRIMARY KEY (id);
 Y   ALTER TABLE ONLY public.product_option DROP CONSTRAINT "PK_4cf3c467e9bc764bdd32c4cd938";
       public            postgres    false    230            [           2606    47818 *   fulfillment PK_50c102da132afffae660585981f 
   CONSTRAINT     j   ALTER TABLE ONLY public.fulfillment
    ADD CONSTRAINT "PK_50c102da132afffae660585981f" PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.fulfillment DROP CONSTRAINT "PK_50c102da132afffae660585981f";
       public            postgres    false    219            �           2606    49759 )   price_list PK_52ea7826468b1c889cb2c28df03 
   CONSTRAINT     i   ALTER TABLE ONLY public.price_list
    ADD CONSTRAINT "PK_52ea7826468b1c889cb2c28df03" PRIMARY KEY (id);
 U   ALTER TABLE ONLY public.price_list DROP CONSTRAINT "PK_52ea7826468b1c889cb2c28df03";
       public            postgres    false    299            ;           2606    48920 .   claim_item_tags PK_54ab8ce0f7e99167068188fbd81 
   CONSTRAINT     {   ALTER TABLE ONLY public.claim_item_tags
    ADD CONSTRAINT "PK_54ab8ce0f7e99167068188fbd81" PRIMARY KEY (item_id, tag_id);
 Z   ALTER TABLE ONLY public.claim_item_tags DROP CONSTRAINT "PK_54ab8ce0f7e99167068188fbd81";
       public            postgres    false    270    270            u           2606    49481 7   shipping_method_tax_line PK_54c94f5908aacbd51cf0a73edb1 
   CONSTRAINT     w   ALTER TABLE ONLY public.shipping_method_tax_line
    ADD CONSTRAINT "PK_54c94f5908aacbd51cf0a73edb1" PRIMARY KEY (id);
 c   ALTER TABLE ONLY public.shipping_method_tax_line DROP CONSTRAINT "PK_54c94f5908aacbd51cf0a73edb1";
       public            postgres    false    287            3           2606    48865 )   claim_item PK_5679662039bc4c7c6bc7fa1be2d 
   CONSTRAINT     i   ALTER TABLE ONLY public.claim_item
    ADD CONSTRAINT "PK_5679662039bc4c7c6bc7fa1be2d" PRIMARY KEY (id);
 U   ALTER TABLE ONLY public.claim_item DROP CONSTRAINT "PK_5679662039bc4c7c6bc7fa1be2d";
       public            postgres    false    268            �           2606    49924 )   order_edit PK_58ab6acf2e84b4e827f5f846f7a 
   CONSTRAINT     i   ALTER TABLE ONLY public.order_edit
    ADD CONSTRAINT "PK_58ab6acf2e84b4e827f5f846f7a" PRIMARY KEY (id);
 U   ALTER TABLE ONLY public.order_edit DROP CONSTRAINT "PK_58ab6acf2e84b4e827f5f846f7a";
       public            postgres    false    306                       2606    48344 ;   region_fulfillment_providers PK_5b7d928a1fb50d6803868cfab3a 
   CONSTRAINT     �   ALTER TABLE ONLY public.region_fulfillment_providers
    ADD CONSTRAINT "PK_5b7d928a1fb50d6803868cfab3a" PRIMARY KEY (region_id, provider_id);
 g   ALTER TABLE ONLY public.region_fulfillment_providers DROP CONSTRAINT "PK_5b7d928a1fb50d6803868cfab3a";
       public            postgres    false    257    257            h           2606    47860 %   region PK_5f48ffc3af96bc486f5f3f3a6da 
   CONSTRAINT     e   ALTER TABLE ONLY public.region
    ADD CONSTRAINT "PK_5f48ffc3af96bc486f5f3f3a6da" PRIMARY KEY (id);
 Q   ALTER TABLE ONLY public.region DROP CONSTRAINT "PK_5f48ffc3af96bc486f5f3f3a6da";
       public            postgres    false    225            �           2606    50060 @   publishable_api_key_sales_channel PK_68eaeb14bdac8954460054c567c 
   CONSTRAINT     �   ALTER TABLE ONLY public.publishable_api_key_sales_channel
    ADD CONSTRAINT "PK_68eaeb14bdac8954460054c567c" PRIMARY KEY (sales_channel_id, publishable_key_id);
 l   ALTER TABLE ONLY public.publishable_api_key_sales_channel DROP CONSTRAINT "PK_68eaeb14bdac8954460054c567c";
       public            postgres    false    311    311            B           2606    49067 +   notification PK_705b6c7cdf9b2c2ff7ac7872cb7 
   CONSTRAINT     k   ALTER TABLE ONLY public.notification
    ADD CONSTRAINT "PK_705b6c7cdf9b2c2ff7ac7872cb7" PRIMARY KEY (id);
 W   ALTER TABLE ONLY public.notification DROP CONSTRAINT "PK_705b6c7cdf9b2c2ff7ac7872cb7";
       public            postgres    false    272            _           2606    47833 '   currency PK_723472e41cae44beb0763f4039c 
   CONSTRAINT     i   ALTER TABLE ONLY public.currency
    ADD CONSTRAINT "PK_723472e41cae44beb0763f4039c" PRIMARY KEY (code);
 S   ALTER TABLE ONLY public.currency DROP CONSTRAINT "PK_723472e41cae44beb0763f4039c";
       public            postgres    false    221            .           2606    48846 (   claim_tag PK_7761180541142a5926501018d34 
   CONSTRAINT     h   ALTER TABLE ONLY public.claim_tag
    ADD CONSTRAINT "PK_7761180541142a5926501018d34" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.claim_tag DROP CONSTRAINT "PK_7761180541142a5926501018d34";
       public            postgres    false    267            +           2606    48837 *   claim_image PK_7c49e44bfe8840ca7d917890101 
   CONSTRAINT     j   ALTER TABLE ONLY public.claim_image
    ADD CONSTRAINT "PK_7c49e44bfe8840ca7d917890101" PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.claim_image DROP CONSTRAINT "PK_7c49e44bfe8840ca7d917890101";
       public            postgres    false    266            �           2606    49577 -   customer_group PK_88e7da3ff7262d9e0a35aa3664e 
   CONSTRAINT     m   ALTER TABLE ONLY public.customer_group
    ADD CONSTRAINT "PK_88e7da3ff7262d9e0a35aa3664e" PRIMARY KEY (id);
 Y   ALTER TABLE ONLY public.customer_group DROP CONSTRAINT "PK_88e7da3ff7262d9e0a35aa3664e";
       public            postgres    false    291            �           2606    50266 /   onboarding_state PK_891b72628471aada55d7b8c9410 
   CONSTRAINT     o   ALTER TABLE ONLY public.onboarding_state
    ADD CONSTRAINT "PK_891b72628471aada55d7b8c9410" PRIMARY KEY (id);
 [   ALTER TABLE ONLY public.onboarding_state DROP CONSTRAINT "PK_891b72628471aada55d7b8c9410";
       public            postgres    false    318            7           2606    48913 *   claim_order PK_8981f5595a4424021466aa4c7a4 
   CONSTRAINT     j   ALTER TABLE ONLY public.claim_order
    ADD CONSTRAINT "PK_8981f5595a4424021466aa4c7a4" PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.claim_order DROP CONSTRAINT "PK_8981f5595a4424021466aa4c7a4";
       public            postgres    false    269            Q           2606    47793 )   migrations PK_8c82d7f526340ab734260ea46be 
   CONSTRAINT     i   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT "PK_8c82d7f526340ab734260ea46be" PRIMARY KEY (id);
 U   ALTER TABLE ONLY public.migrations DROP CONSTRAINT "PK_8c82d7f526340ab734260ea46be";
       public            postgres    false    216            g           2606    49386 5   custom_shipping_option PK_8dfcb5c1172c29eec4a728420cc 
   CONSTRAINT     u   ALTER TABLE ONLY public.custom_shipping_option
    ADD CONSTRAINT "PK_8dfcb5c1172c29eec4a728420cc" PRIMARY KEY (id);
 a   ALTER TABLE ONLY public.custom_shipping_option DROP CONSTRAINT "PK_8dfcb5c1172c29eec4a728420cc";
       public            postgres    false    283            �           2606    50052 /   analytics_config PK_93505647c5d7cb479becb810b0f 
   CONSTRAINT     o   ALTER TABLE ONLY public.analytics_config
    ADD CONSTRAINT "PK_93505647c5d7cb479becb810b0f" PRIMARY KEY (id);
 [   ALTER TABLE ONLY public.analytics_config DROP CONSTRAINT "PK_93505647c5d7cb479becb810b0f";
       public            postgres    false    310            \           2606    49230 ,   return_reason PK_95fd1172973165790903e65660a 
   CONSTRAINT     l   ALTER TABLE ONLY public.return_reason
    ADD CONSTRAINT "PK_95fd1172973165790903e65660a" PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.return_reason DROP CONSTRAINT "PK_95fd1172973165790903e65660a";
       public            postgres    false    280            `           2606    49344 #   note PK_96d0c172a4fba276b1bbed43058 
   CONSTRAINT     c   ALTER TABLE ONLY public.note
    ADD CONSTRAINT "PK_96d0c172a4fba276b1bbed43058" PRIMARY KEY (id);
 O   ALTER TABLE ONLY public.note DROP CONSTRAINT "PK_96d0c172a4fba276b1bbed43058";
       public            postgres    false    281            �           2606    49671 9   discount_condition_product PK_994eb4529fdbf14450d64ec17e8 
   CONSTRAINT     �   ALTER TABLE ONLY public.discount_condition_product
    ADD CONSTRAINT "PK_994eb4529fdbf14450d64ec17e8" PRIMARY KEY (product_id, condition_id);
 e   ALTER TABLE ONLY public.discount_condition_product DROP CONSTRAINT "PK_994eb4529fdbf14450d64ec17e8";
       public            postgres    false    298    298            �           2606    50092 =   product_variant_inventory_item PK_9a1188b8d36f4d198303b4f7efa 
   CONSTRAINT     }   ALTER TABLE ONLY public.product_variant_inventory_item
    ADD CONSTRAINT "PK_9a1188b8d36f4d198303b4f7efa" PRIMARY KEY (id);
 i   ALTER TABLE ONLY public.product_variant_inventory_item DROP CONSTRAINT "PK_9a1188b8d36f4d198303b4f7efa";
       public            postgres    false    314            �           2606    48307 )   staged_job PK_9a28fb48c46c5509faf43ac8c8d 
   CONSTRAINT     i   ALTER TABLE ONLY public.staged_job
    ADD CONSTRAINT "PK_9a28fb48c46c5509faf43ac8c8d" PRIMARY KEY (id);
 U   ALTER TABLE ONLY public.staged_job DROP CONSTRAINT "PK_9a28fb48c46c5509faf43ac8c8d";
       public            postgres    false    253            �           2606    50069 2   publishable_api_key PK_9e613278673a87de92c606b4494 
   CONSTRAINT     r   ALTER TABLE ONLY public.publishable_api_key
    ADD CONSTRAINT "PK_9e613278673a87de92c606b4494" PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.publishable_api_key DROP CONSTRAINT "PK_9e613278673a87de92c606b4494";
       public            postgres    false    312                       2606    48335 7   region_payment_providers PK_9fa1e69914d3dd752de6b1da407 
   CONSTRAINT     �   ALTER TABLE ONLY public.region_payment_providers
    ADD CONSTRAINT "PK_9fa1e69914d3dd752de6b1da407" PRIMARY KEY (region_id, provider_id);
 c   ALTER TABLE ONLY public.region_payment_providers DROP CONSTRAINT "PK_9fa1e69914d3dd752de6b1da407";
       public            postgres    false    256    256            �           2606    47925 :   shipping_option_requirement PK_a0ff15442606d9f783602cb23a7 
   CONSTRAINT     z   ALTER TABLE ONLY public.shipping_option_requirement
    ADD CONSTRAINT "PK_a0ff15442606d9f783602cb23a7" PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.shipping_option_requirement DROP CONSTRAINT "PK_a0ff15442606d9f783602cb23a7";
       public            postgres    false    231            �           2606    48023 .   payment_session PK_a1a91b20f7f3b1e5afb5485cbcd 
   CONSTRAINT     n   ALTER TABLE ONLY public.payment_session
    ADD CONSTRAINT "PK_a1a91b20f7f3b1e5afb5485cbcd" PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.payment_session DROP CONSTRAINT "PK_a1a91b20f7f3b1e5afb5485cbcd";
       public            postgres    false    237                        2606    48398 .   order_discounts PK_a7418714ffceebc125bf6d8fcfe 
   CONSTRAINT     �   ALTER TABLE ONLY public.order_discounts
    ADD CONSTRAINT "PK_a7418714ffceebc125bf6d8fcfe" PRIMARY KEY (order_id, discount_id);
 Z   ALTER TABLE ONLY public.order_discounts DROP CONSTRAINT "PK_a7418714ffceebc125bf6d8fcfe";
       public            postgres    false    263    263            �           2606    48270 '   customer PK_a7a13f4cacb744524e44dfdad32 
   CONSTRAINT     g   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT "PK_a7a13f4cacb744524e44dfdad32" PRIMARY KEY (id);
 S   ALTER TABLE ONLY public.customer DROP CONSTRAINT "PK_a7a13f4cacb744524e44dfdad32";
       public            postgres    false    249            �           2606    49653 =   discount_condition_product_tag PK_a95382c1e62205b121aa058682b 
   CONSTRAINT     �   ALTER TABLE ONLY public.discount_condition_product_tag
    ADD CONSTRAINT "PK_a95382c1e62205b121aa058682b" PRIMARY KEY (product_tag_id, condition_id);
 i   ALTER TABLE ONLY public.discount_condition_product_tag DROP CONSTRAINT "PK_a95382c1e62205b121aa058682b";
       public            postgres    false    296    296            �           2606    48299 $   oauth PK_a957b894e50eb16b969c0640a8d 
   CONSTRAINT     d   ALTER TABLE ONLY public.oauth
    ADD CONSTRAINT "PK_a957b894e50eb16b969c0640a8d" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.oauth DROP CONSTRAINT "PK_a957b894e50eb16b969c0640a8d";
       public            postgres    false    252            �           2606    47991 ,   discount_rule PK_ac2c280de3701b2d66f6817f760 
   CONSTRAINT     l   ALTER TABLE ONLY public.discount_rule
    ADD CONSTRAINT "PK_ac2c280de3701b2d66f6817f760" PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.discount_rule DROP CONSTRAINT "PK_ac2c280de3701b2d66f6817f760";
       public            postgres    false    235            �           2606    48049 (   gift_card PK_af4e338d2d41035042843ad641f 
   CONSTRAINT     h   ALTER TABLE ONLY public.gift_card
    ADD CONSTRAINT "PK_af4e338d2d41035042843ad641f" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.gift_card DROP CONSTRAINT "PK_af4e338d2d41035042843ad641f";
       public            postgres    false    239            �           2606    50080 5   sales_channel_location PK_afd2c2c52634bc8280a9c9ee533 
   CONSTRAINT     u   ALTER TABLE ONLY public.sales_channel_location
    ADD CONSTRAINT "PK_afd2c2c52634bc8280a9c9ee533" PRIMARY KEY (id);
 a   ALTER TABLE ONLY public.sales_channel_location DROP CONSTRAINT "PK_afd2c2c52634bc8280a9c9ee533";
       public            postgres    false    313            m           2606    49462 +   tax_provider PK_b198bf82ba6a317c11763d99b99 
   CONSTRAINT     k   ALTER TABLE ONLY public.tax_provider
    ADD CONSTRAINT "PK_b198bf82ba6a317c11763d99b99" PRIMARY KEY (id);
 W   ALTER TABLE ONLY public.tax_provider DROP CONSTRAINT "PK_b198bf82ba6a317c11763d99b99";
       public            postgres    false    285            �           2606    49644 D   discount_condition_product_collection PK_b3508fc787aa4a38705866cbb6d 
   CONSTRAINT     �   ALTER TABLE ONLY public.discount_condition_product_collection
    ADD CONSTRAINT "PK_b3508fc787aa4a38705866cbb6d" PRIMARY KEY (product_collection_id, condition_id);
 p   ALTER TABLE ONLY public.discount_condition_product_collection DROP CONSTRAINT "PK_b3508fc787aa4a38705866cbb6d";
       public            postgres    false    295    295            �           2606    48081 .   shipping_method PK_b9b0adfad3c6b99229c1e7d4865 
   CONSTRAINT     n   ALTER TABLE ONLY public.shipping_method
    ADD CONSTRAINT "PK_b9b0adfad3c6b99229c1e7d4865" PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.shipping_method DROP CONSTRAINT "PK_b9b0adfad3c6b99229c1e7d4865";
       public            postgres    false    241            U           2606    47808 /   fulfillment_item PK_bc3e8a388de75db146a249922e0 
   CONSTRAINT     �   ALTER TABLE ONLY public.fulfillment_item
    ADD CONSTRAINT "PK_bc3e8a388de75db146a249922e0" PRIMARY KEY (fulfillment_id, item_id);
 [   ALTER TABLE ONLY public.fulfillment_item DROP CONSTRAINT "PK_bc3e8a388de75db146a249922e0";
       public            postgres    false    218    218            �           2606    49509 0   shipping_tax_rate PK_bcd93b14d7e2695365d383f5eae 
   CONSTRAINT     �   ALTER TABLE ONLY public.shipping_tax_rate
    ADD CONSTRAINT "PK_bcd93b14d7e2695365d383f5eae" PRIMARY KEY (shipping_option_id, rate_id);
 \   ALTER TABLE ONLY public.shipping_tax_rate DROP CONSTRAINT "PK_bcd93b14d7e2695365d383f5eae";
       public            postgres    false    290    290            S           2606    47801 3   fulfillment_provider PK_beb35a6de60a6c4f91d5ae57e44 
   CONSTRAINT     s   ALTER TABLE ONLY public.fulfillment_provider
    ADD CONSTRAINT "PK_beb35a6de60a6c4f91d5ae57e44" PRIMARY KEY (id);
 _   ALTER TABLE ONLY public.fulfillment_provider DROP CONSTRAINT "PK_beb35a6de60a6c4f91d5ae57e44";
       public            postgres    false    217            �           2606    47967 &   product PK_bebc9158e480b949565b4dc7a82 
   CONSTRAINT     f   ALTER TABLE ONLY public.product
    ADD CONSTRAINT "PK_bebc9158e480b949565b4dc7a82" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.product DROP CONSTRAINT "PK_bebc9158e480b949565b4dc7a82";
       public            postgres    false    234            c           2606    47842 &   country PK_bf6e37c231c4f4ea56dcd887269 
   CONSTRAINT     f   ALTER TABLE ONLY public.country
    ADD CONSTRAINT "PK_bf6e37c231c4f4ea56dcd887269" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.country DROP CONSTRAINT "PK_bf6e37c231c4f4ea56dcd887269";
       public            postgres    false    223            �           2606    48070 #   cart PK_c524ec48751b9b5bcfbf6e59be7 
   CONSTRAINT     c   ALTER TABLE ONLY public.cart
    ADD CONSTRAINT "PK_c524ec48751b9b5bcfbf6e59be7" PRIMARY KEY (id);
 O   ALTER TABLE ONLY public.cart DROP CONSTRAINT "PK_c524ec48751b9b5bcfbf6e59be7";
       public            postgres    false    240            �           2606    47957 /   shipping_profile PK_c8120e4543a5a3a121f2968a1ec 
   CONSTRAINT     o   ALTER TABLE ONLY public.shipping_profile
    ADD CONSTRAINT "PK_c8120e4543a5a3a121f2968a1ec" PRIMARY KEY (id);
 [   ALTER TABLE ONLY public.shipping_profile DROP CONSTRAINT "PK_c8120e4543a5a3a121f2968a1ec";
       public            postgres    false    233            �           2606    48106 %   return PK_c8ad68d13e76d75d803b5aeebc4 
   CONSTRAINT     e   ALTER TABLE ONLY public.return
    ADD CONSTRAINT "PK_c8ad68d13e76d75d803b5aeebc4" PRIMARY KEY (id);
 Q   ALTER TABLE ONLY public.return DROP CONSTRAINT "PK_c8ad68d13e76d75d803b5aeebc4";
       public            postgres    false    242                        2606    48327 #   user PK_cace4a159ff9f2512dd42373760 
   CONSTRAINT     e   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT "PK_cace4a159ff9f2512dd42373760" PRIMARY KEY (id);
 Q   ALTER TABLE ONLY public."user" DROP CONSTRAINT "PK_cace4a159ff9f2512dd42373760";
       public            postgres    false    255            �           2606    48165 (   line_item PK_cce6b13e67fa506d1d9618ac68b 
   CONSTRAINT     h   ALTER TABLE ONLY public.line_item
    ADD CONSTRAINT "PK_cce6b13e67fa506d1d9618ac68b" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.line_item DROP CONSTRAINT "PK_cce6b13e67fa506d1d9618ac68b";
       public            postgres    false    244            �           2606    49635 @   discount_condition_customer_group PK_cdc8b2277169a16b8b7d4c73e0e 
   CONSTRAINT     �   ALTER TABLE ONLY public.discount_condition_customer_group
    ADD CONSTRAINT "PK_cdc8b2277169a16b8b7d4c73e0e" PRIMARY KEY (customer_group_id, condition_id);
 l   ALTER TABLE ONLY public.discount_condition_customer_group DROP CONSTRAINT "PK_cdc8b2277169a16b8b7d4c73e0e";
       public            postgres    false    294    294            �           2606    48177 4   gift_card_transaction PK_cfb5b4ba5447a507aef87d73fe7 
   CONSTRAINT     t   ALTER TABLE ONLY public.gift_card_transaction
    ADD CONSTRAINT "PK_cfb5b4ba5447a507aef87d73fe7" PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.gift_card_transaction DROP CONSTRAINT "PK_cfb5b4ba5447a507aef87d73fe7";
       public            postgres    false    245            �           2606    48001 '   discount PK_d05d8712e429673e459e7f1cddb 
   CONSTRAINT     g   ALTER TABLE ONLY public.discount
    ADD CONSTRAINT "PK_d05d8712e429673e459e7f1cddb" PRIMARY KEY (id);
 S   ALTER TABLE ONLY public.discount DROP CONSTRAINT "PK_d05d8712e429673e459e7f1cddb";
       public            postgres    false    236            �           2606    49832 ,   sales_channel PK_d1eb0b923ea5a0eb1e0916191f1 
   CONSTRAINT     l   ALTER TABLE ONLY public.sales_channel
    ADD CONSTRAINT "PK_d1eb0b923ea5a0eb1e0916191f1" PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.sales_channel DROP CONSTRAINT "PK_d1eb0b923ea5a0eb1e0916191f1";
       public            postgres    false    303            j           2606    47869 $   image PK_d6db1ab4ee9ad9dbe86c64e4cc3 
   CONSTRAINT     d   ALTER TABLE ONLY public.image
    ADD CONSTRAINT "PK_d6db1ab4ee9ad9dbe86c64e4cc3" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.image DROP CONSTRAINT "PK_d6db1ab4ee9ad9dbe86c64e4cc3";
       public            postgres    false    226            �           2606    49909 0   order_item_change PK_d6eb138f77ffdee83567b85af0c 
   CONSTRAINT     p   ALTER TABLE ONLY public.order_item_change
    ADD CONSTRAINT "PK_d6eb138f77ffdee83567b85af0c" PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.order_item_change DROP CONSTRAINT "PK_d6eb138f77ffdee83567b85af0c";
       public            postgres    false    305            �           2606    48282 &   address PK_d92de1f82754668b5f5f5dd4fd5 
   CONSTRAINT     f   ALTER TABLE ONLY public.address
    ADD CONSTRAINT "PK_d92de1f82754668b5f5f5dd4fd5" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.address DROP CONSTRAINT "PK_d92de1f82754668b5f5f5dd4fd5";
       public            postgres    false    250                       2606    49500 4   product_type_tax_rate PK_ddc9242de1d99bc7674969289f0 
   CONSTRAINT     �   ALTER TABLE ONLY public.product_type_tax_rate
    ADD CONSTRAINT "PK_ddc9242de1d99bc7674969289f0" PRIMARY KEY (product_type_id, rate_id);
 `   ALTER TABLE ONLY public.product_type_tax_rate DROP CONSTRAINT "PK_ddc9242de1d99bc7674969289f0";
       public            postgres    false    289    289            J           2606    49113 +   product_type PK_e0843930fbb8854fe36ca39dae1 
   CONSTRAINT     k   ALTER TABLE ONLY public.product_type
    ADD CONSTRAINT "PK_e0843930fbb8854fe36ca39dae1" PRIMARY KEY (id);
 W   ALTER TABLE ONLY public.product_type DROP CONSTRAINT "PK_e0843930fbb8854fe36ca39dae1";
       public            postgres    false    275            �           2606    49585 7   customer_group_customers PK_e28a55e34ad1e2d3df9a0ac86d3 
   CONSTRAINT     �   ALTER TABLE ONLY public.customer_group_customers
    ADD CONSTRAINT "PK_e28a55e34ad1e2d3df9a0ac86d3" PRIMARY KEY (customer_group_id, customer_id);
 c   ALTER TABLE ONLY public.customer_group_customers DROP CONSTRAINT "PK_e28a55e34ad1e2d3df9a0ac86d3";
       public            postgres    false    292    292            �           2606    49817 (   batch_job PK_e57f84d485145d5be96bc6d871e 
   CONSTRAINT     h   ALTER TABLE ONLY public.batch_job
    ADD CONSTRAINT "PK_e57f84d485145d5be96bc6d871e" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.batch_job DROP CONSTRAINT "PK_e57f84d485145d5be96bc6d871e";
       public            postgres    false    302            �           2606    49623 1   discount_condition PK_e6b81d83133ddc21a2baf2e2204 
   CONSTRAINT     q   ALTER TABLE ONLY public.discount_condition
    ADD CONSTRAINT "PK_e6b81d83133ddc21a2baf2e2204" PRIMARY KEY (id);
 ]   ALTER TABLE ONLY public.discount_condition DROP CONSTRAINT "PK_e6b81d83133ddc21a2baf2e2204";
       public            postgres    false    293            e           2606    47851 /   payment_provider PK_ea94f42b6c88e9191c3649d7522 
   CONSTRAINT     o   ALTER TABLE ONLY public.payment_provider
    ADD CONSTRAINT "PK_ea94f42b6c88e9191c3649d7522" PRIMARY KEY (id);
 [   ALTER TABLE ONLY public.payment_provider DROP CONSTRAINT "PK_ea94f42b6c88e9191c3649d7522";
       public            postgres    false    224            �           2606    48197 %   refund PK_f1cefa2e60d99b206c46c1116e5 
   CONSTRAINT     e   ALTER TABLE ONLY public.refund
    ADD CONSTRAINT "PK_f1cefa2e60d99b206c46c1116e5" PRIMARY KEY (id);
 Q   ALTER TABLE ONLY public.refund DROP CONSTRAINT "PK_f1cefa2e60d99b206c46c1116e5";
       public            postgres    false    246            �           2606    48318 $   store PK_f3172007d4de5ae8e7692759d79 
   CONSTRAINT     d   ALTER TABLE ONLY public.store
    ADD CONSTRAINT "PK_f3172007d4de5ae8e7692759d79" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.store DROP CONSTRAINT "PK_f3172007d4de5ae8e7692759d79";
       public            postgres    false    254            S           2606    49160 *   draft_order PK_f478946c183d98f8d88a94cfcd7 
   CONSTRAINT     j   ALTER TABLE ONLY public.draft_order
    ADD CONSTRAINT "PK_f478946c183d98f8d88a94cfcd7" PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.draft_order DROP CONSTRAINT "PK_f478946c183d98f8d88a94cfcd7";
       public            postgres    false    278            c           2606    49365 %   invite PK_fc9fa190e5a3c5d80604a4f63e1 
   CONSTRAINT     e   ALTER TABLE ONLY public.invite
    ADD CONSTRAINT "PK_fc9fa190e5a3c5d80604a4f63e1" PRIMARY KEY (id);
 Q   ALTER TABLE ONLY public.invite DROP CONSTRAINT "PK_fc9fa190e5a3c5d80604a4f63e1";
       public            postgres    false    282            �           2606    48035 &   payment PK_fcaec7df5adf9cac408c686b2ab 
   CONSTRAINT     f   ALTER TABLE ONLY public.payment
    ADD CONSTRAINT "PK_fcaec7df5adf9cac408c686b2ab" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.payment DROP CONSTRAINT "PK_fcaec7df5adf9cac408c686b2ab";
       public            postgres    false    238            Y           2606    49216 ,   tracking_link PK_fcfd77feb9012ec2126d7c0bfb6 
   CONSTRAINT     l   ALTER TABLE ONLY public.tracking_link
    ADD CONSTRAINT "PK_fcfd77feb9012ec2126d7c0bfb6" PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.tracking_link DROP CONSTRAINT "PK_fcfd77feb9012ec2126d7c0bfb6";
       public            postgres    false    279            �           2606    49839 4   product_sales_channel PK_fd29b6a8bd641052628dee19583 
   CONSTRAINT     �   ALTER TABLE ONLY public.product_sales_channel
    ADD CONSTRAINT "PK_fd29b6a8bd641052628dee19583" PRIMARY KEY (product_id, sales_channel_id);
 `   ALTER TABLE ONLY public.product_sales_channel DROP CONSTRAINT "PK_fd29b6a8bd641052628dee19583";
       public            postgres    false    304    304            �           2606    49979 +   payment_collection PK_payment_collection_id 
   CONSTRAINT     k   ALTER TABLE ONLY public.payment_collection
    ADD CONSTRAINT "PK_payment_collection_id" PRIMARY KEY (id);
 W   ALTER TABLE ONLY public.payment_collection DROP CONSTRAINT "PK_payment_collection_id";
       public            postgres    false    307            �           2606    50012 :   payment_collection_payments PK_payment_collection_payments 
   CONSTRAINT     �   ALTER TABLE ONLY public.payment_collection_payments
    ADD CONSTRAINT "PK_payment_collection_payments" PRIMARY KEY (payment_collection_id, payment_id);
 f   ALTER TABLE ONLY public.payment_collection_payments DROP CONSTRAINT "PK_payment_collection_payments";
       public            postgres    false    309    309            �           2606    49993 :   payment_collection_sessions PK_payment_collection_sessions 
   CONSTRAINT     �   ALTER TABLE ONLY public.payment_collection_sessions
    ADD CONSTRAINT "PK_payment_collection_sessions" PRIMARY KEY (payment_collection_id, payment_session_id);
 f   ALTER TABLE ONLY public.payment_collection_sessions DROP CONSTRAINT "PK_payment_collection_sessions";
       public            postgres    false    308    308            �           2606    50276 <   product_variant_money_amount PK_product_variant_money_amount 
   CONSTRAINT     |   ALTER TABLE ONLY public.product_variant_money_amount
    ADD CONSTRAINT "PK_product_variant_money_amount" PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.product_variant_money_amount DROP CONSTRAINT "PK_product_variant_money_amount";
       public            postgres    false    319            �           2606    50107 /   product_category PK_qgguwbn1cwstxk93efl0px9oqwt 
   CONSTRAINT     o   ALTER TABLE ONLY public.product_category
    ADD CONSTRAINT "PK_qgguwbn1cwstxk93efl0px9oqwt" PRIMARY KEY (id);
 [   ALTER TABLE ONLY public.product_category DROP CONSTRAINT "PK_qgguwbn1cwstxk93efl0px9oqwt";
       public            postgres    false    315            �           2606    48083 .   shipping_method REL_1d9ad62038998c3a85c77a53cf 
   CONSTRAINT     p   ALTER TABLE ONLY public.shipping_method
    ADD CONSTRAINT "REL_1d9ad62038998c3a85c77a53cf" UNIQUE (return_id);
 Z   ALTER TABLE ONLY public.shipping_method DROP CONSTRAINT "REL_1d9ad62038998c3a85c77a53cf";
       public            postgres    false    241            �           2606    48149 #   swap REL_402e8182bc553e082f6380020b 
   CONSTRAINT     c   ALTER TABLE ONLY public.swap
    ADD CONSTRAINT "REL_402e8182bc553e082f6380020b" UNIQUE (cart_id);
 O   ALTER TABLE ONLY public.swap DROP CONSTRAINT "REL_402e8182bc553e082f6380020b";
       public            postgres    false    243            U           2606    49162 *   draft_order REL_5bd11d0e2a9628128e2c26fd0a 
   CONSTRAINT     j   ALTER TABLE ONLY public.draft_order
    ADD CONSTRAINT "REL_5bd11d0e2a9628128e2c26fd0a" UNIQUE (cart_id);
 V   ALTER TABLE ONLY public.draft_order DROP CONSTRAINT "REL_5bd11d0e2a9628128e2c26fd0a";
       public            postgres    false    278            �           2606    49915 0   order_item_change REL_5f9688929761f7df108b630e64 
   CONSTRAINT     u   ALTER TABLE ONLY public.order_item_change
    ADD CONSTRAINT "REL_5f9688929761f7df108b630e64" UNIQUE (line_item_id);
 \   ALTER TABLE ONLY public.order_item_change DROP CONSTRAINT "REL_5f9688929761f7df108b630e64";
       public            postgres    false    305            �           2606    48272 '   customer REL_8abe81b9aac151ae60bf507ad1 
   CONSTRAINT     r   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT "REL_8abe81b9aac151ae60bf507ad1" UNIQUE (billing_address_id);
 S   ALTER TABLE ONLY public.customer DROP CONSTRAINT "REL_8abe81b9aac151ae60bf507ad1";
       public            postgres    false    249            W           2606    49164 *   draft_order REL_8f6dd6c49202f1466ebf21e77d 
   CONSTRAINT     k   ALTER TABLE ONLY public.draft_order
    ADD CONSTRAINT "REL_8f6dd6c49202f1466ebf21e77d" UNIQUE (order_id);
 V   ALTER TABLE ONLY public.draft_order DROP CONSTRAINT "REL_8f6dd6c49202f1466ebf21e77d";
       public            postgres    false    278            �           2606    48072 #   cart REL_9d1a161434c610aae7c3df2dc7 
   CONSTRAINT     f   ALTER TABLE ONLY public.cart
    ADD CONSTRAINT "REL_9d1a161434c610aae7c3df2dc7" UNIQUE (payment_id);
 O   ALTER TABLE ONLY public.cart DROP CONSTRAINT "REL_9d1a161434c610aae7c3df2dc7";
       public            postgres    false    240            �           2606    48108 %   return REL_bad82d7bff2b08b87094bfac3d 
   CONSTRAINT     e   ALTER TABLE ONLY public.return
    ADD CONSTRAINT "REL_bad82d7bff2b08b87094bfac3d" UNIQUE (swap_id);
 Q   ALTER TABLE ONLY public.return DROP CONSTRAINT "REL_bad82d7bff2b08b87094bfac3d";
       public            postgres    false    242            �           2606    48037 &   payment REL_c17aff091441b7c25ec3d68d36 
   CONSTRAINT     f   ALTER TABLE ONLY public.payment
    ADD CONSTRAINT "REL_c17aff091441b7c25ec3d68d36" UNIQUE (swap_id);
 R   ALTER TABLE ONLY public.payment DROP CONSTRAINT "REL_c17aff091441b7c25ec3d68d36";
       public            postgres    false    238            �           2606    48260 $   order REL_c99a206eb11ad45f6b7f04f2dc 
   CONSTRAINT     f   ALTER TABLE ONLY public."order"
    ADD CONSTRAINT "REL_c99a206eb11ad45f6b7f04f2dc" UNIQUE (cart_id);
 R   ALTER TABLE ONLY public."order" DROP CONSTRAINT "REL_c99a206eb11ad45f6b7f04f2dc";
       public            postgres    false    248            i           2606    49388 5   custom_shipping_option UQ_0f838b122a9a01d921aa1cdb669 
   CONSTRAINT     �   ALTER TABLE ONLY public.custom_shipping_option
    ADD CONSTRAINT "UQ_0f838b122a9a01d921aa1cdb669" UNIQUE (shipping_option_id, cart_id);
 a   ALTER TABLE ONLY public.custom_shipping_option DROP CONSTRAINT "UQ_0f838b122a9a01d921aa1cdb669";
       public            postgres    false    283    283            r           2606    49805 1   line_item_tax_line UQ_3c2af51043ed7243e7d9775a2ad 
   CONSTRAINT     w   ALTER TABLE ONLY public.line_item_tax_line
    ADD CONSTRAINT "UQ_3c2af51043ed7243e7d9775a2ad" UNIQUE (item_id, code);
 ]   ALTER TABLE ONLY public.line_item_tax_line DROP CONSTRAINT "UQ_3c2af51043ed7243e7d9775a2ad";
       public            postgres    false    286    286            �           2606    49913 0   order_item_change UQ_5b7a99181e4db2ea821be0b6196 
   CONSTRAINT     �   ALTER TABLE ONLY public.order_item_change
    ADD CONSTRAINT "UQ_5b7a99181e4db2ea821be0b6196" UNIQUE (order_edit_id, original_line_item_id);
 \   ALTER TABLE ONLY public.order_item_change DROP CONSTRAINT "UQ_5b7a99181e4db2ea821be0b6196";
       public            postgres    false    305    305            �           2606    49843 $   store UQ_61b0f48cccbb5f41c750bac7286 
   CONSTRAINT     u   ALTER TABLE ONLY public.store
    ADD CONSTRAINT "UQ_61b0f48cccbb5f41c750bac7286" UNIQUE (default_sales_channel_id);
 P   ALTER TABLE ONLY public.store DROP CONSTRAINT "UQ_61b0f48cccbb5f41c750bac7286";
       public            postgres    false    254            �           2606    48924 %   return UQ_71773d56eb2bacb922bc3283398 
   CONSTRAINT     l   ALTER TABLE ONLY public.return
    ADD CONSTRAINT "UQ_71773d56eb2bacb922bc3283398" UNIQUE (claim_order_id);
 Q   ALTER TABLE ONLY public.return DROP CONSTRAINT "UQ_71773d56eb2bacb922bc3283398";
       public            postgres    false    242            �           2606    49169 $   order UQ_727b872f86c7378474a8fa46147 
   CONSTRAINT     m   ALTER TABLE ONLY public."order"
    ADD CONSTRAINT "UQ_727b872f86c7378474a8fa46147" UNIQUE (draft_order_id);
 R   ALTER TABLE ONLY public."order" DROP CONSTRAINT "UQ_727b872f86c7378474a8fa46147";
       public            postgres    false    248            �           2606    50094 =   product_variant_inventory_item UQ_c9be7c1b11a1a729eb51d1b6bca 
   CONSTRAINT     �   ALTER TABLE ONLY public.product_variant_inventory_item
    ADD CONSTRAINT "UQ_c9be7c1b11a1a729eb51d1b6bca" UNIQUE (variant_id, inventory_item_id);
 i   ALTER TABLE ONLY public.product_variant_inventory_item DROP CONSTRAINT "UQ_c9be7c1b11a1a729eb51d1b6bca";
       public            postgres    false    314    314            w           2606    49807 7   shipping_method_tax_line UQ_cd147fca71e50bc954139fa3104 
   CONSTRAINT     �   ALTER TABLE ONLY public.shipping_method_tax_line
    ADD CONSTRAINT "UQ_cd147fca71e50bc954139fa3104" UNIQUE (shipping_method_id, code);
 c   ALTER TABLE ONLY public.shipping_method_tax_line DROP CONSTRAINT "UQ_cd147fca71e50bc954139fa3104";
       public            postgres    false    287    287            �           2606    49911 0   order_item_change UQ_da93cee3ca0dd50a5246268c2e9 
   CONSTRAINT     �   ALTER TABLE ONLY public.order_item_change
    ADD CONSTRAINT "UQ_da93cee3ca0dd50a5246268c2e9" UNIQUE (order_edit_id, line_item_id);
 \   ALTER TABLE ONLY public.order_item_change DROP CONSTRAINT "UQ_da93cee3ca0dd50a5246268c2e9";
       public            postgres    false    305    305            �           2606    49625    discount_condition dctypeuniq 
   CONSTRAINT     t   ALTER TABLE ONLY public.discount_condition
    ADD CONSTRAINT dctypeuniq UNIQUE (type, operator, discount_rule_id);
 G   ALTER TABLE ONLY public.discount_condition DROP CONSTRAINT dctypeuniq;
       public            postgres    false    293    293    293            �           2606    48179    gift_card_transaction gcuniq 
   CONSTRAINT     i   ALTER TABLE ONLY public.gift_card_transaction
    ADD CONSTRAINT gcuniq UNIQUE (gift_card_id, order_id);
 F   ALTER TABLE ONLY public.gift_card_transaction DROP CONSTRAINT gcuniq;
       public            postgres    false    245    245            ~           1259    49009    IDX_012a62ba743e427b5ebe9dee18    INDEX     v   CREATE INDEX "IDX_012a62ba743e427b5ebe9dee18" ON public.shipping_option_requirement USING btree (shipping_option_id);
 4   DROP INDEX public."IDX_012a62ba743e427b5ebe9dee18";
       public            postgres    false    231            �           1259    49677    IDX_01486cc9dc6b36bf658685535f    INDEX     u   CREATE INDEX "IDX_01486cc9dc6b36bf658685535f" ON public.discount_condition_product_tag USING btree (product_tag_id);
 4   DROP INDEX public."IDX_01486cc9dc6b36bf658685535f";
       public            postgres    false    296            4           1259    49035    IDX_017d58bf8260c6e1a2588d258e    INDEX     g   CREATE INDEX "IDX_017d58bf8260c6e1a2588d258e" ON public.claim_order USING btree (shipping_address_id);
 4   DROP INDEX public."IDX_017d58bf8260c6e1a2588d258e";
       public            postgres    false    269            o           1259    49317    IDX_045d4a149c09f4704e0bc08dd4    INDEX     �   CREATE UNIQUE INDEX "IDX_045d4a149c09f4704e0bc08dd4" ON public.product_variant USING btree (barcode) WHERE (deleted_at IS NULL);
 4   DROP INDEX public."IDX_045d4a149c09f4704e0bc08dd4";
       public            postgres    false    228    228                       1259    48391    IDX_0fb38b6d167793192bc126d835    INDEX     d   CREATE INDEX "IDX_0fb38b6d167793192bc126d835" ON public.cart_gift_cards USING btree (gift_card_id);
 4   DROP INDEX public."IDX_0fb38b6d167793192bc126d835";
       public            postgres    false    262                       1259    48400    IDX_0fc1ec4e3db9001ad60c19daf1    INDEX     c   CREATE INDEX "IDX_0fc1ec4e3db9001ad60c19daf1" ON public.order_discounts USING btree (discount_id);
 4   DROP INDEX public."IDX_0fc1ec4e3db9001ad60c19daf1";
       public            postgres    false    263            �           1259    48944    IDX_118e3c48f09a7728f41023c94e    INDEX     `   CREATE INDEX "IDX_118e3c48f09a7728f41023c94e" ON public.line_item USING btree (claim_order_id);
 4   DROP INDEX public."IDX_118e3c48f09a7728f41023c94e";
       public            postgres    false    244            �           1259    49047    IDX_19b0c6293443d1b464f604c331    INDEX     c   CREATE INDEX "IDX_19b0c6293443d1b464f604c331" ON public."order" USING btree (shipping_address_id);
 4   DROP INDEX public."IDX_19b0c6293443d1b464f604c331";
       public            postgres    false    248            x           1259    49514    IDX_1d04aebeabb6a89f87e536a124    INDEX     c   CREATE INDEX "IDX_1d04aebeabb6a89f87e536a124" ON public.product_tax_rate USING btree (product_id);
 4   DROP INDEX public."IDX_1d04aebeabb6a89f87e536a124";
       public            postgres    false    288            �           1259    48088    IDX_1d9ad62038998c3a85c77a53cf    INDEX     a   CREATE INDEX "IDX_1d9ad62038998c3a85c77a53cf" ON public.shipping_method USING btree (return_id);
 4   DROP INDEX public."IDX_1d9ad62038998c3a85c77a53cf";
       public            postgres    false    241            K           1259    49122    IDX_21683a063fe82dafdf681ecc9c    INDEX     c   CREATE INDEX "IDX_21683a063fe82dafdf681ecc9c" ON public.product_tags USING btree (product_tag_id);
 4   DROP INDEX public."IDX_21683a063fe82dafdf681ecc9c";
       public            postgres    false    276            )           1259    49006    IDX_21cbfedd83d736d86f4c6f4ce5    INDEX     a   CREATE INDEX "IDX_21cbfedd83d736d86f4c6f4ce5" ON public.claim_image USING btree (claim_item_id);
 4   DROP INDEX public."IDX_21cbfedd83d736d86f4c6f4ce5";
       public            postgres    false    266            	           1259    48355    IDX_2212515ba306c79f42c46a99db    INDEX     _   CREATE INDEX "IDX_2212515ba306c79f42c46a99db" ON public.product_images USING btree (image_id);
 4   DROP INDEX public."IDX_2212515ba306c79f42c46a99db";
       public            postgres    false    258            �           1259    49029    IDX_242205c81c1152fab1b6e84847    INDEX     X   CREATE INDEX "IDX_242205c81c1152fab1b6e84847" ON public.cart USING btree (customer_id);
 4   DROP INDEX public."IDX_242205c81c1152fab1b6e84847";
       public            postgres    false    240            y           1259    49513    IDX_2484cf14c437a04586b07e7ddd    INDEX     `   CREATE INDEX "IDX_2484cf14c437a04586b07e7ddd" ON public.product_tax_rate USING btree (rate_id);
 4   DROP INDEX public."IDX_2484cf14c437a04586b07e7ddd";
       public            postgres    false    288            |           1259    49516    IDX_25a3138bb236f63d9bb6c8ff11    INDEX     m   CREATE INDEX "IDX_25a3138bb236f63d9bb6c8ff11" ON public.product_type_tax_rate USING btree (product_type_id);
 4   DROP INDEX public."IDX_25a3138bb236f63d9bb6c8ff11";
       public            postgres    false    289            �           1259    48166    IDX_27283ee631862266d0f1c68064    INDEX     Y   CREATE INDEX "IDX_27283ee631862266d0f1c68064" ON public.line_item USING btree (cart_id);
 4   DROP INDEX public."IDX_27283ee631862266d0f1c68064";
       public            postgres    false    244            p           1259    49316    IDX_2ca8cfbdafb998ecfd6d340389    INDEX     }   CREATE UNIQUE INDEX "IDX_2ca8cfbdafb998ecfd6d340389" ON public.product_variant USING btree (sku) WHERE (deleted_at IS NULL);
 4   DROP INDEX public."IDX_2ca8cfbdafb998ecfd6d340389";
       public            postgres    false    228    228            �           1259    49792    IDX_2f41b20a71f30e60471d7e3769    INDEX     h   CREATE INDEX "IDX_2f41b20a71f30e60471d7e3769" ON public.line_item_adjustment USING btree (discount_id);
 4   DROP INDEX public."IDX_2f41b20a71f30e60471d7e3769";
       public            postgres    false    301            ]           1259    49346    IDX_3287f98befad26c3a7dab088cf    INDEX     X   CREATE INDEX "IDX_3287f98befad26c3a7dab088cf" ON public.note USING btree (resource_id);
 4   DROP INDEX public."IDX_3287f98befad26c3a7dab088cf";
       public            postgres    false    281            �           1259    49517    IDX_346e0016cf045b998074774764    INDEX     a   CREATE INDEX "IDX_346e0016cf045b998074774764" ON public.shipping_tax_rate USING btree (rate_id);
 4   DROP INDEX public."IDX_346e0016cf045b998074774764";
       public            postgres    false    290            �           1259    49841    IDX_37341bad297fe5cca91f921032    INDEX     n   CREATE INDEX "IDX_37341bad297fe5cca91f921032" ON public.product_sales_channel USING btree (sales_channel_id);
 4   DROP INDEX public."IDX_37341bad297fe5cca91f921032";
       public            postgres    false    304            �           1259    50053    IDX_379ca70338ce9991f3affdeedf    INDEX     �   CREATE UNIQUE INDEX "IDX_379ca70338ce9991f3affdeedf" ON public.analytics_config USING btree (id, user_id) WHERE (deleted_at IS NULL);
 4   DROP INDEX public."IDX_379ca70338ce9991f3affdeedf";
       public            postgres    false    310    310    310                       1259    48346    IDX_37f361c38a18d12a3fa3158d0c    INDEX     p   CREATE INDEX "IDX_37f361c38a18d12a3fa3158d0c" ON public.region_fulfillment_providers USING btree (provider_id);
 4   DROP INDEX public."IDX_37f361c38a18d12a3fa3158d0c";
       public            postgres    false    257                       1259    48337    IDX_3a6947180aeec283cd92c59ebb    INDEX     l   CREATE INDEX "IDX_3a6947180aeec283cd92c59ebb" ON public.region_payment_providers USING btree (provider_id);
 4   DROP INDEX public."IDX_3a6947180aeec283cd92c59ebb";
       public            postgres    false    256            �           1259    49587    IDX_3c6412d076292f439269abe1a2    INDEX     l   CREATE INDEX "IDX_3c6412d076292f439269abe1a2" ON public.customer_group_customers USING btree (customer_id);
 4   DROP INDEX public."IDX_3c6412d076292f439269abe1a2";
       public            postgres    false    292            �           1259    48168    IDX_3fa354d8d1233ff81097b2fcb6    INDEX     Y   CREATE INDEX "IDX_3fa354d8d1233ff81097b2fcb6" ON public.line_item USING btree (swap_id);
 4   DROP INDEX public."IDX_3fa354d8d1233ff81097b2fcb6";
       public            postgres    false    244            �           1259    48167    IDX_43a2b24495fe1d9fc2a9c835bc    INDEX     Z   CREATE INDEX "IDX_43a2b24495fe1d9fc2a9c835bc" ON public.line_item USING btree (order_id);
 4   DROP INDEX public."IDX_43a2b24495fe1d9fc2a9c835bc";
       public            postgres    false    244            d           1259    49389    IDX_44090cb11b06174cbcc667e91c    INDEX     q   CREATE INDEX "IDX_44090cb11b06174cbcc667e91c" ON public.custom_shipping_option USING btree (shipping_option_id);
 4   DROP INDEX public."IDX_44090cb11b06174cbcc667e91c";
       public            postgres    false    283            �           1259    49021    IDX_4665f17abc1e81dd58330e5854    INDEX     W   CREATE INDEX "IDX_4665f17abc1e81dd58330e5854" ON public.payment USING btree (cart_id);
 4   DROP INDEX public."IDX_4665f17abc1e81dd58330e5854";
       public            postgres    false    238            �           1259    49028    IDX_484c329f4783be4e18e5e2ff09    INDEX     V   CREATE INDEX "IDX_484c329f4783be4e18e5e2ff09" ON public.cart USING btree (region_id);
 4   DROP INDEX public."IDX_484c329f4783be4e18e5e2ff09";
       public            postgres    false    240            �           1259    49681    IDX_4d5f98645a67545d8dea42e2eb    INDEX     {   CREATE INDEX "IDX_4d5f98645a67545d8dea42e2eb" ON public.discount_condition_customer_group USING btree (customer_group_id);
 4   DROP INDEX public."IDX_4d5f98645a67545d8dea42e2eb";
       public            postgres    false    294                       1259    48363    IDX_4e0739e5f0244c08d41174ca08    INDEX     o   CREATE INDEX "IDX_4e0739e5f0244c08d41174ca08" ON public.discount_rule_products USING btree (discount_rule_id);
 4   DROP INDEX public."IDX_4e0739e5f0244c08d41174ca08";
       public            postgres    false    259            
           1259    48354    IDX_4f166bb8c2bfcef2498d97b406    INDEX     a   CREATE INDEX "IDX_4f166bb8c2bfcef2498d97b406" ON public.product_images USING btree (product_id);
 4   DROP INDEX public."IDX_4f166bb8c2bfcef2498d97b406";
       public            postgres    false    258            n           1259    49472    IDX_5077fa54b0d037e984385dfe8a    INDEX     b   CREATE INDEX "IDX_5077fa54b0d037e984385dfe8a" ON public.line_item_tax_line USING btree (item_id);
 4   DROP INDEX public."IDX_5077fa54b0d037e984385dfe8a";
       public            postgres    false    286            �           1259    48085    IDX_5267705a43d547e232535b656c    INDEX     `   CREATE INDEX "IDX_5267705a43d547e232535b656c" ON public.shipping_method USING btree (order_id);
 4   DROP INDEX public."IDX_5267705a43d547e232535b656c";
       public            postgres    false    241            �           1259    49767    IDX_52875734e9dd69064f0041f4d9    INDEX     p   CREATE INDEX "IDX_52875734e9dd69064f0041f4d9" ON public.price_list_customer_groups USING btree (price_list_id);
 4   DROP INDEX public."IDX_52875734e9dd69064f0041f4d9";
       public            postgres    false    300            �           1259    49040    IDX_52dd74e8c989aa5665ad2852b8    INDEX     U   CREATE INDEX "IDX_52dd74e8c989aa5665ad2852b8" ON public.swap USING btree (order_id);
 4   DROP INDEX public."IDX_52dd74e8c989aa5665ad2852b8";
       public            postgres    false    243            �           1259    48169    IDX_5371cbaa3be5200f373d24e3d5    INDEX     \   CREATE INDEX "IDX_5371cbaa3be5200f373d24e3d5" ON public.line_item USING btree (variant_id);
 4   DROP INDEX public."IDX_5371cbaa3be5200f373d24e3d5";
       public            postgres    false    244            �           1259    48052    IDX_53cb5605fa42e82b4d47b47bda    INDEX     ]   CREATE UNIQUE INDEX "IDX_53cb5605fa42e82b4d47b47bda" ON public.gift_card USING btree (code);
 4   DROP INDEX public."IDX_53cb5605fa42e82b4d47b47bda";
       public            postgres    false    239            �           1259    49046    IDX_5568d3b9ce9f7abeeb37511ecf    INDEX     b   CREATE INDEX "IDX_5568d3b9ce9f7abeeb37511ecf" ON public."order" USING btree (billing_address_id);
 4   DROP INDEX public."IDX_5568d3b9ce9f7abeeb37511ecf";
       public            postgres    false    248            �           1259    49043    IDX_579e01fb94f4f58db480857e05    INDEX     Z   CREATE INDEX "IDX_579e01fb94f4f58db480857e05" ON public."order" USING btree (display_id);
 4   DROP INDEX public."IDX_579e01fb94f4f58db480857e05";
       public            postgres    false    248            �           1259    49840    IDX_5a4d5e1e60f97633547821ec8d    INDEX     h   CREATE INDEX "IDX_5a4d5e1e60f97633547821ec8d" ON public.product_sales_channel USING btree (product_id);
 4   DROP INDEX public."IDX_5a4d5e1e60f97633547821ec8d";
       public            postgres    false    304            L           1259    49121    IDX_5b0c6fc53c574299ecc7f9ee22    INDEX     _   CREATE INDEX "IDX_5b0c6fc53c574299ecc7f9ee22" ON public.product_tags USING btree (product_id);
 4   DROP INDEX public."IDX_5b0c6fc53c574299ecc7f9ee22";
       public            postgres    false    276            O           1259    49166    IDX_5bd11d0e2a9628128e2c26fd0a    INDEX     [   CREATE INDEX "IDX_5bd11d0e2a9628128e2c26fd0a" ON public.draft_order USING btree (cart_id);
 4   DROP INDEX public."IDX_5bd11d0e2a9628128e2c26fd0a";
       public            postgres    false    278            �           1259    49010    IDX_5c58105f1752fca0f4ce69f466    INDEX     a   CREATE INDEX "IDX_5c58105f1752fca0f4ce69f466" ON public.shipping_option USING btree (region_id);
 4   DROP INDEX public."IDX_5c58105f1752fca0f4ce69f466";
       public            postgres    false    232            �           1259    49586    IDX_620330964db8d2999e67b0dbe3    INDEX     r   CREATE INDEX "IDX_620330964db8d2999e67b0dbe3" ON public.customer_group_customers USING btree (customer_group_id);
 4   DROP INDEX public."IDX_620330964db8d2999e67b0dbe3";
       public            postgres    false    292            /           1259    48868    IDX_64980511ca32c8e92b417644af    INDEX     ]   CREATE INDEX "IDX_64980511ca32c8e92b417644af" ON public.claim_item USING btree (variant_id);
 4   DROP INDEX public."IDX_64980511ca32c8e92b417644af";
       public            postgres    false    268                       1259    48381    IDX_6680319ebe1f46d18f106191d5    INDEX     ^   CREATE INDEX "IDX_6680319ebe1f46d18f106191d5" ON public.cart_discounts USING btree (cart_id);
 4   DROP INDEX public."IDX_6680319ebe1f46d18f106191d5";
       public            postgres    false    261            a           1259    49376    IDX_6b0ce4b4bcfd24491510bf19d1    INDEX     `   CREATE UNIQUE INDEX "IDX_6b0ce4b4bcfd24491510bf19d1" ON public.invite USING btree (user_email);
 4   DROP INDEX public."IDX_6b0ce4b4bcfd24491510bf19d1";
       public            postgres    false    282            �           1259    49026    IDX_6b9c66b5e36f7c827dfaa092f9    INDEX     _   CREATE INDEX "IDX_6b9c66b5e36f7c827dfaa092f9" ON public.cart USING btree (billing_address_id);
 4   DROP INDEX public."IDX_6b9c66b5e36f7c827dfaa092f9";
       public            postgres    false    240            0           1259    48867    IDX_6e0cad0daef76bb642675910b9    INDEX     Z   CREATE INDEX "IDX_6e0cad0daef76bb642675910b9" ON public.claim_item USING btree (item_id);
 4   DROP INDEX public."IDX_6e0cad0daef76bb642675910b9";
       public            postgres    false    268            �           1259    49674    IDX_6ef23ce0b1d9cf9b5b833e52b9    INDEX     t   CREATE INDEX "IDX_6ef23ce0b1d9cf9b5b833e52b9" ON public.discount_condition_product_type USING btree (condition_id);
 4   DROP INDEX public."IDX_6ef23ce0b1d9cf9b5b833e52b9";
       public            postgres    false    297            C           1259    49314    IDX_6f234f058bbbea810dce1d04d0    INDEX     �   CREATE UNIQUE INDEX "IDX_6f234f058bbbea810dce1d04d0" ON public.product_collection USING btree (handle) WHERE (deleted_at IS NULL);
 4   DROP INDEX public."IDX_6f234f058bbbea810dce1d04d0";
       public            postgres    false    273    273            �           1259    49032    IDX_71773d56eb2bacb922bc328339    INDEX     ]   CREATE INDEX "IDX_71773d56eb2bacb922bc328339" ON public.return USING btree (claim_order_id);
 4   DROP INDEX public."IDX_71773d56eb2bacb922bc328339";
       public            postgres    false    242            %           1259    48418    IDX_82a6bbb0b527c20a0002ddcbd6    INDEX     f   CREATE INDEX "IDX_82a6bbb0b527c20a0002ddcbd6" ON public.store_currencies USING btree (currency_code);
 4   DROP INDEX public."IDX_82a6bbb0b527c20a0002ddcbd6";
       public            postgres    false    265            �           1259    49680    IDX_8486ee16e69013c645d0b8716b    INDEX     v   CREATE INDEX "IDX_8486ee16e69013c645d0b8716b" ON public.discount_condition_customer_group USING btree (condition_id);
 4   DROP INDEX public."IDX_8486ee16e69013c645d0b8716b";
       public            postgres    false    294                       1259    48336    IDX_8aaa78ba90d3802edac317df86    INDEX     j   CREATE INDEX "IDX_8aaa78ba90d3802edac317df86" ON public.region_payment_providers USING btree (region_id);
 4   DROP INDEX public."IDX_8aaa78ba90d3802edac317df86";
       public            postgres    false    256            �           1259    49049    IDX_8abe81b9aac151ae60bf507ad1    INDEX     c   CREATE INDEX "IDX_8abe81b9aac151ae60bf507ad1" ON public.customer USING btree (billing_address_id);
 4   DROP INDEX public."IDX_8abe81b9aac151ae60bf507ad1";
       public            postgres    false    249                       1259    48382    IDX_8df75ef4f35f217768dc113545    INDEX     b   CREATE INDEX "IDX_8df75ef4f35f217768dc113545" ON public.cart_discounts USING btree (discount_id);
 4   DROP INDEX public."IDX_8df75ef4f35f217768dc113545";
       public            postgres    false    261            P           1259    49167    IDX_8f6dd6c49202f1466ebf21e77d    INDEX     \   CREATE INDEX "IDX_8f6dd6c49202f1466ebf21e77d" ON public.draft_order USING btree (order_id);
 4   DROP INDEX public."IDX_8f6dd6c49202f1466ebf21e77d";
       public            postgres    false    278            1           1259    48866    IDX_900a9c3834257304396b2b0fe7    INDEX     a   CREATE INDEX "IDX_900a9c3834257304396b2b0fe7" ON public.claim_item USING btree (claim_order_id);
 4   DROP INDEX public."IDX_900a9c3834257304396b2b0fe7";
       public            postgres    false    268            s           1259    49482    IDX_926ca9f29014af8091722dede0    INDEX     s   CREATE INDEX "IDX_926ca9f29014af8091722dede0" ON public.shipping_method_tax_line USING btree (shipping_method_id);
 4   DROP INDEX public."IDX_926ca9f29014af8091722dede0";
       public            postgres    false    287            e           1259    49390    IDX_93caeb1bb70d37c1d36d6701a7    INDEX     f   CREATE INDEX "IDX_93caeb1bb70d37c1d36d6701a7" ON public.custom_shipping_option USING btree (cart_id);
 4   DROP INDEX public."IDX_93caeb1bb70d37c1d36d6701a7";
       public            postgres    false    283            �           1259    49050    IDX_9c9614b2f9d01665800ea8dbff    INDEX     [   CREATE INDEX "IDX_9c9614b2f9d01665800ea8dbff" ON public.address USING btree (customer_id);
 4   DROP INDEX public."IDX_9c9614b2f9d01665800ea8dbff";
       public            postgres    false    250            �           1259    49030    IDX_9d1a161434c610aae7c3df2dc7    INDEX     W   CREATE INDEX "IDX_9d1a161434c610aae7c3df2dc7" ON public.cart USING btree (payment_id);
 4   DROP INDEX public."IDX_9d1a161434c610aae7c3df2dc7";
       public            postgres    false    240            �           1259    49679    IDX_a0b05dc4257abe639cb75f8eae    INDEX     �   CREATE INDEX "IDX_a0b05dc4257abe639cb75f8eae" ON public.discount_condition_product_collection USING btree (product_collection_id);
 4   DROP INDEX public."IDX_a0b05dc4257abe639cb75f8eae";
       public            postgres    false    295            �           1259    49012    IDX_a0e206bfaed3cb63c186091734    INDEX     c   CREATE INDEX "IDX_a0e206bfaed3cb63c186091734" ON public.shipping_option USING btree (provider_id);
 4   DROP INDEX public."IDX_a0e206bfaed3cb63c186091734";
       public            postgres    false    232            �           1259    49678    IDX_a1c4f9cfb599ad1f0db39cadd5    INDEX     z   CREATE INDEX "IDX_a1c4f9cfb599ad1f0db39cadd5" ON public.discount_condition_product_collection USING btree (condition_id);
 4   DROP INDEX public."IDX_a1c4f9cfb599ad1f0db39cadd5";
       public            postgres    false    295                       1259    48373    IDX_a21a7ffbe420d492eb46c305fe    INDEX     b   CREATE INDEX "IDX_a21a7ffbe420d492eb46c305fe" ON public.discount_regions USING btree (region_id);
 4   DROP INDEX public."IDX_a21a7ffbe420d492eb46c305fe";
       public            postgres    false    260            �           1259    48292    IDX_a421bf4588d0004a9b0c0fe84f    INDEX     n   CREATE UNIQUE INDEX "IDX_a421bf4588d0004a9b0c0fe84f" ON public.idempotency_key USING btree (idempotency_key);
 4   DROP INDEX public."IDX_a421bf4588d0004a9b0c0fe84f";
       public            postgres    false    251            V           1259    49037    IDX_a52e234f729db789cf473297a5    INDEX     [   CREATE INDEX "IDX_a52e234f729db789cf473297a5" ON public.fulfillment USING btree (swap_id);
 4   DROP INDEX public."IDX_a52e234f729db789cf473297a5";
       public            postgres    false    219            q           1259    49319    IDX_aa16f61348be02dd07ce3fc54e    INDEX     }   CREATE UNIQUE INDEX "IDX_aa16f61348be02dd07ce3fc54e" ON public.product_variant USING btree (upc) WHERE (deleted_at IS NULL);
 4   DROP INDEX public."IDX_aa16f61348be02dd07ce3fc54e";
       public            postgres    false    228    228            �           1259    49871    IDX_aac4855eadda71aa1e4b6d7684    INDEX     w   CREATE INDEX "IDX_aac4855eadda71aa1e4b6d7684" ON public.payment USING btree (cart_id) WHERE (canceled_at IS NOT NULL);
 4   DROP INDEX public."IDX_aac4855eadda71aa1e4b6d7684";
       public            postgres    false    238    238            �           1259    49017    IDX_ac2c280de3701b2d66f6817f76    INDEX     X   CREATE INDEX "IDX_ac2c280de3701b2d66f6817f76" ON public.discount USING btree (rule_id);
 4   DROP INDEX public."IDX_ac2c280de3701b2d66f6817f76";
       public            postgres    false    236            `           1259    49008    IDX_b1aac8314662fa6b25569a575b    INDEX     Y   CREATE INDEX "IDX_b1aac8314662fa6b25569a575b" ON public.country USING btree (region_id);
 4   DROP INDEX public."IDX_b1aac8314662fa6b25569a575b";
       public            postgres    false    223            &           1259    48417    IDX_b4f4b63d1736689b7008980394    INDEX     a   CREATE INDEX "IDX_b4f4b63d1736689b7008980394" ON public.store_currencies USING btree (store_id);
 4   DROP INDEX public."IDX_b4f4b63d1736689b7008980394";
       public            postgres    false    265            r           1259    49318    IDX_b5b6225539ee8501082fbc0714    INDEX     }   CREATE UNIQUE INDEX "IDX_b5b6225539ee8501082fbc0714" ON public.product_variant USING btree (ean) WHERE (deleted_at IS NULL);
 4   DROP INDEX public."IDX_b5b6225539ee8501082fbc0714";
       public            postgres    false    228    228            >           1259    49070    IDX_b5df0f53a74b9d0c0a2b652c88    INDEX     `   CREATE INDEX "IDX_b5df0f53a74b9d0c0a2b652c88" ON public.notification USING btree (customer_id);
 4   DROP INDEX public."IDX_b5df0f53a74b9d0c0a2b652c88";
       public            postgres    false    272            �           1259    49024    IDX_b6bcf8c3903097b84e85154eed    INDEX     [   CREATE INDEX "IDX_b6bcf8c3903097b84e85154eed" ON public.gift_card USING btree (region_id);
 4   DROP INDEX public."IDX_b6bcf8c3903097b84e85154eed";
       public            postgres    false    239            �           1259    49377    IDX_ba8de19442d86957a3aa3b5006    INDEX     v   CREATE UNIQUE INDEX "IDX_ba8de19442d86957a3aa3b5006" ON public."user" USING btree (email) WHERE (deleted_at IS NULL);
 4   DROP INDEX public."IDX_ba8de19442d86957a3aa3b5006";
       public            postgres    false    255    255            �           1259    49031    IDX_bad82d7bff2b08b87094bfac3d    INDEX     V   CREATE INDEX "IDX_bad82d7bff2b08b87094bfac3d" ON public.return USING btree (swap_id);
 4   DROP INDEX public."IDX_bad82d7bff2b08b87094bfac3d";
       public            postgres    false    242                       1259    48364    IDX_be66106a673b88a81c603abe7e    INDEX     i   CREATE INDEX "IDX_be66106a673b88a81c603abe7e" ON public.discount_rule_products USING btree (product_id);
 4   DROP INDEX public."IDX_be66106a673b88a81c603abe7e";
       public            postgres    false    259            �           1259    49791    IDX_be9aea2ccf3567007b6227da4d    INDEX     d   CREATE INDEX "IDX_be9aea2ccf3567007b6227da4d" ON public.line_item_adjustment USING btree (item_id);
 4   DROP INDEX public."IDX_be9aea2ccf3567007b6227da4d";
       public            postgres    false    301            W           1259    49039    IDX_beb35a6de60a6c4f91d5ae57e4    INDEX     _   CREATE INDEX "IDX_beb35a6de60a6c4f91d5ae57e4" ON public.fulfillment USING btree (provider_id);
 4   DROP INDEX public."IDX_beb35a6de60a6c4f91d5ae57e4";
       public            postgres    false    219            �           1259    49793    IDX_bf701b88d2041392a288785ada    INDEX     �   CREATE UNIQUE INDEX "IDX_bf701b88d2041392a288785ada" ON public.line_item_adjustment USING btree (discount_id, item_id) WHERE (discount_id IS NOT NULL);
 4   DROP INDEX public."IDX_bf701b88d2041392a288785ada";
       public            postgres    false    301    301    301            �           1259    49020    IDX_c17aff091441b7c25ec3d68d36    INDEX     W   CREATE INDEX "IDX_c17aff091441b7c25ec3d68d36" ON public.payment USING btree (swap_id);
 4   DROP INDEX public."IDX_c17aff091441b7c25ec3d68d36";
       public            postgres    false    238            8           1259    48921    IDX_c2c0f3edf39515bd15432afe6e    INDEX     _   CREATE INDEX "IDX_c2c0f3edf39515bd15432afe6e" ON public.claim_item_tags USING btree (item_id);
 4   DROP INDEX public."IDX_c2c0f3edf39515bd15432afe6e";
       public            postgres    false    270            �           1259    48300    IDX_c49c061b1a686843c5d673506f    INDEX     e   CREATE UNIQUE INDEX "IDX_c49c061b1a686843c5d673506f" ON public.oauth USING btree (application_name);
 4   DROP INDEX public."IDX_c49c061b1a686843c5d673506f";
       public            postgres    false    252            �           1259    49578    IDX_c4c3a5225a7a1f0af782c40abc    INDEX     }   CREATE UNIQUE INDEX "IDX_c4c3a5225a7a1f0af782c40abc" ON public.customer_group USING btree (name) WHERE (deleted_at IS NULL);
 4   DROP INDEX public."IDX_c4c3a5225a7a1f0af782c40abc";
       public            postgres    false    291    291            �           1259    49768    IDX_c5516f550433c9b1c2630d787a    INDEX     t   CREATE INDEX "IDX_c5516f550433c9b1c2630d787a" ON public.price_list_customer_groups USING btree (customer_group_id);
 4   DROP INDEX public."IDX_c5516f550433c9b1c2630d787a";
       public            postgres    false    300                       1259    48345    IDX_c556e14eff4d6f03db593df955    INDEX     n   CREATE INDEX "IDX_c556e14eff4d6f03db593df955" ON public.region_fulfillment_providers USING btree (region_id);
 4   DROP INDEX public."IDX_c556e14eff4d6f03db593df955";
       public            postgres    false    257            �           1259    49673    IDX_c759f53b2e48e8cfb50638fe4e    INDEX     m   CREATE INDEX "IDX_c759f53b2e48e8cfb50638fe4e" ON public.discount_condition_product USING btree (product_id);
 4   DROP INDEX public."IDX_c759f53b2e48e8cfb50638fe4e";
       public            postgres    false    298            �           1259    49011    IDX_c951439af4c98bf2bd7fb8726c    INDEX     b   CREATE INDEX "IDX_c951439af4c98bf2bd7fb8726c" ON public.shipping_option USING btree (profile_id);
 4   DROP INDEX public."IDX_c951439af4c98bf2bd7fb8726c";
       public            postgres    false    232            �           1259    49044    IDX_c99a206eb11ad45f6b7f04f2dc    INDEX     W   CREATE INDEX "IDX_c99a206eb11ad45f6b7f04f2dc" ON public."order" USING btree (cart_id);
 4   DROP INDEX public."IDX_c99a206eb11ad45f6b7f04f2dc";
       public            postgres    false    248            s           1259    49016    IDX_ca67dd080aac5ecf99609960cd    INDEX     b   CREATE INDEX "IDX_ca67dd080aac5ecf99609960cd" ON public.product_variant USING btree (product_id);
 4   DROP INDEX public."IDX_ca67dd080aac5ecf99609960cd";
       public            postgres    false    228            �           1259    49045    IDX_cd7812c96209c5bdd48a6b858b    INDEX     [   CREATE INDEX "IDX_cd7812c96209c5bdd48a6b858b" ON public."order" USING btree (customer_id);
 4   DROP INDEX public."IDX_cd7812c96209c5bdd48a6b858b";
       public            postgres    false    248            �           1259    49027    IDX_ced15a9a695d2b5db9dabce763    INDEX     `   CREATE INDEX "IDX_ced15a9a695d2b5db9dabce763" ON public.cart USING btree (shipping_address_id);
 4   DROP INDEX public."IDX_ced15a9a695d2b5db9dabce763";
       public            postgres    false    240            �           1259    49315    IDX_cf9cc6c3f2e6414b992223fff1    INDEX     x   CREATE UNIQUE INDEX "IDX_cf9cc6c3f2e6414b992223fff1" ON public.product USING btree (handle) WHERE (deleted_at IS NULL);
 4   DROP INDEX public."IDX_cf9cc6c3f2e6414b992223fff1";
       public            postgres    false    234    234            �           1259    49019    IDX_d18ad72f2fb7c87f075825b6f8    INDEX     c   CREATE INDEX "IDX_d18ad72f2fb7c87f075825b6f8" ON public.payment_session USING btree (provider_id);
 4   DROP INDEX public."IDX_d18ad72f2fb7c87f075825b6f8";
       public            postgres    false    237            �           1259    49018    IDX_d25ba0787e1510ddc5d442ebcf    INDEX     _   CREATE INDEX "IDX_d25ba0787e1510ddc5d442ebcf" ON public.payment_session USING btree (cart_id);
 4   DROP INDEX public."IDX_d25ba0787e1510ddc5d442ebcf";
       public            postgres    false    237                       1259    48390    IDX_d38047a90f3d42f0be7909e8ae    INDEX     _   CREATE INDEX "IDX_d38047a90f3d42f0be7909e8ae" ON public.cart_gift_cards USING btree (cart_id);
 4   DROP INDEX public."IDX_d38047a90f3d42f0be7909e8ae";
       public            postgres    false    262            �           1259    49033    IDX_d4bd17f918fc6c332b74a368c3    INDEX     W   CREATE INDEX "IDX_d4bd17f918fc6c332b74a368c3" ON public.return USING btree (order_id);
 4   DROP INDEX public."IDX_d4bd17f918fc6c332b74a368c3";
       public            postgres    false    242            X           1259    49036    IDX_d73e55964e0ff2db8f03807d52    INDEX     b   CREATE INDEX "IDX_d73e55964e0ff2db8f03807d52" ON public.fulfillment USING btree (claim_order_id);
 4   DROP INDEX public."IDX_d73e55964e0ff2db8f03807d52";
       public            postgres    false    219            �           1259    48943    IDX_d783a66d1c91c0858752c933e6    INDEX     f   CREATE INDEX "IDX_d783a66d1c91c0858752c933e6" ON public.shipping_method USING btree (claim_order_id);
 4   DROP INDEX public."IDX_d783a66d1c91c0858752c933e6";
       public            postgres    false    241            �           1259    49041    IDX_d7d441b81012f87d4265fa57d2    INDEX     f   CREATE INDEX "IDX_d7d441b81012f87d4265fa57d2" ON public.gift_card_transaction USING btree (order_id);
 4   DROP INDEX public."IDX_d7d441b81012f87d4265fa57d2";
       public            postgres    false    245            �           1259    48086    IDX_d92993a7d554d84571f4eea1d1    INDEX     _   CREATE INDEX "IDX_d92993a7d554d84571f4eea1d1" ON public.shipping_method USING btree (cart_id);
 4   DROP INDEX public."IDX_d92993a7d554d84571f4eea1d1";
       public            postgres    false    241            9           1259    48922    IDX_dc9bbf9fcb9ba458d25d512811    INDEX     ^   CREATE INDEX "IDX_dc9bbf9fcb9ba458d25d512811" ON public.claim_item_tags USING btree (tag_id);
 4   DROP INDEX public."IDX_dc9bbf9fcb9ba458d25d512811";
       public            postgres    false    270            ?           1259    49068    IDX_df1494d263740fcfb1d09a98fc    INDEX     b   CREATE INDEX "IDX_df1494d263740fcfb1d09a98fc" ON public.notification USING btree (resource_type);
 4   DROP INDEX public."IDX_df1494d263740fcfb1d09a98fc";
       public            postgres    false    272            �           1259    49025    IDX_dfc1f02bb0552e79076aa58dbb    INDEX     Z   CREATE INDEX "IDX_dfc1f02bb0552e79076aa58dbb" ON public.gift_card USING btree (order_id);
 4   DROP INDEX public."IDX_dfc1f02bb0552e79076aa58dbb";
       public            postgres    false    239            �           1259    49048    IDX_e1fcce2b18dbcdbe0a5ba9a68b    INDEX     Y   CREATE INDEX "IDX_e1fcce2b18dbcdbe0a5ba9a68b" ON public."order" USING btree (region_id);
 4   DROP INDEX public."IDX_e1fcce2b18dbcdbe0a5ba9a68b";
       public            postgres    false    248            !           1259    48408    IDX_e62ff11e4730bb3adfead979ee    INDEX     a   CREATE INDEX "IDX_e62ff11e4730bb3adfead979ee" ON public.order_gift_cards USING btree (order_id);
 4   DROP INDEX public."IDX_e62ff11e4730bb3adfead979ee";
       public            postgres    false    264            �           1259    49675    IDX_e706deb68f52ab2756119b9e70    INDEX     w   CREATE INDEX "IDX_e706deb68f52ab2756119b9e70" ON public.discount_condition_product_type USING btree (product_type_id);
 4   DROP INDEX public."IDX_e706deb68f52ab2756119b9e70";
       public            postgres    false    297            a           1259    47843    IDX_e78901b1131eaf8203d9b1cb5f    INDEX     \   CREATE UNIQUE INDEX "IDX_e78901b1131eaf8203d9b1cb5f" ON public.country USING btree (iso_2);
 4   DROP INDEX public."IDX_e78901b1131eaf8203d9b1cb5f";
       public            postgres    false    223                       1259    48399    IDX_e7b488cebe333f449398769b2c    INDEX     `   CREATE INDEX "IDX_e7b488cebe333f449398769b2c" ON public.order_discounts USING btree (order_id);
 4   DROP INDEX public."IDX_e7b488cebe333f449398769b2c";
       public            postgres    false    263            Q           1259    49165    IDX_e87cc617a22ef4edce5601edab    INDEX     ^   CREATE INDEX "IDX_e87cc617a22ef4edce5601edab" ON public.draft_order USING btree (display_id);
 4   DROP INDEX public."IDX_e87cc617a22ef4edce5601edab";
       public            postgres    false    278            @           1259    49069    IDX_ea6a358d9ce41c16499aae55f9    INDEX     `   CREATE INDEX "IDX_ea6a358d9ce41c16499aae55f9" ON public.notification USING btree (resource_id);
 4   DROP INDEX public."IDX_ea6a358d9ce41c16499aae55f9";
       public            postgres    false    272            �           1259    49023    IDX_ea94f42b6c88e9191c3649d752    INDEX     [   CREATE INDEX "IDX_ea94f42b6c88e9191c3649d752" ON public.payment USING btree (provider_id);
 4   DROP INDEX public."IDX_ea94f42b6c88e9191c3649d752";
       public            postgres    false    238            ,           1259    48847    IDX_ec10c54769877840c132260e4a    INDEX     W   CREATE INDEX "IDX_ec10c54769877840c132260e4a" ON public.claim_tag USING btree (value);
 4   DROP INDEX public."IDX_ec10c54769877840c132260e4a";
       public            postgres    false    267            }           1259    49515    IDX_ece65a774192b34253abc4cd67    INDEX     e   CREATE INDEX "IDX_ece65a774192b34253abc4cd67" ON public.product_type_tax_rate USING btree (rate_id);
 4   DROP INDEX public."IDX_ece65a774192b34253abc4cd67";
       public            postgres    false    289            �           1259    49042    IDX_eec9d9af4ca098e19ea6b499ea    INDEX     W   CREATE INDEX "IDX_eec9d9af4ca098e19ea6b499ea" ON public.refund USING btree (order_id);
 4   DROP INDEX public."IDX_eec9d9af4ca098e19ea6b499ea";
       public            postgres    false    246            �           1259    49626    IDX_efff700651718e452ca9580a62    INDEX     k   CREATE INDEX "IDX_efff700651718e452ca9580a62" ON public.discount_condition USING btree (discount_rule_id);
 4   DROP INDEX public."IDX_efff700651718e452ca9580a62";
       public            postgres    false    293            �           1259    49672    IDX_f05132301e95bdab4ba1cf29a2    INDEX     o   CREATE INDEX "IDX_f05132301e95bdab4ba1cf29a2" ON public.discount_condition_product USING btree (condition_id);
 4   DROP INDEX public."IDX_f05132301e95bdab4ba1cf29a2";
       public            postgres    false    298            Y           1259    49038    IDX_f129acc85e346a10eed12b86fc    INDEX     \   CREATE INDEX "IDX_f129acc85e346a10eed12b86fc" ON public.fulfillment USING btree (order_id);
 4   DROP INDEX public."IDX_f129acc85e346a10eed12b86fc";
       public            postgres    false    219            "           1259    48409    IDX_f2bb9f71e95b315eb24b2b84cb    INDEX     e   CREATE INDEX "IDX_f2bb9f71e95b315eb24b2b84cb" ON public.order_gift_cards USING btree (gift_card_id);
 4   DROP INDEX public."IDX_f2bb9f71e95b315eb24b2b84cb";
       public            postgres    false    264                       1259    48372    IDX_f4194aa81073f3fab8aa86906f    INDEX     d   CREATE INDEX "IDX_f4194aa81073f3fab8aa86906f" ON public.discount_regions USING btree (discount_id);
 4   DROP INDEX public."IDX_f4194aa81073f3fab8aa86906f";
       public            postgres    false    260            5           1259    49034    IDX_f49e3974465d3c3a33d449d3f3    INDEX     \   CREATE INDEX "IDX_f49e3974465d3c3a33d449d3f3" ON public.claim_order USING btree (order_id);
 4   DROP INDEX public."IDX_f49e3974465d3c3a33d449d3f3";
       public            postgres    false    269            �           1259    49022    IDX_f5221735ace059250daac9d980    INDEX     X   CREATE INDEX "IDX_f5221735ace059250daac9d980" ON public.payment USING btree (order_id);
 4   DROP INDEX public."IDX_f5221735ace059250daac9d980";
       public            postgres    false    238            �           1259    49320    IDX_f65bf52e2239ace276ece2b2f4    INDEX     w   CREATE UNIQUE INDEX "IDX_f65bf52e2239ace276ece2b2f4" ON public.discount USING btree (code) WHERE (deleted_at IS NULL);
 4   DROP INDEX public."IDX_f65bf52e2239ace276ece2b2f4";
       public            postgres    false    236    236            �           1259    49518    IDX_f672727ab020df6c50fb64c1a7    INDEX     l   CREATE INDEX "IDX_f672727ab020df6c50fb64c1a7" ON public.shipping_tax_rate USING btree (shipping_option_id);
 4   DROP INDEX public."IDX_f672727ab020df6c50fb64c1a7";
       public            postgres    false    290            ^           1259    49345    IDX_f74980b411cf94af523a72af7d    INDEX     Z   CREATE INDEX "IDX_f74980b411cf94af523a72af7d" ON public.note USING btree (resource_type);
 4   DROP INDEX public."IDX_f74980b411cf94af523a72af7d";
       public            postgres    false    281            �           1259    48087    IDX_fb94fa8d5ca940daa2a58139f8    INDEX     _   CREATE INDEX "IDX_fb94fa8d5ca940daa2a58139f8" ON public.shipping_method USING btree (swap_id);
 4   DROP INDEX public."IDX_fb94fa8d5ca940daa2a58139f8";
       public            postgres    false    241            �           1259    49676    IDX_fbb2499551ed074526f3ee3624    INDEX     s   CREATE INDEX "IDX_fbb2499551ed074526f3ee3624" ON public.discount_condition_product_tag USING btree (condition_id);
 4   DROP INDEX public."IDX_fbb2499551ed074526f3ee3624";
       public            postgres    false    296            �           1259    48084    IDX_fc963e94854bff2714ca84cd19    INDEX     j   CREATE INDEX "IDX_fc963e94854bff2714ca84cd19" ON public.shipping_method USING btree (shipping_option_id);
 4   DROP INDEX public."IDX_fc963e94854bff2714ca84cd19";
       public            postgres    false    241            �           1259    50279 (   IDX_id_publishable_api_key_sales_channel    INDEX     v   CREATE INDEX "IDX_id_publishable_api_key_sales_channel" ON public.publishable_api_key_sales_channel USING btree (id);
 >   DROP INDEX public."IDX_id_publishable_api_key_sales_channel";
       public            postgres    false    311            k           1259    50038    IDX_money_amount_currency_code    INDEX     b   CREATE INDEX "IDX_money_amount_currency_code" ON public.money_amount USING btree (currency_code);
 4   DROP INDEX public."IDX_money_amount_currency_code";
       public            postgres    false    227            �           1259    50039    IDX_order_currency_code    INDEX     V   CREATE INDEX "IDX_order_currency_code" ON public."order" USING btree (currency_code);
 -   DROP INDEX public."IDX_order_currency_code";
       public            postgres    false    248            �           1259    50037    IDX_order_edit_order_id    INDEX     T   CREATE INDEX "IDX_order_edit_order_id" ON public.order_edit USING btree (order_id);
 -   DROP INDEX public."IDX_order_edit_order_id";
       public            postgres    false    306            �           1259    50025 $   IDX_order_edit_payment_collection_id    INDEX     n   CREATE INDEX "IDX_order_edit_payment_collection_id" ON public.order_edit USING btree (payment_collection_id);
 :   DROP INDEX public."IDX_order_edit_payment_collection_id";
       public            postgres    false    306            �           1259    49981 $   IDX_payment_collection_currency_code    INDEX     �   CREATE INDEX "IDX_payment_collection_currency_code" ON public.payment_collection USING btree (currency_code) WHERE (deleted_at IS NULL);
 :   DROP INDEX public."IDX_payment_collection_currency_code";
       public            postgres    false    307    307            �           1259    50013 5   IDX_payment_collection_payments_payment_collection_id    INDEX     �   CREATE INDEX "IDX_payment_collection_payments_payment_collection_id" ON public.payment_collection_payments USING btree (payment_collection_id);
 K   DROP INDEX public."IDX_payment_collection_payments_payment_collection_id";
       public            postgres    false    309            �           1259    50014 *   IDX_payment_collection_payments_payment_id    INDEX     z   CREATE INDEX "IDX_payment_collection_payments_payment_id" ON public.payment_collection_payments USING btree (payment_id);
 @   DROP INDEX public."IDX_payment_collection_payments_payment_id";
       public            postgres    false    309            �           1259    49980     IDX_payment_collection_region_id    INDEX     �   CREATE INDEX "IDX_payment_collection_region_id" ON public.payment_collection USING btree (region_id) WHERE (deleted_at IS NULL);
 6   DROP INDEX public."IDX_payment_collection_region_id";
       public            postgres    false    307    307            �           1259    49994 5   IDX_payment_collection_sessions_payment_collection_id    INDEX     �   CREATE INDEX "IDX_payment_collection_sessions_payment_collection_id" ON public.payment_collection_sessions USING btree (payment_collection_id);
 K   DROP INDEX public."IDX_payment_collection_sessions_payment_collection_id";
       public            postgres    false    308            �           1259    49995 2   IDX_payment_collection_sessions_payment_session_id    INDEX     �   CREATE INDEX "IDX_payment_collection_sessions_payment_session_id" ON public.payment_collection_sessions USING btree (payment_session_id);
 H   DROP INDEX public."IDX_payment_collection_sessions_payment_session_id";
       public            postgres    false    308            �           1259    50040    IDX_payment_currency_code    INDEX     X   CREATE INDEX "IDX_payment_currency_code" ON public.payment USING btree (currency_code);
 /   DROP INDEX public."IDX_payment_currency_code";
       public            postgres    false    238            �           1259    50129    IDX_pcp_product_category_id    INDEX     q   CREATE INDEX "IDX_pcp_product_category_id" ON public.product_category_product USING btree (product_category_id);
 1   DROP INDEX public."IDX_pcp_product_category_id";
       public            postgres    false    316            �           1259    50130    IDX_pcp_product_id    INDEX     _   CREATE INDEX "IDX_pcp_product_id" ON public.product_category_product USING btree (product_id);
 (   DROP INDEX public."IDX_pcp_product_id";
       public            postgres    false    316            �           1259    50148 "   IDX_product_category_active_public    INDEX     �   CREATE INDEX "IDX_product_category_active_public" ON public.product_category USING btree (parent_category_id, is_active, is_internal) WHERE ((is_active IS TRUE) AND (is_internal IS FALSE));
 8   DROP INDEX public."IDX_product_category_active_public";
       public            postgres    false    315    315    315    315    315            �           1259    50147    IDX_product_category_handle    INDEX     c   CREATE UNIQUE INDEX "IDX_product_category_handle" ON public.product_category USING btree (handle);
 1   DROP INDEX public."IDX_product_category_handle";
       public            postgres    false    315            �           1259    50109    IDX_product_category_path    INDEX     Y   CREATE INDEX "IDX_product_category_path" ON public.product_category USING btree (mpath);
 /   DROP INDEX public."IDX_product_category_path";
       public            postgres    false    315            �           1259    50133 4   IDX_product_variant_inventory_item_inventory_item_id    INDEX     �   CREATE INDEX "IDX_product_variant_inventory_item_inventory_item_id" ON public.product_variant_inventory_item USING btree (inventory_item_id) WHERE (deleted_at IS NULL);
 J   DROP INDEX public."IDX_product_variant_inventory_item_inventory_item_id";
       public            postgres    false    314    314            �           1259    50134 -   IDX_product_variant_inventory_item_variant_id    INDEX     �   CREATE INDEX "IDX_product_variant_inventory_item_variant_id" ON public.product_variant_inventory_item USING btree (variant_id) WHERE (deleted_at IS NULL);
 C   DROP INDEX public."IDX_product_variant_inventory_item_variant_id";
       public            postgres    false    314    314            �           1259    50031    IDX_refund_payment_id    INDEX     P   CREATE INDEX "IDX_refund_payment_id" ON public.refund USING btree (payment_id);
 +   DROP INDEX public."IDX_refund_payment_id";
       public            postgres    false    246            f           1259    50041    IDX_region_currency_code    INDEX     V   CREATE INDEX "IDX_region_currency_code" ON public.region USING btree (currency_code);
 .   DROP INDEX public."IDX_region_currency_code";
       public            postgres    false    225            Z           1259    50267    IDX_return_reason_value    INDEX     v   CREATE UNIQUE INDEX "IDX_return_reason_value" ON public.return_reason USING btree (value) WHERE (deleted_at IS NULL);
 -   DROP INDEX public."IDX_return_reason_value";
       public            postgres    false    280    280            �           1259    50132 &   IDX_sales_channel_location_location_id    INDEX     �   CREATE INDEX "IDX_sales_channel_location_location_id" ON public.sales_channel_location USING btree (location_id) WHERE (deleted_at IS NULL);
 <   DROP INDEX public."IDX_sales_channel_location_location_id";
       public            postgres    false    313    313            �           1259    50131 +   IDX_sales_channel_location_sales_channel_id    INDEX     �   CREATE INDEX "IDX_sales_channel_location_sales_channel_id" ON public.sales_channel_location USING btree (sales_channel_id) WHERE (deleted_at IS NULL);
 A   DROP INDEX public."IDX_sales_channel_location_sales_channel_id";
       public            postgres    false    313    313            �           1259    50282 1   IDX_unique_email_for_guests_and_customer_accounts    INDEX     �   CREATE UNIQUE INDEX "IDX_unique_email_for_guests_and_customer_accounts" ON public.customer USING btree (email, has_account) WHERE (deleted_at IS NULL);
 G   DROP INDEX public."IDX_unique_email_for_guests_and_customer_accounts";
       public            postgres    false    249    249    249            �           1259    50128 '   IDX_upcp_product_id_product_category_id    INDEX     �   CREATE UNIQUE INDEX "IDX_upcp_product_id_product_category_id" ON public.product_category_product USING btree (product_category_id, product_id);
 =   DROP INDEX public."IDX_upcp_product_id_product_category_id";
       public            postgres    false    316    316            �           1259    50112 "   UniqPaymentSessionCartIdProviderId    INDEX     �   CREATE UNIQUE INDEX "UniqPaymentSessionCartIdProviderId" ON public.payment_session USING btree (cart_id, provider_id) WHERE (cart_id IS NOT NULL);
 8   DROP INDEX public."UniqPaymentSessionCartIdProviderId";
       public            postgres    false    237    237    237            �           1259    50137    UniqProductCategoryParentIdRank    INDEX     y   CREATE UNIQUE INDEX "UniqProductCategoryParentIdRank" ON public.product_category USING btree (parent_category_id, rank);
 5   DROP INDEX public."UniqProductCategoryParentIdRank";
       public            postgres    false    315    315            �           1259    49870    UniquePaymentActive    INDEX     o   CREATE UNIQUE INDEX "UniquePaymentActive" ON public.payment USING btree (cart_id) WHERE (canceled_at IS NULL);
 )   DROP INDEX public."UniquePaymentActive";
       public            postgres    false    238    238            F           1259    50238    idx_gin_product_collection    INDEX     �   CREATE INDEX idx_gin_product_collection ON public.product_collection USING gin (title public.gin_trgm_ops) WHERE (deleted_at IS NULL);
 .   DROP INDEX public.idx_gin_product_collection;
       public            postgres    false    273    2    2    2    2    2    2    2    2    2    2    2    2    273            �           1259    50235    idx_gin_product_description    INDEX     �   CREATE INDEX idx_gin_product_description ON public.product USING gin (description public.gin_trgm_ops) WHERE (deleted_at IS NULL);
 /   DROP INDEX public.idx_gin_product_description;
       public            postgres    false    234    234    2    2    2    2    2    2    2    2    2    2    2    2            �           1259    50234    idx_gin_product_title    INDEX     w   CREATE INDEX idx_gin_product_title ON public.product USING gin (title public.gin_trgm_ops) WHERE (deleted_at IS NULL);
 )   DROP INDEX public.idx_gin_product_title;
       public            postgres    false    2    2    2    2    2    2    2    2    2    2    2    2    234    234            v           1259    50237    idx_gin_product_variant_sku    INDEX     �   CREATE INDEX idx_gin_product_variant_sku ON public.product_variant USING gin (sku public.gin_trgm_ops) WHERE (deleted_at IS NULL);
 /   DROP INDEX public.idx_gin_product_variant_sku;
       public            postgres    false    228    228    2    2    2    2    2    2    2    2    2    2    2    2            w           1259    50236    idx_gin_product_variant_title    INDEX     �   CREATE INDEX idx_gin_product_variant_title ON public.product_variant USING gin (title public.gin_trgm_ops) WHERE (deleted_at IS NULL);
 1   DROP INDEX public.idx_gin_product_variant_title;
       public            postgres    false    228    228    2    2    2    2    2    2    2    2    2    2    2    2            n           1259    50150    idx_money_amount_region_id    INDEX     X   CREATE INDEX idx_money_amount_region_id ON public.money_amount USING btree (region_id);
 .   DROP INDEX public.idx_money_amount_region_id;
       public            postgres    false    227            z           1259    50152 "   idx_product_option_value_option_id    INDEX     h   CREATE INDEX idx_product_option_value_option_id ON public.product_option_value USING btree (option_id);
 6   DROP INDEX public.idx_product_option_value_option_id;
       public            postgres    false    229            {           1259    50151 #   idx_product_option_value_variant_id    INDEX     j   CREATE INDEX idx_product_option_value_variant_id ON public.product_option_value USING btree (variant_id);
 7   DROP INDEX public.idx_product_option_value_variant_id;
       public            postgres    false    229            �           1259    50256 '   idx_product_shipping_profile_product_id    INDEX     r   CREATE INDEX idx_product_shipping_profile_product_id ON public.product_shipping_profile USING btree (product_id);
 ;   DROP INDEX public.idx_product_shipping_profile_product_id;
       public            postgres    false    317            �           1259    50257 '   idx_product_shipping_profile_profile_id    INDEX     r   CREATE INDEX idx_product_shipping_profile_profile_id ON public.product_shipping_profile USING btree (profile_id);
 ;   DROP INDEX public.idx_product_shipping_profile_profile_id;
       public            postgres    false    317            �           1259    50255 9   idx_product_shipping_profile_profile_id_product_id_unique    INDEX     �   CREATE UNIQUE INDEX idx_product_shipping_profile_profile_id_product_id_unique ON public.product_shipping_profile USING btree (profile_id, product_id);
 M   DROP INDEX public.idx_product_shipping_profile_profile_id_product_id_unique;
       public            postgres    false    317    317            �           1259    50277 7   idx_product_variant_money_amount_money_amount_id_unique    INDEX     �   CREATE UNIQUE INDEX idx_product_variant_money_amount_money_amount_id_unique ON public.product_variant_money_amount USING btree (money_amount_id);
 K   DROP INDEX public.idx_product_variant_money_amount_money_amount_id_unique;
       public            postgres    false    319            �           1259    50278 +   idx_product_variant_money_amount_variant_id    INDEX     z   CREATE INDEX idx_product_variant_money_amount_variant_id ON public.product_variant_money_amount USING btree (variant_id);
 ?   DROP INDEX public.idx_product_variant_money_amount_variant_id;
       public            postgres    false    319            �           1259    49955 (   unique_li_original_item_id_order_edit_id    INDEX     �   CREATE UNIQUE INDEX unique_li_original_item_id_order_edit_id ON public.line_item USING btree (order_edit_id, original_item_id) WHERE ((original_item_id IS NOT NULL) AND (order_edit_id IS NOT NULL));
 <   DROP INDEX public.unique_li_original_item_id_order_edit_id;
       public            postgres    false    244    244    244    244                       2606    48499 :   shipping_option_requirement FK_012a62ba743e427b5ebe9dee18e    FK CONSTRAINT     �   ALTER TABLE ONLY public.shipping_option_requirement
    ADD CONSTRAINT "FK_012a62ba743e427b5ebe9dee18e" FOREIGN KEY (shipping_option_id) REFERENCES public.shipping_option(id);
 f   ALTER TABLE ONLY public.shipping_option_requirement DROP CONSTRAINT "FK_012a62ba743e427b5ebe9dee18e";
       public          postgres    false    231    232    3973            v           2606    49707 =   discount_condition_product_tag FK_01486cc9dc6b36bf658685535f6    FK CONSTRAINT     �   ALTER TABLE ONLY public.discount_condition_product_tag
    ADD CONSTRAINT "FK_01486cc9dc6b36bf658685535f6" FOREIGN KEY (product_tag_id) REFERENCES public.product_tag(id) ON DELETE CASCADE;
 i   ALTER TABLE ONLY public.discount_condition_product_tag DROP CONSTRAINT "FK_01486cc9dc6b36bf658685535f6";
       public          postgres    false    274    296    4168            W           2606    48981 *   claim_order FK_017d58bf8260c6e1a2588d258e2    FK CONSTRAINT     �   ALTER TABLE ONLY public.claim_order
    ADD CONSTRAINT "FK_017d58bf8260c6e1a2588d258e2" FOREIGN KEY (shipping_address_id) REFERENCES public.address(id);
 V   ALTER TABLE ONLY public.claim_order DROP CONSTRAINT "FK_017d58bf8260c6e1a2588d258e2";
       public          postgres    false    4081    250    269            [           2606    49081 +   notification FK_0425c2423e2ce9fdfd5c23761d9    FK CONSTRAINT     �   ALTER TABLE ONLY public.notification
    ADD CONSTRAINT "FK_0425c2423e2ce9fdfd5c23761d9" FOREIGN KEY (provider_id) REFERENCES public.notification_provider(id);
 W   ALTER TABLE ONLY public.notification DROP CONSTRAINT "FK_0425c2423e2ce9fdfd5c23761d9";
       public          postgres    false    271    4157    272            K           2606    48794 .   cart_gift_cards FK_0fb38b6d167793192bc126d835e    FK CONSTRAINT     �   ALTER TABLE ONLY public.cart_gift_cards
    ADD CONSTRAINT "FK_0fb38b6d167793192bc126d835e" FOREIGN KEY (gift_card_id) REFERENCES public.gift_card(id) ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public.cart_gift_cards DROP CONSTRAINT "FK_0fb38b6d167793192bc126d835e";
       public          postgres    false    262    4009    239            M           2606    48804 .   order_discounts FK_0fc1ec4e3db9001ad60c19daf16    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_discounts
    ADD CONSTRAINT "FK_0fc1ec4e3db9001ad60c19daf16" FOREIGN KEY (discount_id) REFERENCES public.discount(id) ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public.order_discounts DROP CONSTRAINT "FK_0fc1ec4e3db9001ad60c19daf16";
       public          postgres    false    263    3986    236            '           2606    48991 (   line_item FK_118e3c48f09a7728f41023c94ef    FK CONSTRAINT     �   ALTER TABLE ONLY public.line_item
    ADD CONSTRAINT "FK_118e3c48f09a7728f41023c94ef" FOREIGN KEY (claim_order_id) REFERENCES public.claim_order(id);
 T   ALTER TABLE ONLY public.line_item DROP CONSTRAINT "FK_118e3c48f09a7728f41023c94ef";
       public          postgres    false    4151    244    269            2           2606    48694 $   order FK_19b0c6293443d1b464f604c3316    FK CONSTRAINT     �   ALTER TABLE ONLY public."order"
    ADD CONSTRAINT "FK_19b0c6293443d1b464f604c3316" FOREIGN KEY (shipping_address_id) REFERENCES public.address(id);
 R   ALTER TABLE ONLY public."order" DROP CONSTRAINT "FK_19b0c6293443d1b464f604c3316";
       public          postgres    false    4081    250    248            i           2606    49539 /   product_tax_rate FK_1d04aebeabb6a89f87e536a124d    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_tax_rate
    ADD CONSTRAINT "FK_1d04aebeabb6a89f87e536a124d" FOREIGN KEY (product_id) REFERENCES public.product(id) ON DELETE CASCADE;
 [   ALTER TABLE ONLY public.product_tax_rate DROP CONSTRAINT "FK_1d04aebeabb6a89f87e536a124d";
       public          postgres    false    288    234    3978                       2606    48609 .   shipping_method FK_1d9ad62038998c3a85c77a53cfb    FK CONSTRAINT     �   ALTER TABLE ONLY public.shipping_method
    ADD CONSTRAINT "FK_1d9ad62038998c3a85c77a53cfb" FOREIGN KEY (return_id) REFERENCES public.return(id);
 Z   ALTER TABLE ONLY public.shipping_method DROP CONSTRAINT "FK_1d9ad62038998c3a85c77a53cfb";
       public          postgres    false    242    4033    241            �           2606    49940 )   order_edit FK_1f3a251488a91510f57e1bf93cd    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_edit
    ADD CONSTRAINT "FK_1f3a251488a91510f57e1bf93cd" FOREIGN KEY (order_id) REFERENCES public."order"(id);
 U   ALTER TABLE ONLY public.order_edit DROP CONSTRAINT "FK_1f3a251488a91510f57e1bf93cd";
       public          postgres    false    248    306    4068            ^           2606    49133 +   product_tags FK_21683a063fe82dafdf681ecc9c4    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_tags
    ADD CONSTRAINT "FK_21683a063fe82dafdf681ecc9c4" FOREIGN KEY (product_tag_id) REFERENCES public.product_tag(id) ON DELETE CASCADE;
 W   ALTER TABLE ONLY public.product_tags DROP CONSTRAINT "FK_21683a063fe82dafdf681ecc9c4";
       public          postgres    false    4168    274    276            S           2606    48946 *   claim_image FK_21cbfedd83d736d86f4c6f4ce56    FK CONSTRAINT     �   ALTER TABLE ONLY public.claim_image
    ADD CONSTRAINT "FK_21cbfedd83d736d86f4c6f4ce56" FOREIGN KEY (claim_item_id) REFERENCES public.claim_item(id);
 V   ALTER TABLE ONLY public.claim_image DROP CONSTRAINT "FK_21cbfedd83d736d86f4c6f4ce56";
       public          postgres    false    268    4147    266            C           2606    48754 -   product_images FK_2212515ba306c79f42c46a99db7    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_images
    ADD CONSTRAINT "FK_2212515ba306c79f42c46a99db7" FOREIGN KEY (image_id) REFERENCES public.image(id) ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.product_images DROP CONSTRAINT "FK_2212515ba306c79f42c46a99db7";
       public          postgres    false    226    3946    258            c           2606    49321 ,   return_reason FK_2250c5d9e975987ab212f61a657    FK CONSTRAINT     �   ALTER TABLE ONLY public.return_reason
    ADD CONSTRAINT "FK_2250c5d9e975987ab212f61a657" FOREIGN KEY (parent_return_reason_id) REFERENCES public.return_reason(id);
 X   ALTER TABLE ONLY public.return_reason DROP CONSTRAINT "FK_2250c5d9e975987ab212f61a657";
       public          postgres    false    4188    280    280                       2606    48529 '   discount FK_2250c5d9e975987ab212f61a663    FK CONSTRAINT     �   ALTER TABLE ONLY public.discount
    ADD CONSTRAINT "FK_2250c5d9e975987ab212f61a663" FOREIGN KEY (parent_discount_id) REFERENCES public.discount(id);
 S   ALTER TABLE ONLY public.discount DROP CONSTRAINT "FK_2250c5d9e975987ab212f61a663";
       public          postgres    false    236    236    3986                       2606    48584 #   cart FK_242205c81c1152fab1b6e848470    FK CONSTRAINT     �   ALTER TABLE ONLY public.cart
    ADD CONSTRAINT "FK_242205c81c1152fab1b6e848470" FOREIGN KEY (customer_id) REFERENCES public.customer(id);
 O   ALTER TABLE ONLY public.cart DROP CONSTRAINT "FK_242205c81c1152fab1b6e848470";
       public          postgres    false    249    4076    240            j           2606    49544 /   product_tax_rate FK_2484cf14c437a04586b07e7dddb    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_tax_rate
    ADD CONSTRAINT "FK_2484cf14c437a04586b07e7dddb" FOREIGN KEY (rate_id) REFERENCES public.tax_rate(id) ON DELETE CASCADE;
 [   ALTER TABLE ONLY public.product_tax_rate DROP CONSTRAINT "FK_2484cf14c437a04586b07e7dddb";
       public          postgres    false    288    4203    284            k           2606    49549 4   product_type_tax_rate FK_25a3138bb236f63d9bb6c8ff111    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_type_tax_rate
    ADD CONSTRAINT "FK_25a3138bb236f63d9bb6c8ff111" FOREIGN KEY (product_type_id) REFERENCES public.product_type(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.product_type_tax_rate DROP CONSTRAINT "FK_25a3138bb236f63d9bb6c8ff111";
       public          postgres    false    275    289    4170            (           2606    48644 (   line_item FK_27283ee631862266d0f1c680646    FK CONSTRAINT     �   ALTER TABLE ONLY public.line_item
    ADD CONSTRAINT "FK_27283ee631862266d0f1c680646" FOREIGN KEY (cart_id) REFERENCES public.cart(id);
 T   ALTER TABLE ONLY public.line_item DROP CONSTRAINT "FK_27283ee631862266d0f1c680646";
       public          postgres    false    240    4016    244            ~           2606    49799 3   line_item_adjustment FK_2f41b20a71f30e60471d7e3769c    FK CONSTRAINT     �   ALTER TABLE ONLY public.line_item_adjustment
    ADD CONSTRAINT "FK_2f41b20a71f30e60471d7e3769c" FOREIGN KEY (discount_id) REFERENCES public.discount(id);
 _   ALTER TABLE ONLY public.line_item_adjustment DROP CONSTRAINT "FK_2f41b20a71f30e60471d7e3769c";
       public          postgres    false    301    3986    236            m           2606    49564 0   shipping_tax_rate FK_346e0016cf045b9980747747645    FK CONSTRAINT     �   ALTER TABLE ONLY public.shipping_tax_rate
    ADD CONSTRAINT "FK_346e0016cf045b9980747747645" FOREIGN KEY (rate_id) REFERENCES public.tax_rate(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.shipping_tax_rate DROP CONSTRAINT "FK_346e0016cf045b9980747747645";
       public          postgres    false    290    4203    284            \           2606    49076 +   notification FK_371db513192c083f48ba63c33be    FK CONSTRAINT     �   ALTER TABLE ONLY public.notification
    ADD CONSTRAINT "FK_371db513192c083f48ba63c33be" FOREIGN KEY (parent_id) REFERENCES public.notification(id);
 W   ALTER TABLE ONLY public.notification DROP CONSTRAINT "FK_371db513192c083f48ba63c33be";
       public          postgres    false    272    4162    272            �           2606    49864 4   product_sales_channel FK_37341bad297fe5cca91f921032b    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_sales_channel
    ADD CONSTRAINT "FK_37341bad297fe5cca91f921032b" FOREIGN KEY (sales_channel_id) REFERENCES public.sales_channel(id) ON UPDATE CASCADE ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.product_sales_channel DROP CONSTRAINT "FK_37341bad297fe5cca91f921032b";
       public          postgres    false    304    303    4274            A           2606    48744 ;   region_fulfillment_providers FK_37f361c38a18d12a3fa3158d0cf    FK CONSTRAINT     �   ALTER TABLE ONLY public.region_fulfillment_providers
    ADD CONSTRAINT "FK_37f361c38a18d12a3fa3158d0cf" FOREIGN KEY (provider_id) REFERENCES public.fulfillment_provider(id) ON DELETE CASCADE;
 g   ALTER TABLE ONLY public.region_fulfillment_providers DROP CONSTRAINT "FK_37f361c38a18d12a3fa3158d0cf";
       public          postgres    false    257    217    3923            ?           2606    48734 7   region_payment_providers FK_3a6947180aeec283cd92c59ebb0    FK CONSTRAINT     �   ALTER TABLE ONLY public.region_payment_providers
    ADD CONSTRAINT "FK_3a6947180aeec283cd92c59ebb0" FOREIGN KEY (provider_id) REFERENCES public.payment_provider(id) ON DELETE CASCADE;
 c   ALTER TABLE ONLY public.region_payment_providers DROP CONSTRAINT "FK_3a6947180aeec283cd92c59ebb0";
       public          postgres    false    224    3941    256            �           2606    48459 %   region FK_3bdd5896ec93be2f1c62a3309a5    FK CONSTRAINT     �   ALTER TABLE ONLY public.region
    ADD CONSTRAINT "FK_3bdd5896ec93be2f1c62a3309a5" FOREIGN KEY (currency_code) REFERENCES public.currency(code);
 Q   ALTER TABLE ONLY public.region DROP CONSTRAINT "FK_3bdd5896ec93be2f1c62a3309a5";
       public          postgres    false    225    221    3935            o           2606    49593 7   customer_group_customers FK_3c6412d076292f439269abe1a23    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_group_customers
    ADD CONSTRAINT "FK_3c6412d076292f439269abe1a23" FOREIGN KEY (customer_id) REFERENCES public.customer(id) ON DELETE CASCADE;
 c   ALTER TABLE ONLY public.customer_group_customers DROP CONSTRAINT "FK_3c6412d076292f439269abe1a23";
       public          postgres    false    249    4076    292            )           2606    48654 (   line_item FK_3fa354d8d1233ff81097b2fcb6b    FK CONSTRAINT     �   ALTER TABLE ONLY public.line_item
    ADD CONSTRAINT "FK_3fa354d8d1233ff81097b2fcb6b" FOREIGN KEY (swap_id) REFERENCES public.swap(id);
 T   ALTER TABLE ONLY public.line_item DROP CONSTRAINT "FK_3fa354d8d1233ff81097b2fcb6b";
       public          postgres    false    243    4040    244            .           2606    48664 4   gift_card_transaction FK_3ff5597f1d7e02bba41541846f4    FK CONSTRAINT     �   ALTER TABLE ONLY public.gift_card_transaction
    ADD CONSTRAINT "FK_3ff5597f1d7e02bba41541846f4" FOREIGN KEY (gift_card_id) REFERENCES public.gift_card(id);
 `   ALTER TABLE ONLY public.gift_card_transaction DROP CONSTRAINT "FK_3ff5597f1d7e02bba41541846f4";
       public          postgres    false    239    245    4009            $           2606    48639 #   swap FK_402e8182bc553e082f6380020b4    FK CONSTRAINT     �   ALTER TABLE ONLY public.swap
    ADD CONSTRAINT "FK_402e8182bc553e082f6380020b4" FOREIGN KEY (cart_id) REFERENCES public.cart(id);
 O   ALTER TABLE ONLY public.swap DROP CONSTRAINT "FK_402e8182bc553e082f6380020b4";
       public          postgres    false    4016    240    243            *           2606    48649 (   line_item FK_43a2b24495fe1d9fc2a9c835bc7    FK CONSTRAINT     �   ALTER TABLE ONLY public.line_item
    ADD CONSTRAINT "FK_43a2b24495fe1d9fc2a9c835bc7" FOREIGN KEY (order_id) REFERENCES public."order"(id);
 T   ALTER TABLE ONLY public.line_item DROP CONSTRAINT "FK_43a2b24495fe1d9fc2a9c835bc7";
       public          postgres    false    244    248    4068            d           2606    49416 5   custom_shipping_option FK_44090cb11b06174cbcc667e91ca    FK CONSTRAINT     �   ALTER TABLE ONLY public.custom_shipping_option
    ADD CONSTRAINT "FK_44090cb11b06174cbcc667e91ca" FOREIGN KEY (shipping_option_id) REFERENCES public.shipping_option(id);
 a   ALTER TABLE ONLY public.custom_shipping_option DROP CONSTRAINT "FK_44090cb11b06174cbcc667e91ca";
       public          postgres    false    283    3973    232            �           2606    49925 0   order_item_change FK_44feeebb258bf4cfa4cc4202281    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_item_change
    ADD CONSTRAINT "FK_44feeebb258bf4cfa4cc4202281" FOREIGN KEY (order_edit_id) REFERENCES public.order_edit(id);
 \   ALTER TABLE ONLY public.order_item_change DROP CONSTRAINT "FK_44feeebb258bf4cfa4cc4202281";
       public          postgres    false    305    4290    306                       2606    48544 &   payment FK_4665f17abc1e81dd58330e58542    FK CONSTRAINT     �   ALTER TABLE ONLY public.payment
    ADD CONSTRAINT "FK_4665f17abc1e81dd58330e58542" FOREIGN KEY (cart_id) REFERENCES public.cart(id);
 R   ALTER TABLE ONLY public.payment DROP CONSTRAINT "FK_4665f17abc1e81dd58330e58542";
       public          postgres    false    4016    238    240            b           2606    49217 ,   tracking_link FK_471e9e4c96e02ba209a307db32b    FK CONSTRAINT     �   ALTER TABLE ONLY public.tracking_link
    ADD CONSTRAINT "FK_471e9e4c96e02ba209a307db32b" FOREIGN KEY (fulfillment_id) REFERENCES public.fulfillment(id);
 X   ALTER TABLE ONLY public.tracking_link DROP CONSTRAINT "FK_471e9e4c96e02ba209a307db32b";
       public          postgres    false    219    3931    279                       2606    48579 #   cart FK_484c329f4783be4e18e5e2ff090    FK CONSTRAINT     �   ALTER TABLE ONLY public.cart
    ADD CONSTRAINT "FK_484c329f4783be4e18e5e2ff090" FOREIGN KEY (region_id) REFERENCES public.region(id);
 O   ALTER TABLE ONLY public.cart DROP CONSTRAINT "FK_484c329f4783be4e18e5e2ff090";
       public          postgres    false    3944    225    240            
           2606    49123 &   product FK_49d419fc77d3aed46c835c558ac    FK CONSTRAINT     �   ALTER TABLE ONLY public.product
    ADD CONSTRAINT "FK_49d419fc77d3aed46c835c558ac" FOREIGN KEY (collection_id) REFERENCES public.product_collection(id);
 R   ALTER TABLE ONLY public.product DROP CONSTRAINT "FK_49d419fc77d3aed46c835c558ac";
       public          postgres    false    234    4165    273            r           2606    49687 @   discount_condition_customer_group FK_4d5f98645a67545d8dea42e2eb8    FK CONSTRAINT     �   ALTER TABLE ONLY public.discount_condition_customer_group
    ADD CONSTRAINT "FK_4d5f98645a67545d8dea42e2eb8" FOREIGN KEY (customer_group_id) REFERENCES public.customer_group(id) ON DELETE CASCADE;
 l   ALTER TABLE ONLY public.discount_condition_customer_group DROP CONSTRAINT "FK_4d5f98645a67545d8dea42e2eb8";
       public          postgres    false    294    291    4230            E           2606    48759 5   discount_rule_products FK_4e0739e5f0244c08d41174ca08a    FK CONSTRAINT     �   ALTER TABLE ONLY public.discount_rule_products
    ADD CONSTRAINT "FK_4e0739e5f0244c08d41174ca08a" FOREIGN KEY (discount_rule_id) REFERENCES public.discount_rule(id) ON DELETE CASCADE;
 a   ALTER TABLE ONLY public.discount_rule_products DROP CONSTRAINT "FK_4e0739e5f0244c08d41174ca08a";
       public          postgres    false    235    259    3982            D           2606    48749 -   product_images FK_4f166bb8c2bfcef2498d97b4068    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_images
    ADD CONSTRAINT "FK_4f166bb8c2bfcef2498d97b4068" FOREIGN KEY (product_id) REFERENCES public.product(id) ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.product_images DROP CONSTRAINT "FK_4f166bb8c2bfcef2498d97b4068";
       public          postgres    false    234    258    3978            g           2606    50240 1   line_item_tax_line FK_5077fa54b0d037e984385dfe8ad    FK CONSTRAINT     �   ALTER TABLE ONLY public.line_item_tax_line
    ADD CONSTRAINT "FK_5077fa54b0d037e984385dfe8ad" FOREIGN KEY (item_id) REFERENCES public.line_item(id) ON DELETE CASCADE;
 ]   ALTER TABLE ONLY public.line_item_tax_line DROP CONSTRAINT "FK_5077fa54b0d037e984385dfe8ad";
       public          postgres    false    4049    286    244                       2606    48594 .   shipping_method FK_5267705a43d547e232535b656c2    FK CONSTRAINT     �   ALTER TABLE ONLY public.shipping_method
    ADD CONSTRAINT "FK_5267705a43d547e232535b656c2" FOREIGN KEY (order_id) REFERENCES public."order"(id);
 Z   ALTER TABLE ONLY public.shipping_method DROP CONSTRAINT "FK_5267705a43d547e232535b656c2";
       public          postgres    false    4068    241    248            |           2606    49774 9   price_list_customer_groups FK_52875734e9dd69064f0041f4d92    FK CONSTRAINT     �   ALTER TABLE ONLY public.price_list_customer_groups
    ADD CONSTRAINT "FK_52875734e9dd69064f0041f4d92" FOREIGN KEY (price_list_id) REFERENCES public.price_list(id) ON UPDATE CASCADE ON DELETE CASCADE;
 e   ALTER TABLE ONLY public.price_list_customer_groups DROP CONSTRAINT "FK_52875734e9dd69064f0041f4d92";
       public          postgres    false    4261    300    299            %           2606    48629 #   swap FK_52dd74e8c989aa5665ad2852b8b    FK CONSTRAINT     �   ALTER TABLE ONLY public.swap
    ADD CONSTRAINT "FK_52dd74e8c989aa5665ad2852b8b" FOREIGN KEY (order_id) REFERENCES public."order"(id);
 O   ALTER TABLE ONLY public.swap DROP CONSTRAINT "FK_52dd74e8c989aa5665ad2852b8b";
       public          postgres    false    243    4068    248            +           2606    48659 (   line_item FK_5371cbaa3be5200f373d24e3d5b    FK CONSTRAINT     �   ALTER TABLE ONLY public.line_item
    ADD CONSTRAINT "FK_5371cbaa3be5200f373d24e3d5b" FOREIGN KEY (variant_id) REFERENCES public.product_variant(id);
 T   ALTER TABLE ONLY public.line_item DROP CONSTRAINT "FK_5371cbaa3be5200f373d24e3d5b";
       public          postgres    false    244    228    3957            3           2606    48689 $   order FK_5568d3b9ce9f7abeeb37511ecf2    FK CONSTRAINT     �   ALTER TABLE ONLY public."order"
    ADD CONSTRAINT "FK_5568d3b9ce9f7abeeb37511ecf2" FOREIGN KEY (billing_address_id) REFERENCES public.address(id);
 R   ALTER TABLE ONLY public."order" DROP CONSTRAINT "FK_5568d3b9ce9f7abeeb37511ecf2";
       public          postgres    false    250    248    4081            =           2606    48724 $   store FK_55beebaa09e947cccca554af222    FK CONSTRAINT     �   ALTER TABLE ONLY public.store
    ADD CONSTRAINT "FK_55beebaa09e947cccca554af222" FOREIGN KEY (default_currency_code) REFERENCES public.currency(code);
 P   ALTER TABLE ONLY public.store DROP CONSTRAINT "FK_55beebaa09e947cccca554af222";
       public          postgres    false    254    221    3935            _           2606    49128 +   product_tags FK_5b0c6fc53c574299ecc7f9ee22e    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_tags
    ADD CONSTRAINT "FK_5b0c6fc53c574299ecc7f9ee22e" FOREIGN KEY (product_id) REFERENCES public.product(id) ON DELETE CASCADE;
 W   ALTER TABLE ONLY public.product_tags DROP CONSTRAINT "FK_5b0c6fc53c574299ecc7f9ee22e";
       public          postgres    false    276    3978    234            `           2606    49192 *   draft_order FK_5bd11d0e2a9628128e2c26fd0a6    FK CONSTRAINT     �   ALTER TABLE ONLY public.draft_order
    ADD CONSTRAINT "FK_5bd11d0e2a9628128e2c26fd0a6" FOREIGN KEY (cart_id) REFERENCES public.cart(id);
 V   ALTER TABLE ONLY public.draft_order DROP CONSTRAINT "FK_5bd11d0e2a9628128e2c26fd0a6";
       public          postgres    false    240    278    4016                       2606    48504 .   shipping_option FK_5c58105f1752fca0f4ce69f4663    FK CONSTRAINT     �   ALTER TABLE ONLY public.shipping_option
    ADD CONSTRAINT "FK_5c58105f1752fca0f4ce69f4663" FOREIGN KEY (region_id) REFERENCES public.region(id);
 Z   ALTER TABLE ONLY public.shipping_option DROP CONSTRAINT "FK_5c58105f1752fca0f4ce69f4663";
       public          postgres    false    232    225    3944            �           2606    49935 0   order_item_change FK_5f9688929761f7df108b630e64a    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_item_change
    ADD CONSTRAINT "FK_5f9688929761f7df108b630e64a" FOREIGN KEY (line_item_id) REFERENCES public.line_item(id);
 \   ALTER TABLE ONLY public.order_item_change DROP CONSTRAINT "FK_5f9688929761f7df108b630e64a";
       public          postgres    false    244    4049    305            >           2606    49854 $   store FK_61b0f48cccbb5f41c750bac7286    FK CONSTRAINT     �   ALTER TABLE ONLY public.store
    ADD CONSTRAINT "FK_61b0f48cccbb5f41c750bac7286" FOREIGN KEY (default_sales_channel_id) REFERENCES public.sales_channel(id);
 P   ALTER TABLE ONLY public.store DROP CONSTRAINT "FK_61b0f48cccbb5f41c750bac7286";
       public          postgres    false    4274    303    254            p           2606    49588 7   customer_group_customers FK_620330964db8d2999e67b0dbe3e    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_group_customers
    ADD CONSTRAINT "FK_620330964db8d2999e67b0dbe3e" FOREIGN KEY (customer_group_id) REFERENCES public.customer_group(id) ON DELETE CASCADE;
 c   ALTER TABLE ONLY public.customer_group_customers DROP CONSTRAINT "FK_620330964db8d2999e67b0dbe3e";
       public          postgres    false    292    4230    291            T           2606    48961 )   claim_item FK_64980511ca32c8e92b417644afa    FK CONSTRAINT     �   ALTER TABLE ONLY public.claim_item
    ADD CONSTRAINT "FK_64980511ca32c8e92b417644afa" FOREIGN KEY (variant_id) REFERENCES public.product_variant(id);
 U   ALTER TABLE ONLY public.claim_item DROP CONSTRAINT "FK_64980511ca32c8e92b417644afa";
       public          postgres    false    3957    228    268            I           2606    48779 -   cart_discounts FK_6680319ebe1f46d18f106191d59    FK CONSTRAINT     �   ALTER TABLE ONLY public.cart_discounts
    ADD CONSTRAINT "FK_6680319ebe1f46d18f106191d59" FOREIGN KEY (cart_id) REFERENCES public.cart(id) ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.cart_discounts DROP CONSTRAINT "FK_6680319ebe1f46d18f106191d59";
       public          postgres    false    4016    261    240                       2606    48569 #   cart FK_6b9c66b5e36f7c827dfaa092f94    FK CONSTRAINT     �   ALTER TABLE ONLY public.cart
    ADD CONSTRAINT "FK_6b9c66b5e36f7c827dfaa092f94" FOREIGN KEY (billing_address_id) REFERENCES public.address(id);
 O   ALTER TABLE ONLY public.cart DROP CONSTRAINT "FK_6b9c66b5e36f7c827dfaa092f94";
       public          postgres    false    250    4081    240            ;           2606    48719 &   address FK_6df8c6bf969a51d24c1980c4ff4    FK CONSTRAINT     �   ALTER TABLE ONLY public.address
    ADD CONSTRAINT "FK_6df8c6bf969a51d24c1980c4ff4" FOREIGN KEY (country_code) REFERENCES public.country(iso_2);
 R   ALTER TABLE ONLY public.address DROP CONSTRAINT "FK_6df8c6bf969a51d24c1980c4ff4";
       public          postgres    false    223    3937    250            U           2606    48956 )   claim_item FK_6e0cad0daef76bb642675910b9d    FK CONSTRAINT     �   ALTER TABLE ONLY public.claim_item
    ADD CONSTRAINT "FK_6e0cad0daef76bb642675910b9d" FOREIGN KEY (item_id) REFERENCES public.line_item(id);
 U   ALTER TABLE ONLY public.claim_item DROP CONSTRAINT "FK_6e0cad0daef76bb642675910b9d";
       public          postgres    false    244    4049    268            x           2606    49722 >   discount_condition_product_type FK_6ef23ce0b1d9cf9b5b833e52b9d    FK CONSTRAINT     �   ALTER TABLE ONLY public.discount_condition_product_type
    ADD CONSTRAINT "FK_6ef23ce0b1d9cf9b5b833e52b9d" FOREIGN KEY (condition_id) REFERENCES public.discount_condition(id) ON DELETE CASCADE;
 j   ALTER TABLE ONLY public.discount_condition_product_type DROP CONSTRAINT "FK_6ef23ce0b1d9cf9b5b833e52b9d";
       public          postgres    false    293    4237    297            4           2606    49849 $   order FK_6ff7e874f01b478c115fdd462eb    FK CONSTRAINT     �   ALTER TABLE ONLY public."order"
    ADD CONSTRAINT "FK_6ff7e874f01b478c115fdd462eb" FOREIGN KEY (sales_channel_id) REFERENCES public.sales_channel(id);
 R   ALTER TABLE ONLY public."order" DROP CONSTRAINT "FK_6ff7e874f01b478c115fdd462eb";
       public          postgres    false    248    303    4274            !           2606    48971 %   return FK_71773d56eb2bacb922bc3283398    FK CONSTRAINT     �   ALTER TABLE ONLY public.return
    ADD CONSTRAINT "FK_71773d56eb2bacb922bc3283398" FOREIGN KEY (claim_order_id) REFERENCES public.claim_order(id);
 Q   ALTER TABLE ONLY public.return DROP CONSTRAINT "FK_71773d56eb2bacb922bc3283398";
       public          postgres    false    269    4151    242            5           2606    48704 $   order FK_717a141f96b76d794d409f38129    FK CONSTRAINT     �   ALTER TABLE ONLY public."order"
    ADD CONSTRAINT "FK_717a141f96b76d794d409f38129" FOREIGN KEY (currency_code) REFERENCES public.currency(code);
 R   ALTER TABLE ONLY public."order" DROP CONSTRAINT "FK_717a141f96b76d794d409f38129";
       public          postgres    false    221    248    3935                       2606    49304 3   product_option_value FK_7234ed737ff4eb1b6ae6e6d7b01    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_option_value
    ADD CONSTRAINT "FK_7234ed737ff4eb1b6ae6e6d7b01" FOREIGN KEY (variant_id) REFERENCES public.product_variant(id) ON DELETE CASCADE;
 _   ALTER TABLE ONLY public.product_option_value DROP CONSTRAINT "FK_7234ed737ff4eb1b6ae6e6d7b01";
       public          postgres    false    3957    228    229            6           2606    49202 $   order FK_727b872f86c7378474a8fa46147    FK CONSTRAINT     �   ALTER TABLE ONLY public."order"
    ADD CONSTRAINT "FK_727b872f86c7378474a8fa46147" FOREIGN KEY (draft_order_id) REFERENCES public.draft_order(id);
 R   ALTER TABLE ONLY public."order" DROP CONSTRAINT "FK_727b872f86c7378474a8fa46147";
       public          postgres    false    248    278    4179            �           2606    48444 *   return_item FK_7edab75b4fc88ea6d4f2574f087    FK CONSTRAINT     �   ALTER TABLE ONLY public.return_item
    ADD CONSTRAINT "FK_7edab75b4fc88ea6d4f2574f087" FOREIGN KEY (return_id) REFERENCES public.return(id);
 V   ALTER TABLE ONLY public.return_item DROP CONSTRAINT "FK_7edab75b4fc88ea6d4f2574f087";
       public          postgres    false    4033    242    220            Q           2606    48824 /   store_currencies FK_82a6bbb0b527c20a0002ddcbd60    FK CONSTRAINT     �   ALTER TABLE ONLY public.store_currencies
    ADD CONSTRAINT "FK_82a6bbb0b527c20a0002ddcbd60" FOREIGN KEY (currency_code) REFERENCES public.currency(code) ON DELETE CASCADE;
 [   ALTER TABLE ONLY public.store_currencies DROP CONSTRAINT "FK_82a6bbb0b527c20a0002ddcbd60";
       public          postgres    false    3935    265    221            s           2606    49692 @   discount_condition_customer_group FK_8486ee16e69013c645d0b8716b6    FK CONSTRAINT     �   ALTER TABLE ONLY public.discount_condition_customer_group
    ADD CONSTRAINT "FK_8486ee16e69013c645d0b8716b6" FOREIGN KEY (condition_id) REFERENCES public.discount_condition(id) ON DELETE CASCADE;
 l   ALTER TABLE ONLY public.discount_condition_customer_group DROP CONSTRAINT "FK_8486ee16e69013c645d0b8716b6";
       public          postgres    false    293    294    4237            �           2606    48449 *   return_item FK_87774591f44564effd8039d7162    FK CONSTRAINT     �   ALTER TABLE ONLY public.return_item
    ADD CONSTRAINT "FK_87774591f44564effd8039d7162" FOREIGN KEY (item_id) REFERENCES public.line_item(id);
 V   ALTER TABLE ONLY public.return_item DROP CONSTRAINT "FK_87774591f44564effd8039d7162";
       public          postgres    false    4049    220    244            @           2606    48729 7   region_payment_providers FK_8aaa78ba90d3802edac317df869    FK CONSTRAINT     �   ALTER TABLE ONLY public.region_payment_providers
    ADD CONSTRAINT "FK_8aaa78ba90d3802edac317df869" FOREIGN KEY (region_id) REFERENCES public.region(id) ON DELETE CASCADE;
 c   ALTER TABLE ONLY public.region_payment_providers DROP CONSTRAINT "FK_8aaa78ba90d3802edac317df869";
       public          postgres    false    3944    225    256            :           2606    48709 '   customer FK_8abe81b9aac151ae60bf507ad15    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT "FK_8abe81b9aac151ae60bf507ad15" FOREIGN KEY (billing_address_id) REFERENCES public.address(id);
 S   ALTER TABLE ONLY public.customer DROP CONSTRAINT "FK_8abe81b9aac151ae60bf507ad15";
       public          postgres    false    250    249    4081            J           2606    48784 -   cart_discounts FK_8df75ef4f35f217768dc1135458    FK CONSTRAINT     �   ALTER TABLE ONLY public.cart_discounts
    ADD CONSTRAINT "FK_8df75ef4f35f217768dc1135458" FOREIGN KEY (discount_id) REFERENCES public.discount(id) ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.cart_discounts DROP CONSTRAINT "FK_8df75ef4f35f217768dc1135458";
       public          postgres    false    236    261    3986            a           2606    49197 *   draft_order FK_8f6dd6c49202f1466ebf21e77da    FK CONSTRAINT     �   ALTER TABLE ONLY public.draft_order
    ADD CONSTRAINT "FK_8f6dd6c49202f1466ebf21e77da" FOREIGN KEY (order_id) REFERENCES public."order"(id);
 V   ALTER TABLE ONLY public.draft_order DROP CONSTRAINT "FK_8f6dd6c49202f1466ebf21e77da";
       public          postgres    false    4068    278    248            V           2606    48951 )   claim_item FK_900a9c3834257304396b2b0fe7c    FK CONSTRAINT     �   ALTER TABLE ONLY public.claim_item
    ADD CONSTRAINT "FK_900a9c3834257304396b2b0fe7c" FOREIGN KEY (claim_order_id) REFERENCES public.claim_order(id);
 U   ALTER TABLE ONLY public.claim_item DROP CONSTRAINT "FK_900a9c3834257304396b2b0fe7c";
       public          postgres    false    269    4151    268            �           2606    49524 %   region FK_91f88052197680f9790272aaf5b    FK CONSTRAINT     �   ALTER TABLE ONLY public.region
    ADD CONSTRAINT "FK_91f88052197680f9790272aaf5b" FOREIGN KEY (tax_provider_id) REFERENCES public.tax_provider(id);
 Q   ALTER TABLE ONLY public.region DROP CONSTRAINT "FK_91f88052197680f9790272aaf5b";
       public          postgres    false    225    4205    285            h           2606    49534 7   shipping_method_tax_line FK_926ca9f29014af8091722dede08    FK CONSTRAINT     �   ALTER TABLE ONLY public.shipping_method_tax_line
    ADD CONSTRAINT "FK_926ca9f29014af8091722dede08" FOREIGN KEY (shipping_method_id) REFERENCES public.shipping_method(id);
 c   ALTER TABLE ONLY public.shipping_method_tax_line DROP CONSTRAINT "FK_926ca9f29014af8091722dede08";
       public          postgres    false    4026    287    241            e           2606    49421 5   custom_shipping_option FK_93caeb1bb70d37c1d36d6701a7a    FK CONSTRAINT     �   ALTER TABLE ONLY public.custom_shipping_option
    ADD CONSTRAINT "FK_93caeb1bb70d37c1d36d6701a7a" FOREIGN KEY (cart_id) REFERENCES public.cart(id);
 a   ALTER TABLE ONLY public.custom_shipping_option DROP CONSTRAINT "FK_93caeb1bb70d37c1d36d6701a7a";
       public          postgres    false    240    4016    283            <           2606    48714 &   address FK_9c9614b2f9d01665800ea8dbff7    FK CONSTRAINT     �   ALTER TABLE ONLY public.address
    ADD CONSTRAINT "FK_9c9614b2f9d01665800ea8dbff7" FOREIGN KEY (customer_id) REFERENCES public.customer(id);
 R   ALTER TABLE ONLY public.address DROP CONSTRAINT "FK_9c9614b2f9d01665800ea8dbff7";
       public          postgres    false    249    250    4076                       2606    48589 #   cart FK_9d1a161434c610aae7c3df2dc7e    FK CONSTRAINT     �   ALTER TABLE ONLY public.cart
    ADD CONSTRAINT "FK_9d1a161434c610aae7c3df2dc7e" FOREIGN KEY (payment_id) REFERENCES public.payment(id);
 O   ALTER TABLE ONLY public.cart DROP CONSTRAINT "FK_9d1a161434c610aae7c3df2dc7e";
       public          postgres    false    238    4001    240            �           2606    48419 /   fulfillment_item FK_a033f83cc6bd7701a5687ab4b38    FK CONSTRAINT     �   ALTER TABLE ONLY public.fulfillment_item
    ADD CONSTRAINT "FK_a033f83cc6bd7701a5687ab4b38" FOREIGN KEY (fulfillment_id) REFERENCES public.fulfillment(id);
 [   ALTER TABLE ONLY public.fulfillment_item DROP CONSTRAINT "FK_a033f83cc6bd7701a5687ab4b38";
       public          postgres    false    219    3931    218            t           2606    49697 D   discount_condition_product_collection FK_a0b05dc4257abe639cb75f8eae2    FK CONSTRAINT     �   ALTER TABLE ONLY public.discount_condition_product_collection
    ADD CONSTRAINT "FK_a0b05dc4257abe639cb75f8eae2" FOREIGN KEY (product_collection_id) REFERENCES public.product_collection(id) ON DELETE CASCADE;
 p   ALTER TABLE ONLY public.discount_condition_product_collection DROP CONSTRAINT "FK_a0b05dc4257abe639cb75f8eae2";
       public          postgres    false    273    295    4165                       2606    48514 .   shipping_option FK_a0e206bfaed3cb63c1860917347    FK CONSTRAINT     �   ALTER TABLE ONLY public.shipping_option
    ADD CONSTRAINT "FK_a0e206bfaed3cb63c1860917347" FOREIGN KEY (provider_id) REFERENCES public.fulfillment_provider(id);
 Z   ALTER TABLE ONLY public.shipping_option DROP CONSTRAINT "FK_a0e206bfaed3cb63c1860917347";
       public          postgres    false    217    232    3923            u           2606    49702 D   discount_condition_product_collection FK_a1c4f9cfb599ad1f0db39cadd5f    FK CONSTRAINT     �   ALTER TABLE ONLY public.discount_condition_product_collection
    ADD CONSTRAINT "FK_a1c4f9cfb599ad1f0db39cadd5f" FOREIGN KEY (condition_id) REFERENCES public.discount_condition(id) ON DELETE CASCADE;
 p   ALTER TABLE ONLY public.discount_condition_product_collection DROP CONSTRAINT "FK_a1c4f9cfb599ad1f0db39cadd5f";
       public          postgres    false    295    4237    293            G           2606    48774 /   discount_regions FK_a21a7ffbe420d492eb46c305fec    FK CONSTRAINT     �   ALTER TABLE ONLY public.discount_regions
    ADD CONSTRAINT "FK_a21a7ffbe420d492eb46c305fec" FOREIGN KEY (region_id) REFERENCES public.region(id) ON DELETE CASCADE;
 [   ALTER TABLE ONLY public.discount_regions DROP CONSTRAINT "FK_a21a7ffbe420d492eb46c305fec";
       public          postgres    false    225    260    3944                       2606    49844 #   cart FK_a2bd3c26f42e754b9249ba78fd6    FK CONSTRAINT     �   ALTER TABLE ONLY public.cart
    ADD CONSTRAINT "FK_a2bd3c26f42e754b9249ba78fd6" FOREIGN KEY (sales_channel_id) REFERENCES public.sales_channel(id);
 O   ALTER TABLE ONLY public.cart DROP CONSTRAINT "FK_a2bd3c26f42e754b9249ba78fd6";
       public          postgres    false    240    303    4274            �           2606    48429 *   fulfillment FK_a52e234f729db789cf473297a5c    FK CONSTRAINT     �   ALTER TABLE ONLY public.fulfillment
    ADD CONSTRAINT "FK_a52e234f729db789cf473297a5c" FOREIGN KEY (swap_id) REFERENCES public.swap(id);
 V   ALTER TABLE ONLY public.fulfillment DROP CONSTRAINT "FK_a52e234f729db789cf473297a5c";
       public          postgres    false    219    4040    243                       2606    48524 '   discount FK_ac2c280de3701b2d66f6817f760    FK CONSTRAINT     �   ALTER TABLE ONLY public.discount
    ADD CONSTRAINT "FK_ac2c280de3701b2d66f6817f760" FOREIGN KEY (rule_id) REFERENCES public.discount_rule(id);
 S   ALTER TABLE ONLY public.discount DROP CONSTRAINT "FK_ac2c280de3701b2d66f6817f760";
       public          postgres    false    236    235    3982            �           2606    48454 &   country FK_b1aac8314662fa6b25569a575bb    FK CONSTRAINT     �   ALTER TABLE ONLY public.country
    ADD CONSTRAINT "FK_b1aac8314662fa6b25569a575bb" FOREIGN KEY (region_id) REFERENCES public.region(id);
 R   ALTER TABLE ONLY public.country DROP CONSTRAINT "FK_b1aac8314662fa6b25569a575bb";
       public          postgres    false    3944    223    225            �           2606    48474 +   money_amount FK_b433e27b7a83e6d12ab26b15b03    FK CONSTRAINT     �   ALTER TABLE ONLY public.money_amount
    ADD CONSTRAINT "FK_b433e27b7a83e6d12ab26b15b03" FOREIGN KEY (region_id) REFERENCES public.region(id);
 W   ALTER TABLE ONLY public.money_amount DROP CONSTRAINT "FK_b433e27b7a83e6d12ab26b15b03";
       public          postgres    false    3944    227    225            �           2606    49930 0   order_item_change FK_b4d53b8d03c9f5e7d4317e818d9    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_item_change
    ADD CONSTRAINT "FK_b4d53b8d03c9f5e7d4317e818d9" FOREIGN KEY (original_line_item_id) REFERENCES public.line_item(id);
 \   ALTER TABLE ONLY public.order_item_change DROP CONSTRAINT "FK_b4d53b8d03c9f5e7d4317e818d9";
       public          postgres    false    4049    244    305            R           2606    48819 /   store_currencies FK_b4f4b63d1736689b7008980394c    FK CONSTRAINT     �   ALTER TABLE ONLY public.store_currencies
    ADD CONSTRAINT "FK_b4f4b63d1736689b7008980394c" FOREIGN KEY (store_id) REFERENCES public.store(id) ON DELETE CASCADE;
 [   ALTER TABLE ONLY public.store_currencies DROP CONSTRAINT "FK_b4f4b63d1736689b7008980394c";
       public          postgres    false    265    254    4091            ]           2606    49071 +   notification FK_b5df0f53a74b9d0c0a2b652c88d    FK CONSTRAINT     �   ALTER TABLE ONLY public.notification
    ADD CONSTRAINT "FK_b5df0f53a74b9d0c0a2b652c88d" FOREIGN KEY (customer_id) REFERENCES public.customer(id);
 W   ALTER TABLE ONLY public.notification DROP CONSTRAINT "FK_b5df0f53a74b9d0c0a2b652c88d";
       public          postgres    false    4076    249    272                       2606    48559 (   gift_card FK_b6bcf8c3903097b84e85154eed3    FK CONSTRAINT     �   ALTER TABLE ONLY public.gift_card
    ADD CONSTRAINT "FK_b6bcf8c3903097b84e85154eed3" FOREIGN KEY (region_id) REFERENCES public.region(id);
 T   ALTER TABLE ONLY public.gift_card DROP CONSTRAINT "FK_b6bcf8c3903097b84e85154eed3";
       public          postgres    false    3944    239    225            f           2606    49519 '   tax_rate FK_b95a1e03b051993d208366cb960    FK CONSTRAINT     �   ALTER TABLE ONLY public.tax_rate
    ADD CONSTRAINT "FK_b95a1e03b051993d208366cb960" FOREIGN KEY (region_id) REFERENCES public.region(id);
 S   ALTER TABLE ONLY public.tax_rate DROP CONSTRAINT "FK_b95a1e03b051993d208366cb960";
       public          postgres    false    284    3944    225            "           2606    48619 %   return FK_bad82d7bff2b08b87094bfac3d6    FK CONSTRAINT     �   ALTER TABLE ONLY public.return
    ADD CONSTRAINT "FK_bad82d7bff2b08b87094bfac3d6" FOREIGN KEY (swap_id) REFERENCES public.swap(id);
 Q   ALTER TABLE ONLY public.return DROP CONSTRAINT "FK_bad82d7bff2b08b87094bfac3d6";
       public          postgres    false    243    242    4040            F           2606    48764 5   discount_rule_products FK_be66106a673b88a81c603abe7eb    FK CONSTRAINT     �   ALTER TABLE ONLY public.discount_rule_products
    ADD CONSTRAINT "FK_be66106a673b88a81c603abe7eb" FOREIGN KEY (product_id) REFERENCES public.product(id) ON DELETE CASCADE;
 a   ALTER TABLE ONLY public.discount_rule_products DROP CONSTRAINT "FK_be66106a673b88a81c603abe7eb";
       public          postgres    false    234    259    3978                       2606    50245 3   line_item_adjustment FK_be9aea2ccf3567007b6227da4d2    FK CONSTRAINT     �   ALTER TABLE ONLY public.line_item_adjustment
    ADD CONSTRAINT "FK_be9aea2ccf3567007b6227da4d2" FOREIGN KEY (item_id) REFERENCES public.line_item(id) ON DELETE CASCADE;
 _   ALTER TABLE ONLY public.line_item_adjustment DROP CONSTRAINT "FK_be9aea2ccf3567007b6227da4d2";
       public          postgres    false    244    301    4049            �           2606    48439 *   fulfillment FK_beb35a6de60a6c4f91d5ae57e44    FK CONSTRAINT     �   ALTER TABLE ONLY public.fulfillment
    ADD CONSTRAINT "FK_beb35a6de60a6c4f91d5ae57e44" FOREIGN KEY (provider_id) REFERENCES public.fulfillment_provider(id);
 V   ALTER TABLE ONLY public.fulfillment DROP CONSTRAINT "FK_beb35a6de60a6c4f91d5ae57e44";
       public          postgres    false    219    217    3923                       2606    48539 &   payment FK_c17aff091441b7c25ec3d68d36c    FK CONSTRAINT     �   ALTER TABLE ONLY public.payment
    ADD CONSTRAINT "FK_c17aff091441b7c25ec3d68d36c" FOREIGN KEY (swap_id) REFERENCES public.swap(id);
 R   ALTER TABLE ONLY public.payment DROP CONSTRAINT "FK_c17aff091441b7c25ec3d68d36c";
       public          postgres    false    4040    243    238            Y           2606    48996 .   claim_item_tags FK_c2c0f3edf39515bd15432afe6e5    FK CONSTRAINT     �   ALTER TABLE ONLY public.claim_item_tags
    ADD CONSTRAINT "FK_c2c0f3edf39515bd15432afe6e5" FOREIGN KEY (item_id) REFERENCES public.claim_item(id) ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public.claim_item_tags DROP CONSTRAINT "FK_c2c0f3edf39515bd15432afe6e5";
       public          postgres    false    270    4147    268            }           2606    49779 9   price_list_customer_groups FK_c5516f550433c9b1c2630d787a7    FK CONSTRAINT     �   ALTER TABLE ONLY public.price_list_customer_groups
    ADD CONSTRAINT "FK_c5516f550433c9b1c2630d787a7" FOREIGN KEY (customer_group_id) REFERENCES public.customer_group(id) ON DELETE CASCADE;
 e   ALTER TABLE ONLY public.price_list_customer_groups DROP CONSTRAINT "FK_c5516f550433c9b1c2630d787a7";
       public          postgres    false    291    4230    300            B           2606    48739 ;   region_fulfillment_providers FK_c556e14eff4d6f03db593df955e    FK CONSTRAINT     �   ALTER TABLE ONLY public.region_fulfillment_providers
    ADD CONSTRAINT "FK_c556e14eff4d6f03db593df955e" FOREIGN KEY (region_id) REFERENCES public.region(id) ON DELETE CASCADE;
 g   ALTER TABLE ONLY public.region_fulfillment_providers DROP CONSTRAINT "FK_c556e14eff4d6f03db593df955e";
       public          postgres    false    225    3944    257            z           2606    49727 9   discount_condition_product FK_c759f53b2e48e8cfb50638fe4e0    FK CONSTRAINT     �   ALTER TABLE ONLY public.discount_condition_product
    ADD CONSTRAINT "FK_c759f53b2e48e8cfb50638fe4e0" FOREIGN KEY (product_id) REFERENCES public.product(id) ON DELETE CASCADE;
 e   ALTER TABLE ONLY public.discount_condition_product DROP CONSTRAINT "FK_c759f53b2e48e8cfb50638fe4e0";
       public          postgres    false    234    298    3978            	           2606    48509 .   shipping_option FK_c951439af4c98bf2bd7fb8726cd    FK CONSTRAINT     �   ALTER TABLE ONLY public.shipping_option
    ADD CONSTRAINT "FK_c951439af4c98bf2bd7fb8726cd" FOREIGN KEY (profile_id) REFERENCES public.shipping_profile(id);
 Z   ALTER TABLE ONLY public.shipping_option DROP CONSTRAINT "FK_c951439af4c98bf2bd7fb8726cd";
       public          postgres    false    3975    232    233            7           2606    48679 $   order FK_c99a206eb11ad45f6b7f04f2dcc    FK CONSTRAINT     �   ALTER TABLE ONLY public."order"
    ADD CONSTRAINT "FK_c99a206eb11ad45f6b7f04f2dcc" FOREIGN KEY (cart_id) REFERENCES public.cart(id);
 R   ALTER TABLE ONLY public."order" DROP CONSTRAINT "FK_c99a206eb11ad45f6b7f04f2dcc";
       public          postgres    false    248    240    4016                       2606    48479 .   product_variant FK_ca67dd080aac5ecf99609960cd2    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_variant
    ADD CONSTRAINT "FK_ca67dd080aac5ecf99609960cd2" FOREIGN KEY (product_id) REFERENCES public.product(id);
 Z   ALTER TABLE ONLY public.product_variant DROP CONSTRAINT "FK_ca67dd080aac5ecf99609960cd2";
       public          postgres    false    228    234    3978            8           2606    48684 $   order FK_cd7812c96209c5bdd48a6b858b0    FK CONSTRAINT     �   ALTER TABLE ONLY public."order"
    ADD CONSTRAINT "FK_cd7812c96209c5bdd48a6b858b0" FOREIGN KEY (customer_id) REFERENCES public.customer(id);
 R   ALTER TABLE ONLY public."order" DROP CONSTRAINT "FK_cd7812c96209c5bdd48a6b858b0";
       public          postgres    false    4076    249    248                       2606    48484 3   product_option_value FK_cdf4388f294b30a25c627d69fe9    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_option_value
    ADD CONSTRAINT "FK_cdf4388f294b30a25c627d69fe9" FOREIGN KEY (option_id) REFERENCES public.product_option(id);
 _   ALTER TABLE ONLY public.product_option_value DROP CONSTRAINT "FK_cdf4388f294b30a25c627d69fe9";
       public          postgres    false    3965    229    230                       2606    48574 #   cart FK_ced15a9a695d2b5db9dabce763d    FK CONSTRAINT     �   ALTER TABLE ONLY public.cart
    ADD CONSTRAINT "FK_ced15a9a695d2b5db9dabce763d" FOREIGN KEY (shipping_address_id) REFERENCES public.address(id);
 O   ALTER TABLE ONLY public.cart DROP CONSTRAINT "FK_ced15a9a695d2b5db9dabce763d";
       public          postgres    false    250    240    4081                       2606    48534 .   payment_session FK_d25ba0787e1510ddc5d442ebcfa    FK CONSTRAINT     �   ALTER TABLE ONLY public.payment_session
    ADD CONSTRAINT "FK_d25ba0787e1510ddc5d442ebcfa" FOREIGN KEY (cart_id) REFERENCES public.cart(id);
 Z   ALTER TABLE ONLY public.payment_session DROP CONSTRAINT "FK_d25ba0787e1510ddc5d442ebcfa";
       public          postgres    false    240    237    4016            L           2606    48789 .   cart_gift_cards FK_d38047a90f3d42f0be7909e8aea    FK CONSTRAINT     �   ALTER TABLE ONLY public.cart_gift_cards
    ADD CONSTRAINT "FK_d38047a90f3d42f0be7909e8aea" FOREIGN KEY (cart_id) REFERENCES public.cart(id) ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public.cart_gift_cards DROP CONSTRAINT "FK_d38047a90f3d42f0be7909e8aea";
       public          postgres    false    4016    262    240            #           2606    48624 %   return FK_d4bd17f918fc6c332b74a368c36    FK CONSTRAINT     �   ALTER TABLE ONLY public.return
    ADD CONSTRAINT "FK_d4bd17f918fc6c332b74a368c36" FOREIGN KEY (order_id) REFERENCES public."order"(id);
 Q   ALTER TABLE ONLY public.return DROP CONSTRAINT "FK_d4bd17f918fc6c332b74a368c36";
       public          postgres    false    248    4068    242            �           2606    48986 *   fulfillment FK_d73e55964e0ff2db8f03807d52e    FK CONSTRAINT     �   ALTER TABLE ONLY public.fulfillment
    ADD CONSTRAINT "FK_d73e55964e0ff2db8f03807d52e" FOREIGN KEY (claim_order_id) REFERENCES public.claim_order(id);
 V   ALTER TABLE ONLY public.fulfillment DROP CONSTRAINT "FK_d73e55964e0ff2db8f03807d52e";
       public          postgres    false    219    4151    269            �           2606    49232 *   return_item FK_d742532378a65022e7ceb328828    FK CONSTRAINT     �   ALTER TABLE ONLY public.return_item
    ADD CONSTRAINT "FK_d742532378a65022e7ceb328828" FOREIGN KEY (reason_id) REFERENCES public.return_reason(id);
 V   ALTER TABLE ONLY public.return_item DROP CONSTRAINT "FK_d742532378a65022e7ceb328828";
       public          postgres    false    220    280    4188                       2606    48966 .   shipping_method FK_d783a66d1c91c0858752c933e68    FK CONSTRAINT     �   ALTER TABLE ONLY public.shipping_method
    ADD CONSTRAINT "FK_d783a66d1c91c0858752c933e68" FOREIGN KEY (claim_order_id) REFERENCES public.claim_order(id);
 Z   ALTER TABLE ONLY public.shipping_method DROP CONSTRAINT "FK_d783a66d1c91c0858752c933e68";
       public          postgres    false    241    269    4151            /           2606    48669 4   gift_card_transaction FK_d7d441b81012f87d4265fa57d24    FK CONSTRAINT     �   ALTER TABLE ONLY public.gift_card_transaction
    ADD CONSTRAINT "FK_d7d441b81012f87d4265fa57d24" FOREIGN KEY (order_id) REFERENCES public."order"(id);
 `   ALTER TABLE ONLY public.gift_card_transaction DROP CONSTRAINT "FK_d7d441b81012f87d4265fa57d24";
       public          postgres    false    245    4068    248                       2606    48599 .   shipping_method FK_d92993a7d554d84571f4eea1d13    FK CONSTRAINT     �   ALTER TABLE ONLY public.shipping_method
    ADD CONSTRAINT "FK_d92993a7d554d84571f4eea1d13" FOREIGN KEY (cart_id) REFERENCES public.cart(id);
 Z   ALTER TABLE ONLY public.shipping_method DROP CONSTRAINT "FK_d92993a7d554d84571f4eea1d13";
       public          postgres    false    241    240    4016            Z           2606    49001 .   claim_item_tags FK_dc9bbf9fcb9ba458d25d512811b    FK CONSTRAINT     �   ALTER TABLE ONLY public.claim_item_tags
    ADD CONSTRAINT "FK_dc9bbf9fcb9ba458d25d512811b" FOREIGN KEY (tag_id) REFERENCES public.claim_tag(id) ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public.claim_item_tags DROP CONSTRAINT "FK_dc9bbf9fcb9ba458d25d512811b";
       public          postgres    false    267    4142    270                       2606    49239 (   gift_card FK_dfc1f02bb0552e79076aa58dbb0    FK CONSTRAINT     �   ALTER TABLE ONLY public.gift_card
    ADD CONSTRAINT "FK_dfc1f02bb0552e79076aa58dbb0" FOREIGN KEY (order_id) REFERENCES public."order"(id);
 T   ALTER TABLE ONLY public.gift_card DROP CONSTRAINT "FK_dfc1f02bb0552e79076aa58dbb0";
       public          postgres    false    239    248    4068                       2606    49138 &   product FK_e0843930fbb8854fe36ca39dae1    FK CONSTRAINT     �   ALTER TABLE ONLY public.product
    ADD CONSTRAINT "FK_e0843930fbb8854fe36ca39dae1" FOREIGN KEY (type_id) REFERENCES public.product_type(id);
 R   ALTER TABLE ONLY public.product DROP CONSTRAINT "FK_e0843930fbb8854fe36ca39dae1";
       public          postgres    false    4170    234    275            �           2606    48424 /   fulfillment_item FK_e13ff60e74206b747a1896212d1    FK CONSTRAINT     �   ALTER TABLE ONLY public.fulfillment_item
    ADD CONSTRAINT "FK_e13ff60e74206b747a1896212d1" FOREIGN KEY (item_id) REFERENCES public.line_item(id);
 [   ALTER TABLE ONLY public.fulfillment_item DROP CONSTRAINT "FK_e13ff60e74206b747a1896212d1";
       public          postgres    false    218    244    4049                        2606    48464 +   money_amount FK_e15811f81339e4bd8c440aebe1c    FK CONSTRAINT     �   ALTER TABLE ONLY public.money_amount
    ADD CONSTRAINT "FK_e15811f81339e4bd8c440aebe1c" FOREIGN KEY (currency_code) REFERENCES public.currency(code);
 W   ALTER TABLE ONLY public.money_amount DROP CONSTRAINT "FK_e15811f81339e4bd8c440aebe1c";
       public          postgres    false    227    3935    221            9           2606    48699 $   order FK_e1fcce2b18dbcdbe0a5ba9a68b8    FK CONSTRAINT     �   ALTER TABLE ONLY public."order"
    ADD CONSTRAINT "FK_e1fcce2b18dbcdbe0a5ba9a68b8" FOREIGN KEY (region_id) REFERENCES public.region(id);
 R   ALTER TABLE ONLY public."order" DROP CONSTRAINT "FK_e1fcce2b18dbcdbe0a5ba9a68b8";
       public          postgres    false    248    225    3944            O           2606    48809 /   order_gift_cards FK_e62ff11e4730bb3adfead979ee2    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_gift_cards
    ADD CONSTRAINT "FK_e62ff11e4730bb3adfead979ee2" FOREIGN KEY (order_id) REFERENCES public."order"(id) ON DELETE CASCADE;
 [   ALTER TABLE ONLY public.order_gift_cards DROP CONSTRAINT "FK_e62ff11e4730bb3adfead979ee2";
       public          postgres    false    248    4068    264                       2606    48494 -   product_option FK_e634fca34f6b594b87fdbee95f6    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_option
    ADD CONSTRAINT "FK_e634fca34f6b594b87fdbee95f6" FOREIGN KEY (product_id) REFERENCES public.product(id);
 Y   ALTER TABLE ONLY public.product_option DROP CONSTRAINT "FK_e634fca34f6b594b87fdbee95f6";
       public          postgres    false    234    3978    230            y           2606    49717 >   discount_condition_product_type FK_e706deb68f52ab2756119b9e704    FK CONSTRAINT     �   ALTER TABLE ONLY public.discount_condition_product_type
    ADD CONSTRAINT "FK_e706deb68f52ab2756119b9e704" FOREIGN KEY (product_type_id) REFERENCES public.product_type(id) ON DELETE CASCADE;
 j   ALTER TABLE ONLY public.discount_condition_product_type DROP CONSTRAINT "FK_e706deb68f52ab2756119b9e704";
       public          postgres    false    275    297    4170            N           2606    48799 .   order_discounts FK_e7b488cebe333f449398769b2cc    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_discounts
    ADD CONSTRAINT "FK_e7b488cebe333f449398769b2cc" FOREIGN KEY (order_id) REFERENCES public."order"(id) ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public.order_discounts DROP CONSTRAINT "FK_e7b488cebe333f449398769b2cc";
       public          postgres    false    4068    248    263            l           2606    49554 4   product_type_tax_rate FK_ece65a774192b34253abc4cd672    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_type_tax_rate
    ADD CONSTRAINT "FK_ece65a774192b34253abc4cd672" FOREIGN KEY (rate_id) REFERENCES public.tax_rate(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.product_type_tax_rate DROP CONSTRAINT "FK_ece65a774192b34253abc4cd672";
       public          postgres    false    4203    289    284            0           2606    48674 %   refund FK_eec9d9af4ca098e19ea6b499eaa    FK CONSTRAINT     �   ALTER TABLE ONLY public.refund
    ADD CONSTRAINT "FK_eec9d9af4ca098e19ea6b499eaa" FOREIGN KEY (order_id) REFERENCES public."order"(id);
 Q   ALTER TABLE ONLY public.refund DROP CONSTRAINT "FK_eec9d9af4ca098e19ea6b499eaa";
       public          postgres    false    4068    248    246            q           2606    49682 1   discount_condition FK_efff700651718e452ca9580a624    FK CONSTRAINT     �   ALTER TABLE ONLY public.discount_condition
    ADD CONSTRAINT "FK_efff700651718e452ca9580a624" FOREIGN KEY (discount_rule_id) REFERENCES public.discount_rule(id);
 ]   ALTER TABLE ONLY public.discount_condition DROP CONSTRAINT "FK_efff700651718e452ca9580a624";
       public          postgres    false    293    3982    235            {           2606    49732 9   discount_condition_product FK_f05132301e95bdab4ba1cf29a24    FK CONSTRAINT     �   ALTER TABLE ONLY public.discount_condition_product
    ADD CONSTRAINT "FK_f05132301e95bdab4ba1cf29a24" FOREIGN KEY (condition_id) REFERENCES public.discount_condition(id) ON DELETE CASCADE;
 e   ALTER TABLE ONLY public.discount_condition_product DROP CONSTRAINT "FK_f05132301e95bdab4ba1cf29a24";
       public          postgres    false    4237    293    298            �           2606    48434 *   fulfillment FK_f129acc85e346a10eed12b86fca    FK CONSTRAINT     �   ALTER TABLE ONLY public.fulfillment
    ADD CONSTRAINT "FK_f129acc85e346a10eed12b86fca" FOREIGN KEY (order_id) REFERENCES public."order"(id);
 V   ALTER TABLE ONLY public.fulfillment DROP CONSTRAINT "FK_f129acc85e346a10eed12b86fca";
       public          postgres    false    248    4068    219                       2606    49769 +   money_amount FK_f249976b079375499662eb80c40    FK CONSTRAINT     �   ALTER TABLE ONLY public.money_amount
    ADD CONSTRAINT "FK_f249976b079375499662eb80c40" FOREIGN KEY (price_list_id) REFERENCES public.price_list(id) ON DELETE CASCADE;
 W   ALTER TABLE ONLY public.money_amount DROP CONSTRAINT "FK_f249976b079375499662eb80c40";
       public          postgres    false    4261    227    299            P           2606    48814 /   order_gift_cards FK_f2bb9f71e95b315eb24b2b84cb3    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_gift_cards
    ADD CONSTRAINT "FK_f2bb9f71e95b315eb24b2b84cb3" FOREIGN KEY (gift_card_id) REFERENCES public.gift_card(id) ON DELETE CASCADE;
 [   ALTER TABLE ONLY public.order_gift_cards DROP CONSTRAINT "FK_f2bb9f71e95b315eb24b2b84cb3";
       public          postgres    false    264    239    4009                       2606    48554 &   payment FK_f41553459a4b1491c9893ebc921    FK CONSTRAINT     �   ALTER TABLE ONLY public.payment
    ADD CONSTRAINT "FK_f41553459a4b1491c9893ebc921" FOREIGN KEY (currency_code) REFERENCES public.currency(code);
 R   ALTER TABLE ONLY public.payment DROP CONSTRAINT "FK_f41553459a4b1491c9893ebc921";
       public          postgres    false    3935    221    238            H           2606    48769 /   discount_regions FK_f4194aa81073f3fab8aa86906ff    FK CONSTRAINT     �   ALTER TABLE ONLY public.discount_regions
    ADD CONSTRAINT "FK_f4194aa81073f3fab8aa86906ff" FOREIGN KEY (discount_id) REFERENCES public.discount(id) ON DELETE CASCADE;
 [   ALTER TABLE ONLY public.discount_regions DROP CONSTRAINT "FK_f4194aa81073f3fab8aa86906ff";
       public          postgres    false    3986    260    236            X           2606    48976 *   claim_order FK_f49e3974465d3c3a33d449d3f31    FK CONSTRAINT     �   ALTER TABLE ONLY public.claim_order
    ADD CONSTRAINT "FK_f49e3974465d3c3a33d449d3f31" FOREIGN KEY (order_id) REFERENCES public."order"(id);
 V   ALTER TABLE ONLY public.claim_order DROP CONSTRAINT "FK_f49e3974465d3c3a33d449d3f31";
       public          postgres    false    269    4068    248            &           2606    48634 #   swap FK_f5189d38b3d3bd496618bf54c57    FK CONSTRAINT     �   ALTER TABLE ONLY public.swap
    ADD CONSTRAINT "FK_f5189d38b3d3bd496618bf54c57" FOREIGN KEY (shipping_address_id) REFERENCES public.address(id);
 O   ALTER TABLE ONLY public.swap DROP CONSTRAINT "FK_f5189d38b3d3bd496618bf54c57";
       public          postgres    false    4081    243    250                       2606    48549 &   payment FK_f5221735ace059250daac9d9803    FK CONSTRAINT     �   ALTER TABLE ONLY public.payment
    ADD CONSTRAINT "FK_f5221735ace059250daac9d9803" FOREIGN KEY (order_id) REFERENCES public."order"(id);
 R   ALTER TABLE ONLY public.payment DROP CONSTRAINT "FK_f5221735ace059250daac9d9803";
       public          postgres    false    4068    238    248            n           2606    49559 0   shipping_tax_rate FK_f672727ab020df6c50fb64c1a70    FK CONSTRAINT     �   ALTER TABLE ONLY public.shipping_tax_rate
    ADD CONSTRAINT "FK_f672727ab020df6c50fb64c1a70" FOREIGN KEY (shipping_option_id) REFERENCES public.shipping_option(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.shipping_tax_rate DROP CONSTRAINT "FK_f672727ab020df6c50fb64c1a70";
       public          postgres    false    3973    232    290            �           2606    49818 (   batch_job FK_fa53ca4f5fd90605b532802a626    FK CONSTRAINT     �   ALTER TABLE ONLY public.batch_job
    ADD CONSTRAINT "FK_fa53ca4f5fd90605b532802a626" FOREIGN KEY (created_by) REFERENCES public."user"(id);
 T   ALTER TABLE ONLY public.batch_job DROP CONSTRAINT "FK_fa53ca4f5fd90605b532802a626";
       public          postgres    false    255    302    4096                       2606    48604 .   shipping_method FK_fb94fa8d5ca940daa2a58139f86    FK CONSTRAINT     �   ALTER TABLE ONLY public.shipping_method
    ADD CONSTRAINT "FK_fb94fa8d5ca940daa2a58139f86" FOREIGN KEY (swap_id) REFERENCES public.swap(id);
 Z   ALTER TABLE ONLY public.shipping_method DROP CONSTRAINT "FK_fb94fa8d5ca940daa2a58139f86";
       public          postgres    false    241    243    4040            w           2606    49712 =   discount_condition_product_tag FK_fbb2499551ed074526f3ee36241    FK CONSTRAINT     �   ALTER TABLE ONLY public.discount_condition_product_tag
    ADD CONSTRAINT "FK_fbb2499551ed074526f3ee36241" FOREIGN KEY (condition_id) REFERENCES public.discount_condition(id) ON DELETE CASCADE;
 i   ALTER TABLE ONLY public.discount_condition_product_tag DROP CONSTRAINT "FK_fbb2499551ed074526f3ee36241";
       public          postgres    false    296    293    4237                        2606    48614 .   shipping_method FK_fc963e94854bff2714ca84cd193    FK CONSTRAINT     �   ALTER TABLE ONLY public.shipping_method
    ADD CONSTRAINT "FK_fc963e94854bff2714ca84cd193" FOREIGN KEY (shipping_option_id) REFERENCES public.shipping_option(id);
 Z   ALTER TABLE ONLY public.shipping_method DROP CONSTRAINT "FK_fc963e94854bff2714ca84cd193";
       public          postgres    false    232    241    3973            �           2606    50026 .   order_edit FK_order_edit_payment_collection_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_edit
    ADD CONSTRAINT "FK_order_edit_payment_collection_id" FOREIGN KEY (payment_collection_id) REFERENCES public.payment_collection(id);
 Z   ALTER TABLE ONLY public.order_edit DROP CONSTRAINT "FK_order_edit_payment_collection_id";
       public          postgres    false    306    307    4294            �           2606    50015 P   payment_collection_payments FK_payment_collection_payments_payment_collection_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.payment_collection_payments
    ADD CONSTRAINT "FK_payment_collection_payments_payment_collection_id" FOREIGN KEY (payment_collection_id) REFERENCES public.payment_collection(id) ON DELETE CASCADE;
 |   ALTER TABLE ONLY public.payment_collection_payments DROP CONSTRAINT "FK_payment_collection_payments_payment_collection_id";
       public          postgres    false    307    309    4294            �           2606    50020 E   payment_collection_payments FK_payment_collection_payments_payment_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.payment_collection_payments
    ADD CONSTRAINT "FK_payment_collection_payments_payment_id" FOREIGN KEY (payment_id) REFERENCES public.payment(id) ON DELETE CASCADE;
 q   ALTER TABLE ONLY public.payment_collection_payments DROP CONSTRAINT "FK_payment_collection_payments_payment_id";
       public          postgres    false    309    238    4001            �           2606    49982 2   payment_collection FK_payment_collection_region_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.payment_collection
    ADD CONSTRAINT "FK_payment_collection_region_id" FOREIGN KEY (region_id) REFERENCES public.region(id);
 ^   ALTER TABLE ONLY public.payment_collection DROP CONSTRAINT "FK_payment_collection_region_id";
       public          postgres    false    225    3944    307            �           2606    49996 P   payment_collection_sessions FK_payment_collection_sessions_payment_collection_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.payment_collection_sessions
    ADD CONSTRAINT "FK_payment_collection_sessions_payment_collection_id" FOREIGN KEY (payment_collection_id) REFERENCES public.payment_collection(id) ON DELETE CASCADE;
 |   ALTER TABLE ONLY public.payment_collection_sessions DROP CONSTRAINT "FK_payment_collection_sessions_payment_collection_id";
       public          postgres    false    308    307    4294            �           2606    50001 M   payment_collection_sessions FK_payment_collection_sessions_payment_session_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.payment_collection_sessions
    ADD CONSTRAINT "FK_payment_collection_sessions_payment_session_id" FOREIGN KEY (payment_session_id) REFERENCES public.payment_session(id) ON DELETE CASCADE;
 y   ALTER TABLE ONLY public.payment_collection_sessions DROP CONSTRAINT "FK_payment_collection_sessions_payment_session_id";
       public          postgres    false    308    3992    237            �           2606    50118 /   product_category_product FK_product_category_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_category_product
    ADD CONSTRAINT "FK_product_category_id" FOREIGN KEY (product_category_id) REFERENCES public.product_category(id) ON DELETE CASCADE;
 [   ALTER TABLE ONLY public.product_category_product DROP CONSTRAINT "FK_product_category_id";
       public          postgres    false    316    4325    315            �           2606    50123 &   product_category_product FK_product_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_category_product
    ADD CONSTRAINT "FK_product_id" FOREIGN KEY (product_id) REFERENCES public.product(id) ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.product_category_product DROP CONSTRAINT "FK_product_id";
       public          postgres    false    234    316    3978            1           2606    50032    refund FK_refund_payment_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.refund
    ADD CONSTRAINT "FK_refund_payment_id" FOREIGN KEY (payment_id) REFERENCES public.payment(id);
 G   ALTER TABLE ONLY public.refund DROP CONSTRAINT "FK_refund_payment_id";
       public          postgres    false    238    4001    246            ,           2606    49950 !   line_item line_item_order_edit_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.line_item
    ADD CONSTRAINT line_item_order_edit_fk FOREIGN KEY (order_edit_id) REFERENCES public.order_edit(id);
 K   ALTER TABLE ONLY public.line_item DROP CONSTRAINT line_item_order_edit_fk;
       public          postgres    false    306    244    4290            -           2606    49945 $   line_item line_item_original_item_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.line_item
    ADD CONSTRAINT line_item_original_item_fk FOREIGN KEY (original_item_id) REFERENCES public.line_item(id);
 N   ALTER TABLE ONLY public.line_item DROP CONSTRAINT line_item_original_item_fk;
       public          postgres    false    4049    244    244            ?      x������ � �      {   o   x��ͻ
�  �Y��=�{���Qz@��C���E����~��G87���d&�/�mk_	\�c�%P$@�BPB��(�\� ������w�5֛���F7�!,�5圿4 �      s      x������ � �      5      x������ � �      J      x������ � �      K      x������ � �      O      x������ � �      Q      x������ � �      S      x������ � �      R      x������ � �      P      x������ � �      $      x����n�H������w3���tII�Ĳ$�)�56X�$Zb�v����>�b��_l�dR*�tDUw9"��q�#�Q/�A�b�O���]���/��J¼P���◦��J_��![�h���ܖ��!%�&��W�C�v[T���=�;��ʞ{H��Tb�T�V�Q{Q�^�wb/ƞ�#���,��]Q��C*M���x3�=�Q��
!%ݮ^<ٸ3�/��H�E}U�S-���њ� R�lW�-4����B�dc[l���p3���C�,viU�-��2T�:H3�����C����4D����i 3w*KfqP[�7Q�7�Zl��]n�%��ria��j��3��̋LE��] SH���\%j>�}�i��g���g��� ۪�q7���=��n�О�s{%CuT1���L(�v_�}�]h~�B��/۽l{���_Lf��YMI������v+�l+��h��cO�����;���"�(��:3,�D��4�P$���O��\�aW��l�Q�.���ώf��_s[����`��>�0!ߖm�B0�]?��vw�#�J����Fg��X^�P$],���G�0L���������GwXخ�|�V�bm9��^��Uu+{�W&*�¤�����̫\)D+����c�ފЪL�ٙx�:�iN�U˦A���:2�8�R����z�Ů��M��x��������Y[�j�'+_��r�Hg���/�6�����L��z��۔0�
�k��vWS�]�]�7r�{�����Xa~��dR'�]��� ��iv���ńo%2��6ǵ�:PV��&�2	Bk�C&W��⢅s�u��6���eXFUg
nپ@J�λ�0�uo�<Ĳf��U�V�8;$�C���膳h��MW=9!J �5��C���H��t_�/�bGD�H�I�[h� K�*���ݫ�ί���#{�X��?v:�c����n7�t�݅���Ǟ��8j��%ƀ�SU
���{�]��FT-ʊeߛ2�;��p�dD��X��)�~p.�Q��T���K�ۣ�/��=��QU�@��E�;F� �GSw�v�advڑ]3���L"�	�vWv�!��+}e�r�cFw�}��vOv;���y#oe���!��_� ݥ9?���ןl�R�ݒC#o�͇�Oi��ۺ�䄟R�K����{Zg�f�fQ�v`�&�U1��v)����'k=u��3�F>Y?�����5�,�d��q��H����V��Y�r<yB9���yΜ�>�Ӓ]�}�I
��� ����NH��B�UZ��5����Q��,��ה�T	w��p��ACF��iP����hã%�E ���6�[[Ͻ��}������m�Vf���U�t�F����8�i�[��r�;Ag �w(���d�쌦��=�
�nC�_�P�D���KA[�2�nӲ�����cHI��3���B[h��aRۧ�I���M�C�\��F��J���mh|�8����U	�E�Z`�\�s����ٕ�U��U��7gF��=� z�i����ov��mcSQ]�`�plq���"�Փ2Ls���a(2����E)�Y-0� � /h��Z{�8y����	
�@C�����Z�8��i��I^�"}��g:L��j�}Ή(�_�^E'�����	)��������)����9���WY|�^K^�B��w�~v�>�Z��T~	!� u��]T5�>L���6vx�C�"M���w�v�M�>�֝�ד�/Z�^z����ro��4�$A^[�/8�?M�F�dELҽ�C�Y]W��c���a`9����(���Z�DmM��b&^��Uu��km�7�@X�0�8�?�� ��@KG���l�i��>5�B('�'.mI� ؕPGh��l'-��w��#�,vU"��v�6��7_��=B{��Zha�I��f��pF���NH/g�m�|���<��a���j����� C,�1��CLښ_�2�U�p��R}��S+�	ܒ6���$��<&�~$� {�!������r��R�����ƾ�{A��<U�//����
�E�NmP�LUhj�q�1y2ul��mD��� ��-e��s�5�큠��c>z��]����q��?�6F�k~�u~�)�n�� �n_�QX�plPe�/��#nC��bL`#i��	���x����L���2끿�v'�����f�{�i���.F�!ad�Lw�T!��k�5� �	�fhZ2�
�nK�=��U���k$�[B7��0��T[\�^|��;��ŋ���Se���n�t$���oh�k-����+a �sP���هs�$���m	_w4� 
�,�Ś��6�]�x����L��[��k,_Ɏ����P����u+l0�~=C����l/��gu����_H�
\�י�9��<i0�~M!&J����zy�����rz��k�Hy���iuQ����x��h0ߞ(AO[�œ-Ar��ؕSe���<��;$V�!�­2��`�=�圝���<�ߧ��l�x˙��ON|H鎟>�e����o�<JC?er�'Ũ��?���u�~����N�[y��y�����;9�AL��a�
 �%���;��<<���gc�Kv���,���E��6[��ޏ�	H��J��O����
�D�M�s���*^��m��^��3gh/h[�`����UG�bW`�����S�<-����e���L�3wX]C�������]�� ��O��6�P �=� ȵ�X������"H�"�/8��*���_[O7խ�,,���^��F�������a������f�235����r]��#��\����^|���'��:c����p������f�Q\�$T{���p�f��SyH�6��0JD|�x�6C̜�:�W#:���zP�δ�Ƌߠ�����E&Ro&�������W�']���Zi�+�z�68����Af�$�`j�#��t�Uf�W�o�%.��=�W��f����G(�N_��_M������*ˏ*�>63=���P��՚5`�����@��20r�*�����6 ���sU�n���q	a��]-�nV�XX�_mɅs��� �������(��a��Đ>��/wDp�Ý���X^򘳶���v�ɺw���M^U!�2Ӥ���d����8 
1X�M��{����o5j�F���O�#x���S��T�wt���%1F��X�a���{���{2d"-�Й���08dFA�P&*��[���u%����|�q��rX��}Tm*Kw����;)���>�Fƕ��w����gl�cH_�	6����� !�c���]Y��5�^�۷�؎$TJ��� .6�ˬ4ܮ$g�ȥ(.��=�EpV�3&'��ۇ��ҋ@O?���Kvz����3S7�}�F*2��H$y���+�gǮЄ�}�Q x��!� �<�0 S���c��{	�d��^��G��#���5\����`�`�NJ����'a��T���WϿ�f׋Y��K�>�	5���3�t&?����oa�j+�<5�����6��$�89��/��^�za�Nc(��M�4����Uz_�'9+��t����R�n�+f�󛜣7d:����K�nb�s(`j���Ԧ�פ�,bz�t��^�pN��xO
�+�a`l��}V��Y�!��c!ak��<䌗:T����ؖ��z�Y�s�,?F����n�H�l\��xB�
c'��u&����!��A��|�"x|s����ϭdy��|�K��C���y�Hk/���v},;��v%��Y߿����::���Q���-���-Q���jK��<���(}ΠP�4�%���ӷd�,�T_���A`}S�h���z��M�#o��:�n_|g�pA7~P&a�n�M��e�P���� "#�4�uJ;v�w]]Z������+|���s���4�%{��B�.��7�P���6��2Epe���!�o���̜����~p����_�Ər~�� �¬�:3�z�4���ŋi��@�2cd��ڼn,�GwU/z��<i,����� �  a#�A�Mﺿ�f�^?4+wW�5^��/H�jI�ŭ�_�`���B��a��3������9��?]���!�|�1���3n�,CR,�6=�m"��NZ�� "��5Z݅�^��h�fn.�7��d�_�M6s�q�{�[���k[��ۻic�89����>1%n�!b�ZbbuЖ�������77g["?r�KRk���\K��Bse�t$W�o$��6c�"Շ�C�}hٙ�v:|�H�,�%`V���b+����$�%϶H�ǯ��MC_�䗝tq#�(�i{��1���e�4�H�g�޲����v��f�G�6)N�:K�1�.&6��H�4������-��
&��Y�ʄ��>��'�_Oh$�f��}��t���`�!2	2�J�z��2׷_��o9�V�a�����f�� ҟ^n�hb �)�;�ͫ��e#���ʻ�^���:7�i��#�b��cd{r��i���l}xY�S�k��%�~lN�/
o�k~J���BR짝�X������n��_/*���ɶ��D#��Z|��g�5S��콁���e2�5�Ё�2��Lz��H�����<���
aK��G�k���\�ғv�����fL�s�W�:���w���Yω��'O�sVo�ճn;Mz���魾��g����w���d����3�k���J�i?F��E#�*�~���B��w���m���|Z�^U���yk[��M_>-3���[�����H�"�)�k��[C���� /M�g�)�*<��tJ�ӳ�Ǳa��wUͣ�$ԃǿ��fC�#�ߍ�5���G�ÆͦD+d�_� zKC"G�a�f�znF�f�%�Jц��'��<�5A��	���Y{�]��԰���H�B��cͨ��R[+nW�B7�MH�c������SDW�W&X��V]�ܓ"��D/Eo���t���q��(2$�=5���'���,k�E�މU���_$1�AJ�6��; �baQ걖5�̤�G��י�;R�~���-���~^ѡwLr`��d0�j5�<@D � �A��p�����<e�۲yп.���]��E���@ŷb�#��vg��v%u�T��ġ\�������ܸ��'�9з(/�'
�����z��3�+��B���})/Rj�d�Z�i7Yy���T���V����y��Y�y�����ZBY_���^o�Q%�*��@� J�����Ұ呆��0��D^]����:k�b&�aPX�x�!� 	�\*���|��߷`���O���E��-�!����]�柫�ay��jmG�^�-z�>i�Ş�\q�bݖ/*�Bj�%YP�+�Q�/���/:�}�KbS�@����/�UV���@���!�)��b���c����;��흫���D�Q�����~q�9��j�fB���z������%���(i�#���fԆ:���7���_����w�ύ�g��~�4�����m�|����j@%_W���dd���ZL�O�ON�����W2���7@��6���m"���p/��:�	Ӧ��}�h,�ٻ�� e��R�>����/V6X��u�]۳'q������0N���>��S���@��i�m�0�w�����J �uG���]=G�T��K�㟿������w�      "   �  x�]W�n�]��
.��|�a>D�);��f��K�]ժ�&�\�	$�Y��ęL��h��`&`�l��$�w�~`~!��H�\�E�孺�s�-�eD{�w��:˸aQ�c�����j�����O�j�u}z��������_ҩ���Z��� ��W�l��Ix�����9��9�q�m��x�Qg4��H���x%��x���}����<oS��©���fJ�̬�UI%ZSQ©F�NQ����𵢜�6�~s���߰�Z�����#܊�<��خ�.q��Y�X/�⭞VKa*f_7)���)��\��D��֜��������n����M�:���-Y�D���{����^�q�a�<��n��[�Z�:��,T��� �P�.�!uK�t&��`�A��d�lͬ_K����Wu�Li
��\!�5�3���}Co�����5�8�.�]��Y��g��ɵ��':�^��M�OHX�3Q�����}'�J���}VPo�@��LXl-������#A���Ӛ+�а8v:�y(w6f���IO�o��J|��얂z����B��墎`�Ni��_8��"A�
,��F�9�.P���I�B�����)�SCX}��LZC��`ܝ����u�J/�GHd����B'��C�ǂ -~�AYiGl�qA��)���O�� n
��T3LE��������@'<=�LT�-/֠J�.\�1,��]]X��^��&�*f���`0�"����m'%�_�e�����D�B��:�Q�]����'t���9Ϡ:�E�<�4�á-�!���Z�2:��mXUTG��@�a�I)Uv���.!C[����]����q_�*&#C�®#�b�#/	�Y	8}��4xoMĪ$�RdL*��o|em7vB0y�щg�W�<G�_n)�\��lF����ޕu&�,S:��>Z�u��3 /g舏l6�;m�q���G�pG=�&���.������m�=��b�(iX&^�j`����ibhx8����W�Jj�D�i"��=p,�� �Y!�w����-� 6]E4t^���y9�W ����+����տ^�޴i��<M@a�ŹP�`�9���?nc�-F"��x�gH[0B9��K����JwEɪ�F�[�J�Ͱ�/Y���t�WK��
���F��͉2lvy�1.���k��4~��QF��ȋ�"�tH�Yst� �1/�N�M�r�~�T9�y���;3Oi<Ґ�p$�a�ɕ��Ɠ92�'�c����ױ�1����ӽ̓/69�>��}|����-�w)˟)�Ȣn,�=�����vY�O�&���v<߈^;�n,*����	f�e���V��W�u2��>8��Jj���5�&�ǵ�,onL�Ch5ڜg�D���7m�Wx7E`w/_�]����gw�W4w���Ѕ'n�Yf�	ۅ��W:7t<�ѻ�[&����G'�a��/����,ԜBQ ���0��դK�
4����v2�dQ�n2b�]gy��S���-2E�\9�����g��V41>w2�i�hEo�M�]rC'.��W.�@�lBA�hv<���M�f��Hڋ��_ڋS�{�Cs1uH��.΄jV�\��fO�)f4��"�5��>�7Α 77�GG�(��ॎ>$x�q�B+͈̕嬌#
l���:��� ��	�B�����)(x�;�֑�<��*	���o��.Qפb�`��k��8�y�a���
t��&���?�����44�U��z?�ப��s���HF<jY���Xo��>'���t���:պ�y�x�j�����	����]6�>4�X?�o��K���`�Դwj%�z'�'��^֡��s�縉��ۛ�c�ĺ���^J��q	��H����<��ul���{�1�{���xԴ��N�=�v�t��T�A�5��S��<�g����7��sn\W�!\�FO=���mr�⋄��*��'�����C��C��f���!�j      `      x������ � �      >      x������ � �      h      x������ � �      i      x������ � �      1      x������ � �      j      x������ � �      k      x������ � �      o      x������ � �      l      x������ � �      m      x������ � �      n      x������ � �      I      x������ � �      0      x������ � �      H      x������ � �      [      x������ � �      �   O  x�mR�N�0<;_�7����(Ti�R���Ф�b��]�P�z6�C��b��3�#��D����`b���Hk�$W���몀��\+�F�����T�Wޞѣe#��Lv�4މ�A� U�ɻwJ,�զ+�����w8"D���
N�Yx�t?943AGB��5b4��G��yGf���3�E7�=轩�L����c�ͮ���{m�����5��Й�9��&V �y���=*c�5d=ʶs*/g�.x
��,g�[��q�NX'Q��w��|�[O:�v8h�q��\��h��9��]����tc�5Z!N��bO���`���ƪm�I�����             x������ � �            x������ � �            x��M�+M��,����� #&�      4      x������ � �      :      x������ � �      @      x������ � �      '      x������ � �      _   5  x����n�@ E���7�a`@\UA쀌��1ix����k�����&ws�=�C��7 Z�jM�TtU%���5u�˶4J�/M����~��汎�P��C�$*�&�X����v��jU�"�+j��"��ǭ�2+��@�4�ui���EP&�{��c�����o=o�5�WƆ���t��9t�[�^x�A���P�ob�k�!�i�yD�e�2�=�P0=�$4���6G��6��,ޔ����&6tT���fzQFէ�j��W,�.�Ie�o-*�-����	�}�6y�      9      x������ � �      r      x������ � �      c      x������ � �         �  x�mW�r�8|&>f��i���+�$ϼl�LB�l���m��f��݄VzP4YYP�u@T�
��VZ��o�6v�K�����괱������6M�eS_�W`���:h'$��.���x�t�(�x��9�ߤ_�C���H	m^9Y���>�u�ۡ�
�TU�qh�z~|=�]���0�>���I1�����k��j��4ߎM���|Z�FXW�c�������>&���&8���8�~N����'��AX��P�i^��>�i�"C��Bj�h�N���S|N;�UؙȜ9Υ��r_:&&2]Apo���U��u�[���4�Ʀ�2A�I%�0V�@ʿ6�6&�A���J������~��}���r� 6{X��4N�j���ԥ�>z!�h�y*�L����M�����uh{��5Ӈ_�4P&�b��QN�W�i�נQ0����
D���媊]7����l?�a* L�
�}0������e����/��).��G�T���QZ���j��i�5�}���̤�x,�d��~Įm����a<�@1����8�s�W����8���>zX����4�y�n�s�6F&IJB}2 ��߼e�f��^D Ti ]#�o����p�nt����Ҏi�� 6>L� �R:c4�0��4_�4^��Ȥ�h$�V.��l�L�/כ
�Y�he�_�������!�
��
�,�P�v6���i֤��"�u��sc��O,��
f���)b]��*d�����	��i����q�2�dB��R�i׳n�L���ў�&Tˡ�)�}z�ړ�U�܍m�>��@�"⵷�������np�������Ô=:i!���SQ6v��r8�����-����÷/DTX�"΍:� �
�;4�����X�"����C�Pm%5�ڧy��q���5f�<�I���_Dx�Vae��F 4qOr:�W
��l�z��<�h!����3M
@7BE/@kߣ��wǯ�kaeZe��*h��]M�Y�����nN�5Ǧ��X�7L�(����RA�9>�����´�@5׭�������[[��4)T{n�^���٥Ӯ.f�I�'�*�G����������>v�I
�y�5�!�˷��^���V�3�f�I6��Hd��k.��|���mw��_���:�P��ݝK�ISSa���CqF����é�nL̐H�7�p��C�Y�02��h�Vs7�M��
3ļC�)��*�sj��s��X�1�h�t�TKn]�&-tTu`�HwZ�Wh�o�q�03ļ3�št^���4O����0�i���)j����<���u�XS������_��p��ؔ�c%-`�f�1x`n�Qs庯<O�����'7d�4�ݘ���4uo ̪������o�x���w\5��}ׇ������"]x��FZ�S�aS���9"�bb�f/��r����T�m��y`�H~fֽ�>�,�Pq���T�&�b[|��P���y=�:5�ŴpF���f��M�����S���;�ı���uӍ�8������mu�m�m@���zce���^�[ ]�t��~��So�`��x(��j7��X��� ^��#���^c ��+�v�̺)@̙�Q�j/9��oF�4�`y� Q��c��9�v��e�<I�m�W\���ZJ�ݥg�alI��b�eΓs��C�WWf�S�x{�)��?�`��?�W(      (      x������ � �      ^      x������ � �      U      x������ � �      T      x������ � �      A      x������ � �      �   \   x���K�O,J��K�70�24��p�4��2��r1��4pv
w�4202�50�52U04�25�2��355107�60�26 � Ə3Hp��qqq ֳ�      =      x������ � �      L      x������ � �      w      x������ � �      M      x������ � �      v      x������ � �      3      x������ � �      x      x������ � �      z      x������ � �      y      x������ � �      %      x��M�+M��,����� #&�      2      x������ � �      �      x���]w�8�6z��+t���uʲ���8�J:�Ӟ8�}f�ѱ�b,KٲT�ԯ?� e96I���fM��<�HAnˢP�&��E�^ӫ^�۷o����#��y�;����mY�k]7�.��l�ghnӢ�T~D����iUD�eS�B�<}��ܖ����᧌�A��d�Y����&��P����3�W�Z�h���+ n�<O7Bn<���t�*��h����dt�_��h�!$*�:�n~�E#��BU�V;������E�bYWiz��OIj�ru�-*�*`�^K;�Y����]�b���SE˲YgJH�ZG�j!A#��L��{���K�H�m���8~ۥP�;U��o����0悤�4 }.�ZF0U��No2< � �K��a����#K�ͦүM^7U*���{d����}��uQ���Y�m2��H���	vP�7-���qI��kH���M֕�~������Q۽� r��*z��OiV5�9`�5�Sr�_��X�5�ܲ�mPm�3�tP��0�b�C����	�Tu4�C��c�V��~/`�|-�Z R��-`X��pTЧD���}�'��o�ě���FW y�$��/���	�Y�3��;V�˻$�x���D0a�T-���b{4����>�&����y��������	Km2����ڽG��l^�S��t���a	��IeRN�d�|�`$e������,m���-|e]�6�ʏ����^��V*D�U���L��6/�}s���K�:���`�֨n�m��g[`��=�a6�ޛJ�!�j5ZGS�|�^5���Ґ�_oTF�*�=ZF��EF� L�7���Kc����:�ު��;JWG��&����Ԉ��;lo���,�R	֏B�L���?%4v:�t?�L��b��*^A�Q�wg� �ǟj{4��i�*�v-S)��j���ջ��V��+�� $R�?���Y"�S��O��rTؘÔ��?Ao�����6=�{�rn�T��nd�,�J�fX�m���,��/�;���E(h	��,�PP�]V�A�A��X�ݯ\@�^��TdR^N�W*��M���\�����B�`0)�E�v�h��,�����m;���*Ԡ���f�5�P�|q���>E��Ol������L50C̲�H�>��곳��G�UV`�g廨y����>���_Ϲ�����玬0����IW;�_��$�}���	2��)T�
�Pvv�?X����g�������qu�*�'أI�֌�	�jU������TTU轪��Y��9ݧ�z;�hA:X���	K���ƿľW�*\��_j׬A!Ȉ*3qE7����/�=���V�m�ߣ)��_�N��ǉ^��d�w��y�v[%@����,�K�X��"�mt |Yc�']�`���Y��BDT^�	~����v��!�в�aHvX�[	şz��-�oXwjYGtez��;f�:K��eA�����L�/_���a�D}�	H~�#��F�_f�/n��\�b]J(�����`KWJK�����3�y	`�d�,�ߊ�\�LED�>{W��p�-��w	!���� �v��c��Ҧ�N;8r�,�#�^���6�"�̐��b������7֛w�S�akQ@��.iC�\9���>�Z�$���� �D�y�w�O�̡�k���p��M��m��F��?���t-p$���k�2#C�,R5y�	��D�3guN����@��4Fg�P<���F��M���S�]���x�pS��HjB�z�� ?�
d�Z%��堊�gä�a��K�͢|cw�)/��������gd��Gd��Z�?#��.��S����ꚕ�����ZD�"~�w�`�]�s�|��7;hAgG'�/k즁��<�
�5���흎��&��e;ݵI��f��h�7��;��kɝ�V]��X�R>D�I^�n�g�:�ig�x�|8�?X�qwx�O�M���;+��������@\�e�{�k�]��W/ы���!�˛�����A�&w��Ï��;����z20�T����X?A瘡�
	P���R���~��%�oq�ơ�Ђ~�8@k�	�6�RP������G���?��hV$|J _��\��OT~�<��^xVҁf��I�:�gj�� ~��Z�e..��,:�K~lg�����S���i�;��Gx^�Ѳ�tW��_��[~[v�G~�'���6:C] 휱�	^�\�-��ڸj�P�LU;%n+��ێ��o���'J���w�9�%?~�)�n{�)���J-/�7o�*>�u@)��!@���o茔~�z�pl {�s���C��-��H7��t�2��\�,�Y������(�����c�t�dL�7۴zKSy�BQ�G�!B��3��,㧁�����P���&oƟ k�r8mE�T{<��6�%�O��k�}^f��&!Y�ip8�������`ܼ����!�H�u����s�}Ĳ���EDX���[�,�t�w�O��*/����hQx���6k�����#A��C��=T=�V�G+�ney��66��ei�g��3A�Qe� ��[���J���^��MM���RË�[H�S����4��g�G5m�݉:�y�袗�r C�y)D�[�ZD�$�ՙ�n��wU}L5�PM�:7M9���͎�R��O�a���m�nRu$g��mM��AV��^���f��j�Vf�����t�[U�m��5g|��UiG��&U�C.��;Z���8Tj槩�w�wp�g:կ��Tՠ���I�*����T|�ܙV�s�C�x�)$dOf̚IHn�u�~�.����f��7v��0��5� �]�����>ߕ��,��1��p)j7�4K���#�����r�i�h�2:o8l���� ��|Z�6��m����%��� �ٜVݫ)�g��hzq��H�B,%��y>��:������'���M�������l{UVL@>�8��$�&�������G�����6o������j��<�.S0-wpg��j�m���o�w�N�,�/`�ǫh��/�n�O�w.��S��k��*����w�7 �5L� 6��A�
�Y�O�#G�htai��e�;�a���������]�I�i�s&���M�A�3�o�������[��.���vL����`�'?-�.B��PM���T�Q, Z��=n	�����4���U�}�����G�`͞W�᷀,�3��L�m���KA��~�@qa��t�XZ���͒���ac������ �Tm���I�ȗNDVtɴ�{�楸Q��&<	t�Eܛ�`��dǣ?\x+�C�4�P�W�ig���h @�/������O�Φ�0��TE�MWbҹ���ɠt��}�h��R:J������΂��q�Vt|"��a���u�����e�LA��D�	mp���ܚ��f0>�ny��j�n]�NGSw��8h�B�_�9ܥT?@�2̻#5�P��#��,��!��͹N��,��U{�:�U6>�!�ۢ����#��D��P͚�Y�;�c�&�������{�۩�e�u�U#��,��L�fU�I���J����jD���~or+dm�1��D`	]�1�����a֏��嶡}���6DTgMw����p��l$���GpWn�ø�c�zԇ꺮\���:KU^���f��&�5/U���:�8��ǘS�:��[�np	;���Q�P���oy��u�K����˅$��d+Xcò����h�C}�S�K(��go��Ȇ"��*��'t���D7��G�8��xKa�c��!9�O	ѢJ��v����C�.�?�c/�|�;��{���ͼ��$� }K��s�'b�L6��l�TC/�'�0ї�y��dUx��*���8.H���'<@T0�s	�i�Na�0̴�o��<�)�)�0�@����-6�a�@Gޣ��݀���jE+H�pO�l��/�h�u h�#�>���"0_�6��q*5��_�w)Ͳ��7k!"��Q�`��A ���-����� �,:��)�(�/���M�V��`��	��������6Q�}�2���i�$k�{ͨ    ��k����+�0>d��E4�������2h�@k4�A8/N����c�y�g�Ѷ-c��0:Hm�3 ��H��w�7��PUE�OaU���O봢��֚�r���-�ݵ"h��j��+9�oG�ְ(�S<ZEh�T���C�P�ɩ&O�kj�פ���e�8�=Q0�4p�t��Y�#t�v'x/v�a���<�8��숂c�^������4�=}؅�r��<��gYYQ�{!A���@�*2g`@�ѡA(��+���`j|TP��*���W��z��׺�C���; K���}P��Q�5�80l�-��T�+S����˯M=�k�]��Ŝc
�8ݼfF�����#t�U5��Ph��N�CV�5���ޕ[�G&��(��w��/�:����ȩ�LKz=G���Lz��t��R�ʷ�� �F�\Y�.	@}5]x@��*��=��H5 
>7����f�f�ۿ��g��`e~Z��j�.tc�|hE0��f�t� �m�(����&�6-75w[.�f�n��:�Q[�'h�'�O����X�����fC��6%��� ��H�?ɐ�wF������V��Hv������W�/�eC[�:�Ep��zR�@Lp3�<�O��t_�fǅ�]R�8�J[z�@�h+�	������Zm������S������ɱOP;�����J���v�KaF��/A���C9.>���\�]��e�+�(�U�� a.��hBY¬�8�&�#a�rq���&L�~uHV��3nc�����Z�)ȠnM�z���b\�rS٘Kx���=��*>���AС8���R}�����Ǘ:G�1J�!��W
Q]ZPҖ'C}�:pw�xϩ�B]嚫r�)�.&=�.���,��*�95���r#I.�F�>�ٮ�a@{n_	���s`�g�q�.�0e?ֿj����A��z�NX6+;bz.�1��������w%p���squF~��k��+��.v�hE��H s�]�[��Vә�� �b	rj�������� �y��pkl����)�9�i0ZM>�9�5�a���F�� 'Nq���]�|���� N�<�e68 �4��A���y�������f���j��=SE�s�M���L�
S7���puf@���\�f��w(��ؾ�P�3&q��fm:1q��e�_���.�<-W*�A�@g�ދ��޻/��q���s�+��#�,��]՝�U݂���_Q@3�U�	�D1&q��:Q"l��͛b���qi�+�u[�K�n��P�S�f�2 �V֯�;�$�1���沜�,À_�)�%2j�צ$�<��֫�z�)�����w�qw�G[�{7������	䜽)� "������9m��,7r��Ze�2.Nt�Α}�dZ.;A�{я��jx4$�qtʔ�w����� �S'�4�AF�{�-�ƚK�+Jm�<�s<}�&4v��3{�dj-�F��׸�\`�}.�iG��d�H܃Ke�BL�c�Pofw�A��	]`;Xݘ������Li��s�@XV���Z��~g0�΂��E�=Z[�q[�аO3�'�}�7�r��Y�kξe�v�����c����H1�N��`���8��sSmM]�#��˟�mf�q�>�JKb��X�v?F���w�8��w�߆��&���^Y�5pN��]���7���*c�{��X�fgd��J�Rkܬ��ް�����.C�.�ۿ�-�p/��v�TT�cx��C��|�y9�Uܰ��|}Ş�'���8͵�N&�O.�5W5뤁s2��ڬ����	��r�����r�u*�4؞��-ͩ����6�J�55w��a��F38'�	Łd�{�fsf�s��X�4QC��b�͛�+��4�Tpu�Sjkq~�r�}<f_�n&��gfP�>3���97��ZD�,rN�Mn�u�9��kY�7�}H:��Ź�<�j�3p�h<����w4��@�0m��6e���^��Ml�'<���s��� a`ǽ(~Rm�5z�Q�9͐���>4�<Q�꼤��u��8�H;(����_���p�3��b��Ք�Yd�+�W�(!{��T��C�����S<�C؇"z�)�D� x�v���2X�YK	�U޴������."aX�s	#g��ѹ@S]��Ung�i�����[M����>�3T�y|oR6�xD�vc���0�3:��M�1�Z�m��n�V3���ԹI�53�|��G��}%�W<�0"?|ޗ4��c;D���N.��k�b�Ws�<@o9��J��r�w�=�O����Keⷩ���U�81�o]��+o0��Pɷ+�t⃅�[�����{֮�K�<�f�w���\�,U]���7]� ƈ�\�;�C�<K<�k���LY#����<����!d�v�P���3@O�Ë�����Ǯ���+�x�.�|�'`��9=�Z�s_xVu�����Y�q.^� 3��a�]�_�F�9�SYC��������	:8�ڨ1!�q�|nx ��0L�9L8��c�G���6<�wL�� �D�
�Ӈ�;n*��`z��Lo�����)���D�J�������B��锡[1/ѧ�|ѥP3�K'�������J�y#�gs�[u6r�1s]�fVF�Iq���D���pW�h����x� V��p�c��M</�
�4�Y�����9�}�d;zpe�.��YU��<v��\�n��lij?vM�?v��������Ǯ��փ�������Ё}Tk3W�GW�p�(���5_[2"=v�4.�kcܠgչ�-����s�Zuxq�++��v^��ޞ��9V�����s�x��~���7m�Ncx�og3��t����k��Kx��t�!G�N�.nC׬(��\ҼT�5/L��>�A�]����?��ex�\g?�u���e	@3.)�w�M{��C=��a�↸p��kב�5so�Ρ����F���&YS���~l��[9��A�5���҂y<���\��*i���=�
G���VYTj�5���F�S�H�ܸ��qY��v��`���<�cW�``�F����U
�>B�Ct_ ��i4؅>��[#�O�>_d�#'ze����y���) 9���aI��g�<CC/7����K���i�5�)l��F���c|�����:�Y1 $��l�����t�X��!�.�-c������)�=τ�����\���V��������pL�����IqX�Oe
9�Z<��U�Tm����R�}}e�� vV=���S�pI�9V�躕)�̢�f��:�}���뇉�S0�M=�1f����q[Z��_����O�HL|N,���,����ɥq�1�sܺ��9CtA<�O������,#���>� �����o����kAg�=�jk������Ȩ��9��xk�-9ǘ{�.�w๎��t 8/!y�=WyX�V�OC����@�� :'����rN@��I[�sl�=##��sl����</`�pz��sB2%���4���f�Q7�n�G���y���-ZEnW#m�sJ)0J�����x2�|9N��NSBH��.j�e��~Z��x�g^���(Us�	ĹO��%u�8�{�C�LYn�ӹ�r�v�z��<�No>��;m*��A��}��n��0��F8&�a��gUgk��nT�	�~���	�����F�ݝ��+>l@��G���a���y���sw
���6��'�f��t��)�y:2kNF:?ڠ��g���O*c��y�A�E�Ⱥ�)���Kҍ�x\3�6���x[[��>E�q�n�,�1�$�96nfO�݁0���}�oq�k��p��%-���e�KS��[��땈s����,�h�������s����>���s��2��z�#���3Y��s�'�u\/$h�! b6�Ή0p�g����.����t���0U�(
�OX	�����ALO�i�f���
��nU�i����a�j�F)E���ʟuD���"qR��t�����2܃��<��x��8���������̓⡥&���-�0Y��A! "G�PE�7f/��    �1�b�`\ŋ@3�&���/Q����qh�]C�����t��QC�p���2s��G��N�؅ W�A�W����@2(��(�w��?qi������RA��;�m(�96F�&aq��VZϮ헸�Ľ��z�0�)����B�w����j1Xݻ`0�kMX�@wY�2a��,�)�؁�����;Q&���oe�:�{�̤8p7��r�R�S�����uu�F���&��e~&ء�_z̼���1�|[�����Y�d�,h��3��/���[�2�,�o���'!�?EߣG)t�e�C�^^_�]��-��1P.��N�pU���`���2RZdWJ]j��:�
��k�1H��[c��)+(\M��G8��!�/N�YP�\���d��9[���0�-�!����[mx��uF�j�Y]^|A�Vl66�Gԝe�p6�.'A#+%q+��}�&��w�~�,k�7JͳD9��M�Tf�x� '������,�Vfֹ uV�4]�ѡ��L�M�s.s�0��F ���Ejבx�d��1��ZE��w�i����C�w��h��Tl�}��v�Z�����9 9Q0.l�.'&�Y��«����V]F�Y7�V
_(�(b�+�;#�����^�,x��/�s":i*��Fе�3c2��K�I���]�@נ�*cl���
�ךy��F�zj�M��[ N���k�޴rM.��Z�J�!�����3+kSc�����x�b�SYV�;pq������k{�t�b.����A�b�E~��#j*���}�[q)дy2�c�0�M"N	:O���&��L��v�0��UE]���'0'�5����ۉ[q�j?�nq���/t�9�������%p��a�wv����}kfx����p��G��~<�g�By�H�@�8��r1paJ�}��(n:����!�tOs��v�����oc����vI�r57>��z�1;k>��pW<7g?�� a�IN�(W�o�Y�i0�J/�ӖAC���(����yA�PKI�@#��A��Y�Sr6U�Ȭf�H� ���k�Oɝ�I�����k�E#��������+^Q Y�� �e�d�C�%�N~�QNh�!�y�/��K��c7�<���V�x��ʇ\���a�-c,]í�G�WB�E����eJ�O0Q�:��e�kd�何�Q�;�X9�KCaUݛS�ĭ��A0��W���������Gi�~��i26LN�l鬒b���v�o�Մ�}~y��b^�>��1[���:�c>S@P�����FR?qOB�0��8lR?qOEl�_,
4�ys:<�v]Z�s��Ϋ�PY�kb�P��Œ�g���.�3&�_�!�o�kT���У���3LQ�v�	��s��j}�ٍ�-(�	f���d�ʈ�*+X�����=@����0�8��u�������}Bfk%��W��;��_�ώX���f2���Yh��Y�U�֎2t"��hn*M�����'�L�=]9k�Om�	�ܧkgG�.şkܴu�x�0ȥ(����`��l��˚w�f��hL��
�R�t��%d;$�#���i�fR��ǯ�G0�h�a��8�z������+1�{���S9��?qc�W[��4��v×Z�+���U�(Y.��.� ��E��w[t�4�@���.��'����8H�㴆P�f���q�*<��m��#���>e����a�tm�=rcoL��ne��9~�����;��� ��h(J*��-�y�gnMq�!�>*L�*E��D5���=�u��N3ס���hl^S����3o`孷fP�^�vVb���[��i����%�y:�0Sf	���c�6;?��pO�`�g�,��>�<:��[)���yh-�"��{��^b��E��:@����#���y��m��h���Q�Tھ\g�9�q~���DNE��\b��b-C�%7BG.�	�^�1W(�%k��χ)�jL�|3 ދ\��5x�HO�wo��e�=w�6|�¦�m��B7��i�^�L���D����8P���+0��i�.�'ЊQ�}�ZR�*�K�ɷ1�lH���GG��4q�~�=PӪkʝ,���.��g䬚�O!Ew7�X�� O� ���:�8p�,v�Ϥ$�q����~�b�Wd�R"q;������:{O�:������m/�n��j���g���㾧��?ؗ�x(:�Y��HmV� Ń*�v�#�e�=���F� ��oA�"���q���?���?����ƻ�]�y�K�����XܮD�Om�ߊ4��Ŧ����������d��w �
�a�$�;�˺��&�`=�;T�Kxhn�yt+��i0b�h3j�\�}� ����/-��zP��OT�� G��g�pTm����#����h��mZ�t	'@����:m�v��"���=�I�ң{BU�ÝНGw�e�SFy�D�.ZFˆ����i�0�3p�U�1�h�)�=��=�+S�g�.��%/��ޣ��%k��=��S�����͇�#�}q�	#����3U��|B�C�¸��>�$�,�XJ?�[n�W�7�
#g^�<���V,z���^eyiZ�O9�(`ܵ�LN3���7����RDz��A��)�saT
F.q�R�kd>�'�s��~�������6*�鳤��0�r��Um$-�ηx�o�(���&u�s�x������+�Z}@hjۧ�	�|
���+��>]��7S�J�`���0T��Vx�G���M��OM�S�&���à�y�7��m�6� �}t��~� ��4K����e,�}��k-���t�7�R�t$�o:cd�#q]e{���;���?�.�	��e�z�Q+,�����D�ģ�p��B	���=�a"O�Պg��7K���ey�ۃ�6�h������i����rȔ���7�=�X��䘫�k$�YoZV����7���{4���1ROt�{Z��R�����]\)���?]@g�ÃZoaf�^����&'� 5A}<zTy]��2�B�J�g��h����=�F�v����������� �v��Q����-��?���	�6��6�=z�xL�{�h�0O�����n�ә��&�ʌ1�����m�0Oo����n���%�p�ab��p��r��wߝ�~뭐�Mt�pS׊��o��u��v{M ��Ej
��Y�K����N?�8���:�}�n��%}���*	];�^d.1�\D��=��J�(q{�u�:)���=���Y��k�A|�X�}��C'�l$c_y�G��n��(�ZB��=tl�%5�v����X�?~yBs�Gt��a���^Y����_���6�w���Y���cm���Oc���D)3-�.��U�37������5��+/3��ܾ�&�N��[)�8̛���v�<`�0�z;ӆr��Ma��_�G�3B��������߮��	�)�Z'�m��[4C�H40(�U���>��p ���a�֏}TUZ���7��>O���'Z�\@����y����򵄕���Fm�e��B�)�|f�>�� ��S�v�&�òN�������@��8���"�'_�/�w��E,:�$�:}c��MU�R�/?����I��RB?��%���)Zٻ������p�nՀxFVm\e�s�姙)�<Xr!4�&��E�ZH
�L#%(��'�R��z�����C�#SWU{�K�
XG����K(>���b�(l���}�?����N�S�� �	d.���[��_
�3��N���Ξoc���YO��%殠S�nW �7�5̣xD���X{�ʑ���2�{5��7}��� .��� u|�ũun�1.��w?�)r/ �U�R�[���ɝ߰��"�m�<]o�����=������nM;<}h���wp=���A��a������ҕ9V�����@�MfK�&�q��5����[3Pc�L<19ts�54(@,�����.d��Sݥ�3ݖ��_�+^���Nuؙ��    �ez�i�c�����t��������i�Ae`��3'_�@�a�����=�T���!S=�
��rխ�Gb����"�Gj0��ħ��ѯ:e�WV1�:����Y��8�Oj��)|��8�*�<�Kq�En��>��KI�Ue^S�G�y8>���S�n�W�7��ξ�����<c��{x|&>��Ԙ"g����L+�����y`��=^��d������-� ���O��)|��V��G=�ـ\��9~����8M�к�f,ʽ����MJ+C.�k9~fC1�����aM|!8t���}���|ő�;�����￭�^z��4S������Ž@��(�<�����o��}oGg厇� �����ne�J���]�2���	�*R0��.�63S��?���j2�^��s�����9-T��?�y;/�p�bo^���틃�X= �ww�D��VL�WЏv�1@�R�]C�����Yjw���?a�����GC�r<�.6F{�C��5kGo�.ti>lu��LK��\p�>��"8Շ���]uޜv�%�.?%���̱��޿���@*oGbXNkz��n��@>��*��d�T@z���JQ�1�UYZ�{�/��h����վ���V"�ʐ}<k{/o1g:���z����\�vє��#�haF�㓫��Ϩm�� ����YZw��{��(��I|[(kX�g� '�I3Ww��50��*2��j2�~��0�N�n��z[��{A�-r� ��q��@^<�0&Hst�*���ui�wi2��÷�����j�|�eB4�;_F`&�Qg*A��{�n\�/���%ŜDB������2m��CD_<-��}��_&�]o"/�qL�8 W�x����������[�[)e��"_	@	���,����~R� ��e�Z��!M�{!��A�2������߿�l/vk؋���%� "�ă"�۔��K6�'>�}��I�MX���w�'9^M����X<c����I��B�e��<K����{ T�	�R��N�R�u�a��P���W.��9 �����!�<*&���aX�L���g��ך6�0^/�����u�H�b��V٤���`~r�0�<��
7��8�J70���N �X�}�2+c�����&g�W�Nն�@�F�5[��6�9::�L���ӣڭ�Z����G4�آ����[�������+U�z��z��f@:��|g�
�|i0�Ծ�pZ�EF/��(�89<���sA���ϻif�?ja� ,���&a����Ѳ(Ơ��ڱ���	�z�i7�)Π����o#P�A/���n�'��Gӧ0��}<>Ц��ٵ��	ޅ�2A����ݎ�4�>o��]�"�}>W	V���2�!W�W4�^|᫲��6@�yJ3U[�q��̍�$�i��}j	���[��s�xD�����8���R�k	P�/����i����Lt0Q[�F߯�0����O���9˚���ty��ژK�8e^��]`�m�7�'D�����2��im֤A��w؉�_+�>��V����W/j�R��a�(	�mEQ#�	%��`o�
cm$!zR�-4t�oP��i�K٘KB�Z)ro���$t������	��W���&���e�Y��Y�_-^�N�{n�+c����ˋ�@��3�`o���5�nlik�RVi�'��@�lu!z"x�@��>N>��_ʖ跕��ڮ�,����i�W�[v0�����ύt���1��0�k��$��(��v�$�q���:0:*�����v��(��4R����`�({Λ���'e4������2�tL�z��4���!3΁��?�Z�0�W��a8S�`f�W,���
0����J�t%�>����~E��9����T�]\��0���#z���H��=��U� �ù�kf
�QYG`X6�iy��Ǩ���8d��F�=��|�t2� ��P��<��KU�̉��fu�2؀)H6};�}�P��b���,ϐ`���oC��/�G�W��+�%����������~����{`w��=P�& g�����֤�0h߶o�[q)��`/!i��%Dvr�,��5��h�8��z
�b%,t�j�cw�!���1�5Ňq ��$��b��%�y<����=�i+�66X�Oj��
��Ǉs��ee��Y��S�Gt�}� �q���V�lˍ�h��>�&�]�&$�b�	�偉��7��.�L�a?��Clc�x�l?,ƯY��&����5`"0W�	m���#� ���`PZ��l��n�������3�z�p�/mΒC$t��N�7��U��вy�ۅ�8Ԏi�M�%�&W��ܢoDf�K7��ls3%�-���IY�9Q?I_��������(��EtS�ge�שU�A�Cl��ۢ�`�i��p:\n��C��^�qەdcP2�۪�N�K���Q��)(3�_��><�j��4��X22���m[2��9:~�p4����pL�o~wO�q(I3c���}9皆-"�|*�H��eX���5�"b�-J�G}��;ı��#L�ysܺX]Ds�+�Q����w�ǸѲu&�����P'��>UkSO6����4������V&�ᡥ�z3���o����[]3�?h�.>Xt5��\����������Y�D{`��w�F��<�m��P��Zh����K`�|�rRM�^���B�-;�F~)��s�*Ú�27T($;y*��!�Љ袩0FW(tʙ40|ͧ��@���Z�^�X�E��Ͱ:��Bo0���}��������*��#�ɡƱ;�����ԕRpL{x�l����$��T��h�!lS����I�Q�p��P-UVV�b"[��>�ǩ� 3XS*�����	��/���U��jk�$-���E���{d�s�[��5�HB//�����))����K�)e�%��q��R�s�a���\H�򎣺�r����d�?���~/`N��:$�/�~��(�B��k�<v���-&y��Cne�	Q7Bc���;ޘ�c�N3�l6C	z��4��$#4@��W]�h����#�A�ò� g���B���v�o{Ԍ=�ݘ*>�U&�
�c��:��f��c�>��i�ۛ�8Yt�W=���<��.�Z���3x���>H�?�ݳ#A-6�a���"m�� �>�Pv�@y�!�a&.����U1F�ggqkX��xc�}v �i��*a���.P�N��c��=/���������c�%v�n�]jhL��_�;U����dL�{L;7���i����y�;��Mr��;���0c��.�.�R����e�C��W�W_���r�r�V���˦0CW��9�A�]��T�a���y��%��Q�a����q�q�����-&�1,郢��'��~c>�(k���������	�;��q,�7{$�at�v���s�.���9~�48�X�.؁�k�*r�w�Q}X4���Upfؒ8�K�xT3�&+L�'N.c�����)�xC��J�Ig�m��1�u֫��u��U��Ci���Lиq��J��<���n�{��f�m)ٶy<�;0G�
x4c�����{��r
dS���g���X�LxL�����Xkva���Ջz7g?p$�1���r����yH/9ƽ'�vi`=7C>�9��nܥa�J>�㶍��9��7������{P�㲏�慧u�0��	-Mo@9=U�g��`̼a��6\�K�G������a�1�����<(���^1h��2�yX�gߠ�����!��7�j��_���a7!t�mr���ޝ��zDk�S�ü퇮�����H����%�\�L:�e&sג�f0�7���B�'π�K��L�0
���;��k<�l� ~�����w>/��m�$��Cv��č$�|c4������kO70S�Z���Jw�Q��ۆ�om��>���J��;vׁ� ��k7��G|f@�7�Ԏ�Õ+?|�]"    گq�kU��Lܛ�����L�Ӛj7�j�fv�� ���l@ѽDx�F�dXbbF�o{S��|��K�"�Bȇ�)t� ��,u���y]�'Rպ1k��l־9�LF�G'��X��iL��������5^�;H����f��q-}F����dC
3�]F`ܡ/��F�菿�֯�E�G!S����/��\O��!G�c�t�2���g�|V�}�ٲY�������R�^�u��wc�R���ƈ�ր�q/��EQ;1d���O	I�IG(+��#P6�P��%Ou��[�nmj{�3?Z><�%w~q&sW�uŻ3����5o�2v@)������O�¿�!@:'�i��Z�{�Y,���b7�ͽ��5�`L�G��'�^�_��h�w�|-���6�e��G��A'M��$�lj�������e������@3���<���j�>/#G_�@�h��w�*3[��y:�UC�[c��!m�8�_%!Xf0�(�� k��)L�ف��z! co�Y�����s �W�yYg�����;3L�tD��Kt�f�W�N3�6��#�*�(���^����G�yjrf"��W0���2z�8a�2����ߛ�	Grgvޛ��"4���p���)��e�A�zEϿ:KC0���p⥈G|Zp��ɝ^(��S��8\��e]��4�����ab��	�XL{}B{-��}�J����wB,`�%��	�q4$t��br��DN<<!������$���
)mMG'5���D{rA�HbO.��i�/ >�X.��I�%��m��T.�����d�\B�?!�����A��X0��O֗��ɗ��/S�@���[c�W'�5�K��CA{��Ƹ���$sऩ&�E��)�6Gt4�����{��*y���:݃,w��ڥU*$�-���f'D��2�}��	�f|,_G�����&�#��n��a,��>�ץ�#$��t��� a��hyhN�d/���5�a"�IY�jx;��P���Tt��\J�c87�C��g%��C�(h��w<�2O.�L��{m�r*#���V��-�/���1�h��ӽ���?4+Ldtωo�$,}�F[�0oh?��.�kv�Y�B��sXC�Ԇ�q��w�L��Cza=4�E
c���b
=�=Q{U�9��	C���%5�������'iFk��aX*�=�f:�ê��/g���<9����em���s�UcGW��֎��(��\���jc
J�n6<�o����"<���\Z��������P�@���SL�FM�7<	�t`p�=���L�£D�;�N=��a�0MK#|�`?޶�%�F^��7��Q����m V;}��Qվ4� �a.׬���yj�)8��Ic"�b��u�A�+@��D=Cg���,6�"-�f� /�S�r��XH��-�Gt!��iN.5�3	�T�
���lBDrS��ex��ݱN���U��C�P�k��z�Zq���	�U�\t#:���)�bF��]Zg�f�����b��r;3����#�a
a�>�D�4"
Ls���9
��L@CȷזDȷ�nk(���vх]$�ni�<!��w�i�!2�pP����XF1/)�G���-\��p�,�2c�(<�O�a����!�_����U���EPa���p�3�'5�d� ��$�((�<?,Ao�l�NԦn�����y�+F�i>���U�z`) �+��6s
�2q�8��˖�}����al�f��M�$x�����52hc�3֋"�jF�B�g������\�ƀ�%[n�b6�>���2�[�>�M��J�/,�Oef?K��)zɈrG/K��������/��|���#Qi/���C�����˺�,����9ݧ8�\D-��!އ��!r����O4��,�F~�M�R�4{���j�-�~;pt��3����R�j�����)3��7Bt@���(�< br�-�us�BF#> ��:�T��� EPP�dܴ���s 2 �Vcd@6��2����ʍ��@w/�EA��~�V���r�Zy��
%/7��0���<��8�����@��&C�6ëe̵8�os�����L蹙�%
�m�}ǋ4���@>�d�HX��٦�9fG�������I�/�A7����bzuy�(Ք�d�>ؚ��A2U���tA���Et�{���{���`ж���jO��F�IH�0�`��G@�WSq��#�%���Gw�3,^�ﯵ�#�k	���ƐLҪ�,߮%/�X�	nV(eevE�h�]V2����yh�3���D&m�/~X��:d��M���^j����˘[�#ʾ��UY7��_��3L�Mi�����oQ��̶��WJ�W?��g,͞�G��Ag�?
��{103O�a6����0�pQ;���g��gF�6���)�:(6�~|�lsFn�#���}fzg`ג���1z)0f!�Z=E�3�K5unf:��I>�@��7������2�/ě�zH��e�9|��aa�����q�EW�wFǁ�s������~�/{wk���d�k��P�*G�R U/ָSː�
�Rf)& ]`p�\D;��7�O���}Y�FR�)R��o!��p�b�kO^����E{S�(X�wr,��^��KZ��!�ãEco8d�}�xSe�q.Mu�,����o��l��� Cn1X�.M��!~d�K�k?r�Z$*^䃲i���mSԆ	�@��Zj�!Ac�줍h�b��k�̓�@��5xM)����6+m�oD��I�I� Óx��e����Q�W<�&	��DsO'��{Ƭ���ܳ��!�yrby99�('��ȴ�WV�,�o�!>���f�y�v�qO}Qd�ѭI��a��4�Y��]a
t��GF�LMB�қ�vZ �[��j��Κ�5�����=���"8$턏�x����4������7.S[��tЫڿ2O,����c���/6�g����������酪���F�O<+�~/������6�bk^��y?r�q�����D��=�z�$N ��@�xcd�7`��������b�����("�����D�R��@�ޕŚ'�^�;eL�^�k�6���l���V�0n��?�	���Ohj�����)=����KH�Sތ����ŷ�F�\Bqo��CV�@K
.�$�#�*Ѣ�	�g�G��FC�� �C�2E,ƣ+Z��ܔ�`�X[/�{%YHӅ�yC!2�L��~1���P�����6DCTҔ��We��K�U�ah$Q���9D�T@ �v˥�L q�W�~�sx�"�k�+&m�L��q���*��J3J�́�m����������A*�gi��63#=�uu��:<pQ_�L���Ύ�	��������[��˸�����L��|A�y�2�be���	D/y�	e���`F��5�ȴ=]\�r?��x�TΘ@��_2�52ě\�M�(HG���G��y+��@����x��e���?�,k�t�<�n6�~m���u��Cڴ�P��S����FxcX>�� ��`
� E�n
@"��jcm$�+�K	��L �fJ)X?�d��&G_�<�KE�d�m,����|n,��	d,X��L�d<0Q$�@Ƃ��,�l@� ][�9���y�+�cـ�;e��uh�g�`Y�M[5y-�s�c8&���nr��eݍ����ˎ�k���[a�d3��e?�R#*�"�A��'\Q�����x�)��3����p�u�$"s�fp�^��BOd��ѐ#*���^�����Oʍ>:b���]K��`�bL�Q~���}*"£���(tV�'ܦ���޴�Wن�8tX��[��Lw�ר�r��|C6Hfx��	��S&0�L9.`t����˴���YC��d� E|e�<�����0�;x�"���L��8�>�:�$&dY�-5����P���e�9�sY3T�sw2g
Y��S���1o�T4��l����8�X���Gz��ttʇbCt�+U>���PN5�#z���z��"@�p�,����a	*�ie2    �V��ԓ����2Wha��y�6!���*`c�aD8�	㋶U�orҩ�0nrN+��BY<�E���`��9��}
�OO.�@��˧G�l��O��hM.�i%��T����66#�C4�=�9�_�t�΅xJE��^�?�hY��>DG�`�m�v��O[�������R����i@����,s���3���K�q��Z��ϡ��uQyY����>���f�+��L+[r�S���m+6�$صw�Y���`�.�u؏�}�{�.��Dh��������i�v��"Zbxzs!����j	�%0H6e~I�J����H���&7^=�!P�(3c�c���n��6��F�7{#J�':P����|N�M�������H<�&#�J�l�g�LR�(1Bo6�9N�?�ۙ����q��̂�<1�(�両)Z���c��j�*5��E�  �ol����S"��v$<�k�Hx�	s;-��St\�[���9%�%%�	O8�����6���9��q�lD��x���<�'�uTf�`Q��|�lm%Gv�����1�EmK��kw[Q�����+b�[>�ɢH��V7Ȏ�&;]��q.;Y|��2#�"&u�F3$��4M�z��`i�'��&��t`$<P���ݕ�V�{�b�+ʨ1�<�"��TJ����2��
H��1��gv�)�h�1��'���*~��+S7Qo.���屨7�T�cO��;��Y��Л�9\19-��܉{�N��~�"��5��h�2��.\�f&�.R+b��%t�"2�ԋ#e/��L�5$Os������XY�	��4O��f�lPN]g��uʩ�4dL"�;�mM_��B�w��?Ҝ1��|97�,�E$�ci��b�E$\�e����s|�st6�b��=Z[w$��yfӏ"��+�+�N	l
3�>��^!00O�Lp�bj��YS�����M�}(ff��7�ޙW/#����y�Ċ��{\�2,�t\]�)v���A�vM���E3��`����q�	Sn��ȩ�0,���Y��m���I�D��\U[�m1��q�J�/�C��_	^�ծ�(Dߘ���4ܤ<�bkr��_�HH����!��+�X�i:�
c��&k
Per�ì>k;-���Z��'��O��ׇ�"� /{�6&�r3�%��3K�a�G���?s+q�O1����/0f��eUG�V�ZF��Mm�M�cz�B^��~\6�p�#��!ʢ���E��7cAP�I3�FW��� ��*����3��̈��'+aݫ�^�.�t����"ˬ2��cJ&��ͧ����J�,���IY��B�$��}��\n'� �^���&�M����XW�T�C�r��?_qs�c���)ֳW�8A!3�6���ٯ�w+h/�Ee�j�� �D��(N����xc ^j��;�����5m,�)K�:U+�-���1�Z��c�߱��d���PDt�q$h3����aV�,� ��ɋ�]1�u���0/*�Q�͢fk��d�;�P��]ZS��M�f��� ���$!��
�u������ 2�2�����f�V"<�����V�^�'�X���=O�c��zyk�&;���l��?+�����ւ¼_9��`��0�D�h��,41��q�%a�l�fvl��fCo�YQ�U+qh�Q��Wc�am=j���+~p���%sL�}u���p�������o�Tx*�3�oܫ�L�� ��P�o,�ڨ�os�٣�1������)�������f�_֧f��!�M�7͋0���J�'�8^���?\Lʩ�꽜p�DK���P<+�'7DBqǗ�ǔ02GӈzO��tL�a���_m�$<���.qL)$�sm�3������)���h�V����B�	n��`C'ƙ�>����h����Ӊ������3.=����K��0�'r�0p�1�1�Vf�$^�ǳ�e��"�F�N^�r�l�1���e¢��%MK19,;��{P�����oz�N5� �2;q3��8�"�����;m}�֯d��H��S���!Z�8?�֘%c���`a}���N!�S�9Y$�(��T�N�����>˚V�;&�����3\�~�'9��O�4��3N�K��.\0�a�v��+N�L1*2vE4O�,nŦ���BU9ހ[���)ha�b�F��F%Gח1�7����7��{	�^8�2�aEpϻ�C�VtZ��x5�fB�+���ו��g����M�!�M��,h�����(�p�>¢;�,/;��4��д/��Ҭ1�b���tz��㰰ӕ?���.=9��
��ߍ��|��aۘ�l��8[ڒ��x���u��P�Nt�k���88 ���@�Y(Ծ"ed�gn��ޛ���5c�]P@?�8L���s}/�ZF0�K�n��8�6�� 
:�٘���3���8���/xZ)�7��}�(��ϭAK��Bư$�n��)�Q�hF i
tB�A�~��V�\L���&��T`Ex��	��f)�:��|d�?���Z¼E���t� �UV���P��:o�]A	b����m���K�Z��参]���MN[�\��e�%p�-��EY��$l/oI/4r�iavp��w�j��'_�N,����^U����H�١�1S�yMG��ʸw�?N�֟
=op�NJE;-��_Jc,cZ )ɽZ�.nѣj�.JI��������f	�nt���h٬��j�n��DYLi����t/�s{�'���3]��"xև%���	��J]B�g��f��V�6g	�d����$��A�]�w0�th"�52�aD_B�7D��JS�"-'�P"S�D��6�d�tf/i=�{���C�0��t�1�29Q;�nt�N6�5��)�b,��5$T�ީܪ�k�f��z�I�h���BB���$B��y�\�����kͧ|RT����q��Њ(����B2b�?�lcw$���'Uk^n#�d`�p�j�%l������D�7��S�]s�n	M����%4�Rg�yr��j>m�D�3�����$>x�M�C_�k���F���xL|�O���[�21Uޯ��i$ �u��F����@3����e�IK��\����H��Yˣa���*�ܷ����>�,Ē����"��L6�I$x2��6�&z|+����>����T�a�\j��SHZ�fvR<5^���$�aӽ\Sέ�b�d�l Ƕ��Et˖��l:|�[#OH���myD[Դ�@k8)5Z`j�E,�X(���v�����{�x��tX�y�"z�`��op��V)_���s���+�����ZA��B�ƅ��f��Rgу��͇W�t�&���!�Be*gF����x�j^�K�r�	�6�c?3	���k%'xR�6�?���V� 4��v굀Z�R$��Y�ӑ�d�L�z�1���\��eF�E�;�����{-�@LDR��)�#���>��I�U�M�&-��Z���m� �	$��*m���n�!S�OES�%m}��P��k&��s����R���lt�j�=���SK
&��e)'&�*�����}	����@"��(��r���Y4��5@���l���t��~�KLk��)8[�f������<�����$=�.~$h�Z�C�A�gU���*�)�63x"�Y��y�KDc�v:g<ND:�X���^~�9U�tW��d�הD\B3C���~���1����
�EL;�NS#d}�9/���϶,}�9/�Da��������/�)[��Uצ�h��>/3��X֙?L��G"�t'M�y��OV���;tk;H�����;O}J�#bS����X4�J����W$��i�5�Ke��z,"�7�\���ͫ�u��:����1�,����)�S��?3O�}�K2v��9%��R�6*cٰ!��Am4�+�Q�A��U[���I�rG�W�i.��F�/ 2��)z��=�1Eqp�jYnv���/Uj��(-z���kʍ.�jSm?�� ����u��Q�bZ5�]��8���"!:�	��u4�-
o{M9�E�"0    �j���̌B��������Sj�X{�Q[�h���?�;�J6ӣ��1�d���SwM�kI�W��7 �_�U�G#�<yvj\���<:&�e�7����<y
�M2+�a���KEN�g����&�7tF�l�ٛ/�L.��H��r�'�@2�g��vs��l¹WolJ(�����zLQB�I��Ou����n��F���3˵�=/_�`��;N���Yt�)4U �[�:����M�ҵi�u�̗Lo�
����U&�W[�&����\�5���V�~��G����o1�5e�v�`�K��f}�D�Ëï`�W��t?͎=���9h�Ƹ�Q_@t�a�x�}�in(��`"�v�8��Bw�K���P�2kϲ�h$ �Xb��R�ETx=��Z@;U�BEw�/�i��i��n^�Ӝ��i�mS�����vG������Zu�ד������*����d��J�0YAO4э�Р�%�ص�XT���v�6��z��p���­K�=GK&�T$��pTڬ�mSWG��2	?:�^uބ����S	6s{9��t6�Ԡ�'fL1�t��Y��J__��������.�ߋ���xx��*����}ه
�(�����`q��}�����V^@qzUJD��o֠�'��v��с��{x"��������b-ۛ�2�(�k�y��e���S���.�-��Ap��x��gM����P4F�2d��J�7+]ɫ=WG��V2ޫ��\��(w]�1��`Q�u���UF�q@�|�<c�z9��`{�h���,C���JN �M��Q'��o�����=��2�����B/H�O�'ܼ��:��F`���0�;��d�+�^��Q�[
�����U��P�`ȭ����l��*]}F���b�8��J̦GP�f��<�wX2��\�K���A>����JL�E�M�;���c�ΜK�&��`\;D�Ť��1�e�1�������������W��*��|����bP?�+�]�e����p�j���Z	�z��l%�C&���_��#O7��E��ְ74�a���%�~��O0��iȞD���������,w��I����A���1�����&���vP&!�;E�''�c�i8��*����>�o� ��[v��xה��F���wZ^Ľa��d{üQPוm]<V�GG��10H��X�� 0���΄!|(aa���D4Cu��+l��?���W�	;U��g��E� ���j�� ����:����*�Gr\;��/�����#�5zT�n"�-ZUٿ�	�5UfChb)�^)��?�� �ځ�>~򨔹U�rz�Uնtpux�&B�}��O"�	���x�@�yJ��l����X����������W����0~r�Ue�A�A�h���-�ᅗ���=3�f&ޚ�I�yv` �r�^re]�g����L��%�����7�l����	���Z�99b<���	� �b15�� l|e�b��mt3��-�,��Yk�W���F.�6[� �d�b�R�K�����k�ެQ3�G�j���+�㡁9��z훳�aD,��BM8���ޮ�qI����ڈs1�H}]Z�n���k����;�b��(�K��q��O&@�.H����9�3m��<$>@Hd�e�Y���ofQKUp����ݾ���4���8��S���np?s�h����x։��3ƂH�9�����~ɾ�5ճr�
��ͤ#>�v��,F���HM6;��,,䉖ᩔ�r̞f�G��(�s�:��J�u����c��B�̜|L�_;��.�سI�@5ն1bl����f��	�x3:��bΛ���++�1�r�u�1�f �=�Uˆt�.�8!8�1�}E.	����{L�
8(�N�+�㏸)#��\��S� P��(��OHvɡ�ě�����S��v櫞�깱z:������Ȭ�8$Ֆ�jZ��rO$�Z����L~�B�;<p�c�ЮѦ�m���Y��]�6����y9vZ�"�Lc�v���ޫ7R��	�8���5��a�M4ESmtnŁ����n�+����΋N*U:�_6�ȳ<W&�����A91��2�#S����+����Sd8���8-p��q$���G�ݡ������)�#6�^��:�ǁ@��k;|����<�Fmct87�n���� �R�+����K�f�����u���:�?�n]K��B��A�ٙ��'����ʶ.Ԏ{����֕�Svm˒�+��u�H�p�o��e��<\WLۖ{:u��B�;(S� �~���m��Ť �:�=7z�M����p���b��E��< 1�1���fn��Ȁai���zЮ�'�Y��̒�\0XF�]Mh�3�E��tF|J���?����r����P
��*�O�p�w�����+u��t�e;�Z,�>Ӱly��U�hWA�����8�O�B���aD���@ �V��y9iGT��W����azB ��ž�uCS�}��N�rm���-c�":�΢/��(_	>��Oq��G�f�a�Q�^!y���k��ZFU�yJ�Q��a��|��p��8��!(B۵���~-�m["_�Wjkwf|Ǐ��&u[S3����n���و�`�I\�
��l��Vo����|�,�X7�������}=�&1���� o��m& '����(&*�� \o�����%�eڞ�l����o�#C��z@�^���t�G2�F_K�5U�j���BU�߾q%���j��\WS﨨j[�S��W�+��ן.锻n;�d�x2�g!R�!���[�nKw�;-�7�jk��զ���G�`��;��솂�'���=;�-*#��Z��i��p�ad�Ң����"|�Z=k�R���<_}'�O�n-��l����2������k]�nC@ߘ~�Gԭ�4�����-6�]�S��Jm˲�����+����������N��\���q����d������I��?N�2��nn��Y����v�)/��6	}�髲�is�.y��y�W���<>63�(��Oh#��:�u�<�uk��N0����*��?=�ȴ܃�w\��.@>,渕)Y����Ttf��A4c®ˣ�s������L�_��aX��et�g��L�D�YE7�:k���oѺ,��G�Ul@��?G����R�i�֝ ]�e]�<���ۦ��}�kn�0�w��`(� +��c�!^Y�0��z���W,��s�FRs36�Ѻ�R��;����&�����tw=��?ӽ����ֽ�U�N���� ����K�.���绻-�����Uo�i�_w/y��K�:���}����>���Z?gi�K��ѝ�݃�x����/�H��O�_q�����Z���.K�@2hĮ>݈�?_~��:�jѻ��қn�[��Ya�ÙeJ-ub�(�^.�_�����7�%O+q�oʪ�Ԟ�n1$��h�v�℮�{�_U�ˍ����҅ͷ_����grBo��x�t�+��	�<�T�y�����~����FNA�{>V��x���(x�3]���y�ys�?���X�uC��ҷ��rkG_3J4[��KS���A���x����� \�f��ꥱb��n�[�>^����g���� ��{k;�����,��3c��z��ܝ"/��;"���6:�>�&���}�����ߕ1|}~��K�����@�����.�:�Q�ut[��Q�l�<�N���E����IH��c+g���[����I���2i� ��ޛ���5z�ː�e��I5$�$ݑ�Z�����v=k◸�j�\�c[hg�E�O3��6I�S.}X���v5p�?�~��R�ǂ�Q���g��@g\�W�芼��V���@��4*����� ������j扇��Ł�df7p����d���$��df5�k��R�>�e8�w[��I@y���������f��G/9Z�OW�lm�{�*�5e!A������8����]�%������z�R6�ZƁv�b��vq���Ծ��������Pv��7�e�    �ٴ%������E�`6	T��{�X��g�Ƶ~�3��$�GgQ$�_��i��;�{�Ǳޓ܃'b&q�M���E���G�R�!��I7m�o")�����;�e�\(9�H3Y��B�鱴�!�TĘ"���HfٷWoV��`L�[�.b�&����uCڬu�����޳A�g�i]k�'�8��&���8��Z'����=c�FT��l(�"]�/S�YW��<;�K��?f�}��!��3Û�)�r�Z�Y��ͅ4�"���Y�\rO���3��,G�G��{ӊ�����K�5�Ǔ���ߏk�\�4J�K+m���>����)y>�(�5�ם�6�;����`����>u͓�*a��M����D���{ K��u�\���MoS; �gA����$wCV�]���M�A[���^�|$���8������.{{��p��	�r1��`���Jp����]���9�a '�Q���a?eYY�R!�U��,C�u]5�tN�����d���W�{*�*!�X���oU<�- ��"2R��A�Y�U���/f��C��z��F�S�P������w[�bԦ�q����d9r�C�S��H����N�N|@�wBHW=��1�.6�`a�B##�����4��49��(yLk�	o�>n3��0x�y�۷2��6��������Q?OeVSMǓ0�)�.���Ƹ��]��	�ت���A���gtF�̓Y#�ӑK^��|��6�K�*��ھ��s�ƃ/���H /�����������7�ÍdtH؇w�۪�H�pc��Y��0:�X�@s|2m4���F �nv�I5�� 3�¾^ bMexx���!�i�[��3A�>ц�� ���5v	<�r�t��y��B?elO�W�dj�g�R��,:���q9�K�p*kG�d�:[J���9 ����2����j���DR�t���1���?�["Q���!׏�:����>�wz��������ݲu .���*�1-!o��!�8c9)O�@��Co�ԋ>FV?���Q}�Zv;-��Qv�~,���ʤ�󴬞Rk�+%]P��^_��>p�s,���Z8'��3����P�o���N�&�K���IOO��^����^=!��q�~���M'��Q�S�eD<��]Ws0:o0�Z����F*g*����G$��?��<YNAg[�)�>�Xl^��η�U?eN�D���[s1�Moz�+a]7u��B��?�3бV�M�嬵������=K���|�돘����Eݩ�z��=�G�{�6�*�5���䶦����o}R�Unּ��qL�gB�>3;��3����/�M�k���m�J����[���׎�3�|�QPŜ�Q��7�qӹ��3��oHk�段:2s����j[�s����ʘ���$��z�~r&�kU�6��+����F�@��'T"&�t%cAPD]�]ҍ%��U>w��i,v�d�{�ޓ��eYZ�q&��`�+r;0��H�a�%"��}e�XAZ���i�Cs��4o��(
Cߦ�+��
���(��Lآ*�.�h�N���^�T���ڕ�R���������
����$=�8ZY=�D��k��-՘�݇;�z�2�c��r�oh�W��7�j�L�e�k�����h �a�|�C�r�s7�BЎW|����6a�g���A�}$�v/�M2��S�{Q��m�D]ì�X�b�xVջ7&�]���mK���%��q�^��s$Uu���H��F����gZ���hIl�v�wĘʶ���v٩HN���͢�T��|(K�t��&jl�a�4H�N����񧻇tc&�������G}��z>�ewD����6 E
N�*bb��!���i�^��	���?p����d���2�EOG65�=�a1AI��_-x* ���4�����5W:�/����'A���3�Mb����߀g�7?7�}�<�{�c�E� �q���ki$}Qy+03������Y��Un�`�w3.fv�ID&Go����8��U7�]6�i/�o�'C]):�nM�@��о�
�����qw��dƌޓ˷��*����Vѯf������4KhUwB����<�
9Y�7\�2]���t#��0!���N�o�Rƙ��}�K7��qNW֪7��*$)��a�\
7K��q�q��f�A�(�S&���=�iG�Jʱ��o\!"!��<�;Zy9�Z\ Gd�%$�0:'�<!#+�_ۋ2��wqy�8�p����N�2�9N��UtE�d8sp�2��}�"{�&$(�s'Ư�����R�
"h���U���w%=��G�&.$i!E�Ο��R�oL��s���Of���.�:ͥ�_�����KY�qG n�ue�/
���0��z��pLfz2�Z?�s�^��xg$duf�2diI���N��+Ef��?���$�'�;g���6����a)؆�s�$2R�v8�m�!�M�_�JEt��զ*w��$ci7���2O��Zۡ	���w�6=���F�~)i��ݮ�Z�x|"P��\YIKt�fo�hw0	N��\Sn7:cBX�����`�E�,ѲF1:,(�c��gc��ؘ� �e�KInd�U��v!BX�H���Y�W�Lg6?Kc������"G��\��&X���p->��K�YVV��װ�J!$��[q��@�qOUzŘ
��Zo+��X����n"Z���ͮ:&�GU6�!��`�C�6���胓?��7W�2W��	w�)���@�O�	F����j9�P_�W�u�"g�&p,Z�On��N�/ڍ�8�i�C��vL�َK���a�G�Lm��������5WX#Zug=mz�_�ꇊ�g8S�r�����a��*q��f&,8v��V 0_��q���^�3�D�`��4S���gB��+�l��8��qˇ��ȭ2j��c"ў͢�i6�@X788{�a�m݃A}�5��0���e�{}�L�T��a��)Ka�Q��L��S��+��k�]�?OM���Ȧ���p��`�ס�ݧ�Y?��28ރ�2<���d�p�É�s�l���Tf.���iS��U�X�q�w�C�ذ����i�7k� ¤�{�u7��̉E�#ݪ�%jNw.�\+��c+����z�Eߩ��M����a�9ŏRy��n�ޱ?�wl lőe��2��VT�CO���c/�U-0�W:�)*�j8�n>���6+)�q
�|���]����x�7��W[�/�>S�M��2>����C'��a	t-z���{�C�M~U֯ʽ5Ў�ݸ���L��x�8����q���%`�C��s�"aAlw����w�' �}�8���:	�{��*�_�N��l��,��ܭY��y�H�q�v���u{n�w\cx�il�`O"���L�9�4���S�Ƞ���<XM۽��" �QMt�\A�4��\��F��ˍQ���s� ���Z��r9�`�+��<s�ơ��-�v=��u��6���I��W��Ҋet�|V�&���|3��)��[F����Ų�*�Y1�
��z�C�x������:$�Z>o��&J�'�=���S�xd�z�A���J=�COj+8��{7؏�Pk��_�BY%	u�+�ݤ�����e8������.�FHB�`�}��m�ƄP�I˪a�IB�6J�yt�>Ui���|Ș��k�3�n1I���,�ǒ����՝�Φ#� 7�j��硡�V�y�L��t�wť����?�7�ܠ���`��t�������2���-6�ԐB��\D �/$l��;dX�q7���A<�ȶ:L��5�ݷ0�V=>�a������ie3�0���C�j�Rd�9Z��p�
�i]��]��M�8�l]��6j�� ���,�^eM�X���غL��ˏ�ʘ���QVʕ5${�fi���QV�N3\�"���-�ӝ�P0�I]��+��xԦiO�������M��`�"krO�`��g�1�y�к{4Y9!�i�H���G�h�#��]��6���w!LƺK��T��E�x��YJ�҇cʂhtn^L��uO��    sO>�#3��B�~�ܰn����KU��m�ځC.��v�5�nvW�	�c����Þع '�-;&~�g�fp��3��g�+�̨����(�65�m�q���~^]D��$,f�i�b0$#:��,v_m��p�?���.��2R؋g�u&���n����l�޻3W��lL�E����P����A{�jo�_�4�6v"5�p]�u��� |����J ��"u�� 1�ԎQܻg��hG�uY��Y�������U�����ek&����A=����AƳ�Ӫ�D�r�~*/Ɲ�� �)T�r�cfr谔�n�O:�{�w���䁯��Pɝ�1^���`��d�	o��ߺ�anr[�ʰg1��F�T�O���I��x���'R�ɉ`n6�o�Af169�_���"�f1�1�~`k&��z�h���)ܩ/TU�y�.۹62!]�H�:M�2a�����>��Lx**�${��^�J#���0�tU�Q46G�ye��NǉD��y�2n�[e��٥'�pyh>m^�g�-�:2Jp��C�L�U�n�nw#�{'��p�_7�lS���`0���+�5֌�}�?UV�:�Ĕ,�h�ټ��xj�Mo5i���g���=�=RZi:�h������X�yt=��np�f�gC�V��������N�C�{*�0�8:�0�B��%Z���$�0�� �,�̈憨){��&��}�L'��6s�
T�sW�Q5��	�Ct7Z`J�z��|��D@���\2?	W�ڴ�)��q�Ry��/�߃�Td`4�E�n�.+����i��y��@ QR��\[|��D���D�5K!�L�9[�NQ��
W��	a��$�s%x,�+����cTҗ������I\"\׺Ⳛ)lE"�WE�(��K''����3������~1�l���m��H����߁ i��T�n�B2r���`4)]��a2u��6Zc;�Pf�u�4�ۢ|m�~�o��G��$�&	ѭ��2�hsV��{��'3䝑��Q��~���U�>72�ϜQ��PnU���[��;�tS! ���/�O�*-�e��ry�|)˝Y�~
�{*_���W�u~#;i����LÒ�,���K�<_�؅�4��;�"�4?k�S�h��"o�?Տv/��݃BYm�Y�"�����4o��3	p�t��{����:Z�F/D@�73��_̯\F�I�Q�X���B�}����vU$�`I�k�8<668�Յ����J����y��/�' �۴rt���f�W�:����֝��r��}Y��*F�я4��F�V]Z��+9=��߭Dxv��xQ	E�^mw:����o�/�dj�!���LO������I��z�uCeBW������J�:��}���)�h�_��R��N"���Lx<�Jh�~Z�J�V�7#V?d�?4�f���c�F�`%�o�i����;��;����[�g�ng�0��h���qC�oC@p�Z	��������.>dl43�1Cp�nӓ�����O���t.��P��\�Ѧ˽*!����(eݔ�h��Uf�`4�Z��;���&!����3�r���"�qҪt�*fp��d�r`;�p8y�9���ն��qHg�yQh�qP;�D+�2ǡ!�V=F�_D��Lm�,�B��f�ˍ�SJ��h<ev��_�]�����wH�]��৯j���濽c�Z���蠼r��~�{�r��&'2�R&�d 4ǯu��u.�T�+��[$��jF�D���]ϟ��2�?�u��� !glp&�m���A�٥|r2�9�M�U��y��P�I�H���P+}5c�y������n�}���&W�sد��E�E�f����=���'�5��Z5tqi>	��je��Į�� �z܅�m8�ɜcs�O�D����\vTA1����.���`��J��MͺO������65h(����g�z��o3WJlɇIg���x�{�[�a�Y��#K�?�0��Ä���.hWf�-�0��#U��u�C}�F��ݖ�߳
�]��;n�p�rC��~�My�?;Yw�|�*i�;u�������f/C����fm�0zu�'\����7[�L�m���J���*�8�ٚ4��K�W�t��0`ţw�۲��Er5��U���侌�v���:�rÐH���K`�����!-Nd׋�ǲ�Ƅ���ř�����^��~�D��Eci�W�q���6u�͊Q��.WF{���%"~[��r"�3������㒃��*�@X���/`�/�z�����)�T<���(κ������C��ټKz���o�.`�.�H-^6��چ�J������[,`J.d�ěk.aA�+��~�0���3��;i_����AU���w�?�\{_�֝J��^�ddy�!-��7�ߵ�;��#xp.�,?������٧�e�qOF9o����V��0T��P4֊��T���}��U���Ḓ3k��+l�A���h�kU�F�i�_�v'�����/��A��k8��������1�����?wk
�oG�%�Ɉ�ƕg��8��0vA��#I�4�&��;�*+�m�&'R�?S9�s-a�hS��em���wJy��y��
2N�p_���%}�P)ͫ��X⾁�[7f�ٻ���Pf+M*;�4������ViQ3Gڞ��FG缑�����<M���;o��>e�.s�5>��Ep�F�6]��q�|�T���2&3���0���1�T��r����F��O�3��ъ}�Ei����\�7�=����/-c��c��n�-c�����L�
�Y��G��=m�p�;
v.aj��h�\j	�_3�����i��|�.�(��v��D,	�5/� \7�{�N��x��&"�5�D����5w��GŗM����A,<ڗ�E/���m[��Q�Ύ����[������8��	%��B����c)�k�����ʗnBKD�GO�W�8Vr���KKX����U�LXpj�_pڴO�p��eB���S�G�B5��ߟԹ֙��/��^e��3���w�$��~5Y+ڝ7꽽����Y:�ܫ�Z=">q��-�`&)��R��W����V������e���d���p���w�2J!ߢ2��d"��YZFg��X�ٳ�V9�t��U�#��5�� ��+��8Y�jQTl��Ԃ#�g)��A6X_�u����:��ww�͐b�O�v�;�B,U,�uH�:Ĩ��i�A���Y��r~ǐ�!�
$��+&ᡄ�?ٶ�eB���Lj�J[��� 6�n�X&8�ʹ}6�D&7�Ne�8M8�e�v7?���9+�)u$� ���:P"���a�ڊ�!|�H����G8z_�]�r�Y�V�0C����$��Y= J]+Xg�HMF�i���e�m%V�5�Ǫsd5�饫�K���.B]G�U���^�A�U݅���;��{�3_N;-j��)�8~{�r3�TX���ei*Q��{�"1�1h��y���7�1�w�Bւ�ٓ ��Uw��e�cY� �HlRuu��6u]��L1^���)��M���K�7Ֆ����Ϡ0x7�m)�'0�[5?��싗�JTն)6Z�?�ʊ��~�M�I�YQ�!�x�Q�_�q�ڽs��w��=�'�`���=ڊ4���N=۾��� �|H�zo�q�	�]Z4�� �w�_�?8�rD�=��>K�����B�D��>r�''A�}S�M���Zm[L`�;�J��R����4�ǭk��ۗܞr����z�r:�)2� ��*�+<.5��h�j����G	}��2E��p���6s9
�E�y!~�JE��f���B\�*)����x%�(W!�o
W�ޤpĥ�ne�,�����[�[bW�zi�'� �f������nK���Ae�18�3���=��65Ӿ����ghc�<�=f\�����ꦍ�$��V0�>O$�*[B�7��\����q��A���-�$�_ގ�I�ʕy�z�ĩ4k��f]�M�[�����"��|�p���h��    `(sIL�л�{+�p�ezc}�!i��*�dn�?߰N��[p�-��llf�О���;�r�̎�t�-!��l��� �.-��O�A�*8i�_�\ҏ���8ܛ��x���kڐt�q��;r���Dr\�K��4{�׌�֍�q�|�[epr"�H�iѵ���q"�}M.2 W�y���u���Ow��8�[��H�1!u�
"�m���SDXE��-�c"��(n�Ӧ��\��;�)*9�vy{������ ��cr�z���]�4&��������p��]��N�x�1�	x�l��;���*<0��s�f;[�p�aJ�Ϋk�����a\�#ޕ��'a����ۓ��f�V]
�<�de����o�����M{�pݔ��������t���p9|;3�X�ٝ��X�	�ՍX���95�z�!n��{W��	�J��KD�Ҋ4ǒN��f"&
rЦ;�c�5�4�%�p�0}vW	��ڔ��q'BWeEPXK��0��؉{�.��(n�$���A4���Q�b�,��,-�ZdBa�Xt"�I(��{���q�{�k���C��K΃��*iB;B.y�;�IxG�}0T�w�(	m}x:�%g�Ü6}�;�;UKh_�MD��fߡ�8���i���Z��h4��@t#^�'�;ؘ��)�U�p`���t��P��]���>U֩�ܔPtno��ޖvH�(�>u�c;��Y�-��=>��l�Κ�|ڕpB1�=�Je�t�v��Ծ,��3�Z�o�6��:#'AO��[�)�P���x	������%~���y�bj����IU��M�E8��f�Wt,�L�i��>�x���C��W��Lv�G���V�������d�#o��?�Z�ǿ�_�h�<W�iD������s;�Ц����p��A��R"E�!'�[M�[:+["��v}]��8E��b���S����8ޕY]mI�oz�h�u�k̷�++�Rʽ3c.5���&X��s�Sy�.�@^1lT{ܸk���ˁYo�'�y��/6��q�;l6��;f©�׍������(�AK��UP�T���a�R�HL	��9K��� ����l����v|�W�eqz)�P���[V ��Ž����My[��c!9�ึ�U�k��<y��h�>7�w�����8V�U+'�#f
�M���R�5.���!�Z�7���w����۶~��6��_�g29J�-x\�pH��;}u�H�0(|m�X�^�_tѷ-�W�wI3Kީ��1��g�(�%I�9��I򎵆E)ft�-�n�|V���2��놯5��O(0uR�^���!��D�u��D�+��϶I�;I�$�q�@y)^	��(NL���-�okN.wf�S-O.�U�6�r�8�Ԗ��G��檜��cm���ҎXI�̚�G���Rr���V	�|t2KW�QHbb�/Y�.:*�r�>��OF��g��8�'2NV��L>�I���!�H��5N���L�Z�z-��US��� RB�u!�cW�4��ރ�����/ܴ,�����^���֛���w����� �5�~�/F\����&=���%u������-�����Q��JwG�'3���^��wҥ�K�c������֏�"�9�!�A��6`�1�쨶9�~k/¾�T&A���M}1��������X��i#���F�I:��C�.7i�	�k3��1n��'<�I�,����Ϗ���`f  9H!�+xC��68O?CWL�v*���p�!@k�^��s���p5b���}��P�k�Y�Sl�)1!8(�ne�-6=8�=gO��4�us��s'��\rX w%W|"��
#�,9��aס]
�@;��pK�����5i�;M�����M]��C�u56��oF;�k�xJ���6��aM��^O������K��.L1,�S�Y3%��+�%���A塉�&���fT�D��>Pz��?��+�,`���*!�г��W�C�[�M�/_�5�!�׽��3�0���H:0�R8��o=ݫo-t�o;��5�'p���x_yf�<�f�tԦ��z�x���3�!����G.y����w5/Fm�p+<gl�`�ˑM��Zd����A�Y��x6��UX$����^���+�$�˳��B�j�Ü�������1����O�|ɺ�<��u.!�o���@q��<���n"��i?ILyUV�Rn����p��^ң>P��1��q�F,�Ң�mF)�.���l���.{���X)���]�V���c*��T��;��!��*i:H`2`S~p7н�p�Aq��C�'�B�e�fѓ��|+k��"ܛH����E�M������+����h���s���yB�.=(����z3f�ot�
�w�
�9��j�����Ylp�e�I���rg[e*ꕊ�>�4��P�IBG����鋲�C������=d�+G��#b佩ł)���wen��gf��FKd�	��i��D"�����TD�@�6`s�@��?��L�H����c����r�����!0/��K�����%��R�L�IbG=Z����%R҇ϴ�Lg�	�b���5��{�A�D��[�}�`[�������ʢ%�+��>�{p�������:ݵ��2ť�k�T�6�y��H��Fʊ�ʓ%��������z�@�����B���o|�څW���f_�%G�
ï�}]Ҭ\7��s� �֨��׻+s�|dk�*�[]_��N-���H���n���.fp� :�[�,'��B�atce�⫨�,[���81$��e�k:�kH�m�!(���"t�!�5N��f�W|GH�9>W/���{%�My�ܦ���wͶ6���%Ӊ�������7�:S�Ӕ�US�?�1�G��L�IR{_�f! a�>'�&�4���η�#��!��L��8m/z�v�#w�)��ޓ��ٛ^��Md�;O����`�EJ��mr�p�M�&���/dʌ��	3a���J��m��B�%rL�B�Z[�~
�2)��O�6�&=�fE��e�E|��4���E���K������ڪ��1�y��0i���iY��'ôOY�7{E+�C�>�f�� �ٴO�ig)B�S\�����3���ʞ���F�G�7��G6�Sh��+�Q����-������jQmu[��ɨ{0L�u�ګ���Gmz�r�k�U��œQ��+���3�im��d���+����h�/m��R��d6j������:��\�C(����Z��$�r�A���PJt������/�׎*ˍz����ۛ���M�Z-���x��}���YDmԆkc6u|�J���&�wφ�צ>6�m�n���0��(V6{Fi���7��IS����Rk;�l6z��G��n ��G���$f$ۡ��UfEuf�S��Q�t�2�ѻg*�1k�����߽{�P�%�-��8���{{���ڬ��'[�x�B���a@.���-�Z�OGmz�r_�N>����0�t��q���M{���ɞB�Ƌi`���/]K,h��̪t��X��f��b���gV�	�!��-vQ</ǒ�3YƦ׆2	~�R��^/X�A�J��J����4G�0׌��,H8˚�b�?��o �n�Nx*<�œ��ܓ�I��j�Sj&���|�7�M�:/_R,y�܄�=��~�ّ��S���q�=}2��{ʘ�
A����~��N��a��E14d�=#p�B�ߢ��i�ݙ.�6#� �,}P��� �\E̶d�L.}�<ڙ;�/&�<��늦�%�C-~n�3I��?�&3c�m��F����ʼ֜q��󃛗Zm����{rP 7Fe��r&'�6}���ol����:��C�K�u�~b�y�<-M�vN��x�=8'7d��:!Ϳ����N��C"x�����Z�Z�-oQ�B�7�zػ,G�G�������dzȒu#�$��٪��vP��FHدR����<��+�S]��bԦ�����h�m��.yzY��*���7h����h+F���    [����؎��Pݯ�ζ�<	@�a^ټO�yN���j�{8��9Z�*�^!G���d�6��\r@�m�/Bݔ�������@����!1_��n��䔊R�'��JO����ߓ�!6��K#����;�p�W��Z�4����,�N=��l�>?��#����5�}0Pr��[s\����([-}��J�\R���k���­-Q���4���T������3�y��p��0t1��@���]e�͍BӦá�猝�p���/5�MS��5�I#��}��rBuM���LGmz ���,�F/pI/�mxCdƬ@��i��4'�������"���2k{\�����rԦ���N��i6��:�Y֮����%�G
���L��QJ�}kc�J�zҬm�i�R>�1/7��t>�3�w�V ��X�gr�d������"7�t���Ә�E&��+&�+�l�PNCXW�=xAI�(����8�^�|y���ɏ����b��P�����;�h�����Z�I32i���bޭzI[01�ߛ�y�0Jú���bV��Y�b�����Kw�>eF5m�"b���
7���b6ȏ��D~����2�a�,St�I"��9γEU��h�͖s���FT:���3'�e"a�p��)����[C�'�%=�u�Tf7�:N��e0�ϭ/'���h���ca�6j�T8Z��l����p�A���ʍY�$}c�,gN9�O�9C�㼁>�cZ"���Y�n�%�e�\���#�m6��ğ�۾?�IՂ��]  �dB��h{e)�'�/]�f���B��y-u<��ϙ��C���M�
Ŋ�C�zk�si�p'��i�Ì�ܦi�@G�%˳S�4��8��6+��T�C.	�̯�������Wx��=���B&U���zfh�伩�m-��
,�s��x���?5�X���{Z�]]̅3d��^��e=�T��s�IN����bp��l����K�4B��<<7Y��hW��H8~ए�V��l���$���]�]���wO?�����&ZUq>��Eϣ�5��T��Z;��ϵ�ɿD^�����h݈`̞��=�Z�b��<C��MS�S�4w����:����e��2>���i~����`��R����_>�r�K����n<��;l5�g<���B?�?���������5�xL{�u���>ĵg�~G��s��<g���8(i�*Kp�3a|$�YC��-!�lw�Ç����^-4T���J�;2~�Qd4.}���1�^�v��f/�,�b?�
�Xt�?j�b�S�"����m=&��l� >]����A����B�sW��d�{r��Y���C~;�N�P���/YY�f��������)k���~�.�����p��lo����{In��Ӑ�]�|��|H����u�Y���Cn��U�~�ʒ��V�b���C�Ƴ��y(��~oV���c�u�?��Coվ�w`��40������p�ʻ�(�2�!i�`tH��m�w�ƫ2w1���&d�vw!G��utO믦�>e�w����[�Ϛ��2:4:Qt:	unĉ�F]��R�����S�2�dԦ	�V�?�������kt���@Ɵ5|�y9���穵*\b����M��ؿ	���4{�sI9�&�66��7����cp���s��
#�gjחڥD��]��_J�x���΃��=,��f!�u��/7�D���%O��#�ƴ��r�<�E�UD��EZ±N�F���/��-�2�©��t��8\����v�q�[)��Y����[�k�>�8N+�%�MR��5
$��.��Q�%2EvRadL}�ӟ�eb"��mIqB�ต��x�ܽ�%���n;���@�^4�.)Ȉ�!K�2p�K�E$��U��|�y\"��y�۬a�*��������j�:0ҧfg��%��{�Iq�! �f���pOf���Nm�5	C����V�����v\�$^׏Ya�����mSխ�J�a���u���IP�tk�L8��Q#�?+���N�UG6rX��i�ȅ)��K�[Yg��~Si�6�[���W:��������=�0��L��
+��Cc_N�$��Q3� fBm;�.��sR��:�����C�nۏ>�=Hg�L���hޟJ	�]��c]��NdB���R�*[�	R�Nf&�6=С̤t^n�4�9<�|S��������K�+al*l��z���1x�%��r��6Ζ��C�ِjjV%y�M,�`��Y���8P��J#�5rt�#���D��q����q���u���$$�=���` ��{�o�%��P��M>h!1d�F��\������^	뼀��Xg]ʁ�Of)"���=`�m�t!Py�^ȷ8��؞�6䙔S-�s�·G?`��3�7��:�b�Sa%�{2�Uzk��6��B|I��ӓiH�Q�&�9��y��m;�Uf�J���0b�V���om�"��d�����O2D�e@�����c
���2d�ɷ]x�\�;9�qv�N�!�J?W%7��_�gf����?jb������Qû��`-P��O�E<+#�>�p*��r����yo*������J�ia���(9��t�1�b$�U�@�Rǳ��-G3�'�2M58�31d�b�&����<{���?����"��#�=��ɳ��ǤRӠ��clĶi鮤��ެ�O�zڻ	|�S9�4'c�+��5�G
҃�g��dg�1��A������
�c��	�����5��O}2zWMV�=J�t��1�[�,+[��1�y�T[����G�lfmF9�/iE>�YO�^#��MzK��&ӓ�u��K�u��;���������5����U��5$\�s��΃��L���~��"�B�c����z�^$pq��E��:r�&����iQg�����^��v�?��h�|�!a���M���K!�8�*�H�@���r��[]�O�x�s1��!���4g�6�Nl{�c�����-���#f�����
m+MJ���$T�[m��4T�+��Xr�ͩ�QVb]b��l�����t�8X-d4�`���I�W>������n�D������j�.-�J�1s5B�;�G σ�݃r%\��gR�2��r7瀞G\J�lD���a����w{�4I0}����}��C��U|�`Sj$�@�sy�]�*͞��gV���~�Ӻ���k��ߏY�O��Ô�c�����<�s8��G�2�l<�»��lB��u�2]w?>�<����E�e�D)"��̢3��B�+�v*��^8���rc:�]z 	ks����M^��`��} ft=�蛙Ǝ;}p]�w3��z3B�@�Lޜ~2j�Cx�-�e�R��x��M�"��dr�3��M1��p�Xܤe�|�c��w�����K����K�fѹ�M�u(����������&�Xn��������Y�K#:6+I��ɲA1v��d��O�4����~Uv��`��{0'8�{���G����J��E�Z^w0h��p��[:#�Z��3ÁԨ��������Y�T�"s���S�̉�y�p����p`݆��o$�ɉ����l,AV(rP�k�>KV���)�+,��ڏ$�6}~��P��u��1e�2kz_�����j�f2q��Q���YYU7�c�LN���K��4�	�ʨA�3��`�Ir�D���P�aF,+����8��W7�LY�N�mc&�L]bS�Y?p�aΰk�g���繪�"��'�ɧ��'��D&��iE�{f�ēFo����]r~�d*k���� k�kx>�C'p�ڥ��p�pz�t*k����τ ,Qw|�lXs�yU�QL�
;S{r�˵<�U�
��h��PdB���Hʿ7�N���j^��T@[�s���&��n�L���r<�2�̜N�����m�;�	�� ������� �N=;Y��f���L�B�3�?j��u�3];!'���j��qN����2U���䥪ˆ���x���9�|{	d���������=4p�+{�f7��'�d    ��t셷����m���� }*��x�{"\�m^�@����A�Q�v;��`��uV��R['ڕ���L�D,��?���|e��F��낑>[Ӟjщ���'h��T��>a��۲pY�	�:}U��>9s�#�0�O���{TVM���Ip�x�ʈ�6���1���s��|s�P���Ԩ���W����3�Opm	FhUy����S�e�2���W�ig:WYi�N2����_�4�NشF�>.s��|N.�c�߄�w���x6rɡ��v�1X�|F�����ߢl��j�B��<N���r���1`ve�≫39���l͖��dN��]�nw2bu����f(ؿ�m���᰿}r���1��=�E~�:3J��-�����+f�ݚpK���s���ͯ7_��a�l8:��Q��/���@zH�56���LC��w��EPu��5��Xu���w�
�P�*k�,b�D�����.�����(0;�'���<��xU�Nr<�x�+8�4�m���x���0�L�4��qf�b���
�̈́QL}���GD]��ă�T��M�0]к �}�0{��ƾp�ޫm[�J5{����n�ˑ}z����WqVc_S�wX��m�12�}�]*��1? �̤^���a��v���f?+���:�}-~�����/`��vn�����[s��]Ƴ�ߗ��]+���z#h�J�Cn��ro���;#=%ێ*��r�*���-��*m�0�g10� �n&��k�q���v0�����c's�L}��Ȋ��2��Cc�˩O~iϗa~���6��,}j���vW�3�ȮߌN�{�ArO�ٛ���BH������<�a�#@����3��^��
�ƾՊ���P��R6�U�R�8�U��η������^�+�YE��1>}��g����'�mc�}RI�!�6��zm�6���WM����©����ȅ���j��W3Ɍ������
i�v͞q����R�Y|�k,Xg��Z���p����"�PO�b��ԥu너r����Fۀ��)pS[��Vc���s2=/���?lg5p�`�!��B`~�v��C k�z��W�ܭ�`^٘���Lm���%f{��&O�l
l�|��̒�84��c�O�C[[7@�Q��pE��Ϝ�m�_{a� �𡑂��C��3�1m�-r�m1g-:��ik� (6[U�<��Z9�$��?Z7��7� �.��������B�lN����KUq����OBL�}j+(�@o�c���oE�f��|���pNƭ��o�ns�������n�cc ��o�P�����y�S }M`�ޫr���`��t�����N b� \c`����K����Ҝ�u�^x�!��K� ��è�[U�ڐts�U���0������ڡ�sw� �O��*d�wE^�����.3>y�.�޶~�(�,6F�����S���#氾&�D��Et�ؾ{e��ȸNW�<���k���U�hS��:�	_��B<����*��m&:So�X�Ӎ+_]d�g�x�k����!�mE˂��M�8����{���?=�OXA�H&�{c��k��M;�%��i%��>	���T�FНj�`_�U�V?�y&�c^����V	��+_�Xb!$�J��B�c�n�������@�P���=��u����ag�fX��F��ڜ�W�2�IqZ�6d����V���'_{��d�s<h)��ȉ��q��w��*���t�#���+�rb�8���z��Vי��7�e�c�b2T4,/*����k��@$�pi7,X8�g�u�TO��-��σ�#|���������ȥ C8[!4�US��:s�އ65����8ܪF1U��q�eoU]��[��0:�N�z�tN&/a�%Fe��ޯ#�B���lj��Ȏ�-�4�S����N�a	�7{c�̯��\�y 7�,\�vTb8�C99�ho��k��Wm�U�.l���(��=O��y�z��?�/N$��ڢ.�9��h�n�,��ojk���6Lᎃ��m�'�nsi���lj����L��~tˌ�-*�}��u��y���'������}��Fv���@��^��m����S�˶{��0lmDCh���5�䄄d8?f�nM�u�ɕ�'c�]�pg��ArDw놁����,n��R�7�8��!���0@NGm�pV0q18񽖬F:�O}�3�ox^�����h�+خp�0l�&� .��{��h� g�R�k!�/�fX�잇A���S`�l��]������4۰����ӕM�a;u���N#�������6fp����@��I2i���Pf3�n�o���V8���S�s�
���g%]���p��ِg��}��J7�����7Z\ ����/�k���Q91JYVP�N�����"�/�)�L��� ����k<�J�.��w֥�O��S>�_g�~��kǝ	-ˆ��iVai���7�ާu�-`	�t��u�U}�Ox�*{V�қLػ;�F��k��c�|��g[±wrV�+/��������P앒�\�Q�JŢi�f��|��#��J2p��tI1����\�%�}��ږ^�=/s;V�	x#vw4����#��.�V�B��Y+�Yڑ�+��F�)�BƗ��,��>+_�4�n6�e��x�+$��;jJ)�.����������)���Y̩6��=��ݩ�~+��Ԭ>
~�D2�T����	�����$��hQu[{��T�V&���̙J9.8;H3鷴�u���UO|B{��TT�؅�3��ݜ|(����F:T�Z<=�����t"�X*��gǲ����{c�X"P+��k���HL�M�w^ޖOB~?^˾Wn��&�!\5��β��>��= -e�&B�+��q�	|!<>���;j�;	�.l�l�vqI7$�7O�N�u1�7�>���.�ҁHU �+ƪ��A���~��K�tXގ�X
�;}yIۼ�$���?��f�� �����>����[� �vڶX�L7˔�B
��S|���Lıh��1����20�Q�l����3��zr�jXS�Q3�cC,r)R��v"Ԅ����|�ģq��[���n�	���j�Kd�����ׂ�:�DT�_�~oKD�9S-Rr��ɼw���W��&�uV�) MTd#��d�H:�<MG��,K��*cO9��FR�Sf�v�Oƒ�>�',| �锲�1d?���$��A,{/�r&���}p�n6oy���} ��� �#Z3�h����'~,ek�LY:'ak�L�E��A�o�&�N����P�F {�I�l�So�/�Z�Z�̋]7[w��L(*�0�U<�8$�8Ю����6yt�P��c/�a2�6��6���a/�)�%'��\w��W�of)��
E��:����Dy����>t�njӝ7��N��Pk��$\/�"�6MeI��{T�����^U�&wy]��8Ӊ`xP0a����f�U ��拙�7�k��%PQ�L��n��5Ǘ�x8�z.�)�7����ѻg�\SH����Vy�Z{J��6=0N퉲1�nh�#�,Pg>�l���,��5w�Y@����0g�~�	����L���-�<��U�����s:ƥ��yB��c�ù!n`��<����=F�7s0��N|,�����k]�����BD�׎�S>���gv��㔒�6�8�7@�T��iT��߉�X'�F�_$��ڞ	N13�|~�ި�g�"�*�>0u���`��Q�o��ȇ�|
���3�nY�䲖�{�K�Y��,WFd�gtu`��Sb03W�;�BhӃ
�i�@(7�tg��zkd]�����՟�T�O�Ǔ���_�w�Ǒ������n!r��Cg��3��>��N�%rO{%"��t��(*V�fX��8wP_Ybf�����kP3�ה�� Z"�qّђ!��N"��t�m�oa�YKE��kiޜ�0(D��C�[���m�j`)��`1�5dn�+U��j�2�TD;����)<����.W��Z�'�_�g
��o���7)(�)�p�l���6�U�R���i��fҳ99T    5)̛�=���p���q��P�fFk~ct�i��'Qn�yng�f�����Q�v�A
�ն�|���h�v�T_���s�{0��fG�(�g�v�ne��m_��\ҏv�3Q�A*���t�=���T�X-�S*��4K5s^f�`�%���B����8K[D�BDnm�b���d�c�\oZƴ�u*`�t���9��'��ȱ�)��6a�M8Y#�Ԇ</��c��F��sLܡ�����g~']�Fީz��{��F4���g�g��o��ݵ�$�Ş��9�q҇�}���9�����`��/�?�yH�p��R��O��nu��:oz��\�L�k9]Rv�s6��0Ғ��簶��A�Ik.�����5|YɄE^�>�ƽ��s0�'�MlXi{��͛������E�n_�o�kxv|H]��mݩ �UnU��&|n��o���ּf��3r�K`���~vӪ}u<�?:�i�ʾ�_u0��C�8�IVi՘I����KpI��:��W�I��x�J�$0`����U�<	����q� sy�W֍=(�O|��/<���Lk3���f����1¿��,�m����%��0��~�]-��/8���y���4V՝	�L�u�;��Q��8M��sZ9����g���2¥*��Q�g+ƣJ�<�I(z�����i�5IH�f��G�壸�0�	�.�=:c�DPA�>'�2����˂�	�|H�zOw�d�w�%�?��cT�֙�Hx�fگ]W��{�R�i��	�W�׊��'�4�4T��7*����3���V��� ���^�h:X����R����dQl��g������#�.�gʂ;1V5~�
�8 ��CMUԌU�j�3�38��;�f?�X�oãR�+ƅd�^i���cǘ%�V�Dj JAt+ƆEi����Ֆ,�c9vdݨ�b�Ā������E�r��4�^Ƽ�9ۂ�*���i���P��vB�D0�뚑���ۭʹ&����3��V��Q��|3+�a+p gt�� 
)'���̢C�wʑ�(6$Q�S�c.�@]�f���d0BU�E��Ŏ�a��Y�mSl������^M7��7��x�
��v����E�� �����v}�~ݽ�8~�EY�y�)7�Z�y���Џ�Q����(\V�ҽ��;�5�/���I���T>�?U���U%?�L?�(�6؜����nz��:y����c���-u�v����OectT�:�@�����r�1�=�Σ������$'� \uG�l��Wf��[�A$��^����U��/pu���?�'c� ����}s]bw��߮��n$E�Q�w�D����Z���0������*������ߦ&��bw��6��������Su�⃩fu��0�?��ܿP8*6o�/ɮ��T�P8��wey������86�t�����j�ۊ�	w��0�Z���dX���Y���2m&��˻F���ݕ��L=�3�W�I"C��P��0�+[�/̇vF�������wٝ���3t�/ߪ��n�ʧ����D��o�����nC�;�:�rX���|S-�g�w��t��� �(�Yw�`�p�~���^�
f���������ia�D��[���><�ٵ���G݃C�Y���c����çms��WAYUھs��W�p�3lX:�D���z '�meFmr��g�5���8C�YN^��B1����w�U�d��+kﰠ[�C�_k�,kt�sPLҪ��;�H�o��{����s��X�-���-ֵ"���ax�w�]��a]dn
��ެ�y���M��¼�y�n�]f�-��� ~��C�}?�i���UZ��ɴ��v�9A�9�
��-����}�/@�� b��],�������*F���a,t�+�l��V��{Y>��B?�u\�JUm$�^��0��
!]��o)ڣ�Z̐_�ɪc�_�#joo��L����q����[=.�Ӳ���;l��DЙ�cX�������-l���� ��ڦ�5ncAɬi�EK�^��~���D��vA;louf���2T��*Z[��n�z�Æ�c4c'�6=4z���A�����2���+Z�M�ޓ�"V�u'a`��~�9n`z��kENIt����\�c�z �V�:�L�tˉ��;��`����*a�퀬�Ǆ���НxH(�hd�=81	�MU��f|���xGٚ���r^��`�<H8㵯�fSU��?�}���߃(w�F�V;˰l>#l75�C�y��%m�O1����!!� ��y	8�Mue%��L1���01,�rl�k0݃�x�{m�a>rɃ��-Tl�2�1ד��;ZO1����5��Z���$T2�����Ҿv<���H\�!���[��,�3�}��+<��,����=g��{��t�K�V�0:*����Ϛ��"7���J�/��Ɉ�qeA��3��0�g,[� �rp�6�*	t)�M�KF�v	t�l#.�󑆁�k���u�׵�K���(p���
H�W�n/�T@T���Uw�$�Ԕ�\M���5\��А\��k�݃���~
g�#���FN�т�_���#C�SӚ���XB�ޔݓ�;���Y�gv�D��(_R�������u�dW|�e����r!AQ�/�f� mZã��Z�G�D�0�r��7
V�JT��FV��V%pll9J�~]O�ca	���M��e�>Vi�ͧZ�7�s	�m/v�i�J�z���U�$l4&��*Yp''Ør�viɰ��w��JE����� �s��=��0z	��!X�Js���;{c��p��}?����X#�����2���j1�;3	ï�|N�����t�н7��g�@z(��Z��)Wh<�8�8r��+j�;�=�L0p��VFߺ��6]_�a��j��E���E.��PAOse$�1C%�@��d����)��&�fe�D�>����f8A�߷��?��p�����w�DwHB��������Pk�q�֐a��g81G/������O�v�c�� �����>�d�(�
+jm�Og���u��� ��Ľ[w�:����|��I~���N,ۭ����~�-n�EjH�>ٿ~P��M��Ykz��M�+�B�P(T�\�%��m�?�YA��$����9Ze�q�V�2'�ʠl̇�zi|���#amܷ���Mm�H�,[d�����F��Bll�K95�Y&v8�8�'�����(�lėc]c4G��t0�a��=��i���,LyI"7���O�í����W�O���+�|�p� |WǼ/�6+Hw�h��岮��� Us)��[R��U�_��H0�߫}:OA]=��W=�YU�4=�dep��j�]<�J�'uj<�gV9�j�y����*d�r�5������k'�8l�@Ϭ�C�!�>�;���`X%�Ԭ�άB�ɪC��
��I�|�1�6�������9-\�^{�*��
�V��ns!��W�V~XzL�<Rr�i����}��<�up�4����;I�`�����n����`l���։5���/@�z'��z�!��7j��]�D��@�d��q�T�y�ށe����p�%�"}�u%�<{���*�=r�����_���HJ*p�����ά�g�![���~}A����Om��p_�wU�f�Q�S.�(�_�x�E3p�u@��f�<�}�%	0&o��{��į����1"�1��q+�X���5q���&���7�캍z�c�����-�3ڤ��Ob�į�:mNU�MKL4�n�qQ���l�-}�DS���:�o0J~M�{��� ���v��Pw�a�.�r��;�k��op�����^�|�4�?�-x��~�k����Mk��'v١Y�n�0I��.,�"ƫ��X�ƞ��e�U�b�s�����`WF��A�l�&��|��\}���4��⮒�!����~���u]ҧm�^��:��V��j���J/����27�2=Ug�#����Ύ�丯�5�����;y���3�\�    ����j�]���TWN��&{���W'�D/��`�wOTJ�a"i�ϊ.�!Ю�,!: �=S�N��N�f����I�����/Ez��Zױ>B)D�ԏ&q��jU�Y�#2��]���`���������K��}jM79�$	h�]��Ύ(z�T'�6�x��T�7he��M�so26��v�(5x�]�=�^�L�_��T��z@���P����V�Z{����������k!8h���>x�r�?��p��e�ɼ*t��A���}����X�%��_x�[B٧�:S;���I�m�F��"����@�Ff�!v�_����|�)UU�PA�녳<�ՙ ���*;�}��3�,V`�?g��PF!r��2i|�G�2c��{f6䃪�,��hfe�{%~]�mj�3�2�Uu>�g�Qh��K�lEvO�V�T����s����D��R�*F�}��7bډ�>h�|#E@3�*�"�����T5̻�֝�*(�^��
KZsUseE9��\l��Or=)�3p��
KS03��C�=���4>�D�j�a�F�$~�{bE �p>����Tm�ڇA�5�ʇ�2�}~���/T��b+���@�jV�uGc�<��'��Hy`�DkK2�ਇ@�H�*�8����m~h�fb���Z������]n�
7���&4��Mq������bdMEhhn����	f��%h�?��Ҥ��g����KZ<#�ۦ��� 6��>��`�b=ϓӺ�i	R�Q��pn��"���˰~��;(��4��9��Y�A�i�)�T/�b{7�(�<3��6���Q�����1��Ʞ��tf����)�n"H��4�!�NITѠ�&J�<�v�2U"*](��7E^�Q"�^'H%@0�ܻ���+�������Z,��D�~���W�?�J�S�)@��MEyK�S�T:��]�SL�ї����;W���JFiHӀ^Ƈԅň�]7;�>�"?���
��]+�zxi�}�7�^˙
�pC֩����?���XL�Ve�L��3���(�B㘡#/��:D��Y2����FI�	��]m�v$!:f��~ g�����W���;��m��v���Қ<-5���A�� 2��+���?\AA#PGt�� ;g��⛜K���d�+�)�4�M�˦u�~^�ɩ������=�{�%�J����7�$-ygd[�Ɔh�p֬����S����K0���p���V�\�[0�;0+�����
[�ӈ�4��@f��\� ����q��`T8��.r��]��"=��Y�8��M�O�{2�S�d��M^�]@���x�^5Su�D��:�W�SLaC�q�����S� �mXm�A���2ߡ�0�f|��`yɛ���N%�}�;T��<א�(�L�~���u�9�������>�oM�頻�y���2��T����[���P�֥�en�oz��)Dd�Li��1� ���g+����!���.���'Im{�e��oGE`<��1_�3��R��4�;@��(�����ɸI�&S�^#��Ndρ�D�|u28٩��o6Cg>�A����2��H@���������Û���PKË�+o�ʫ�vW!�H�$΋���i��ȕ�q�a兦(^��^��ĳ�!�W��z�>�S	b��`�r�����4���S����g<'EX���5̧`�������#�d�F+U>P���m_ȩ���}YIC�p��z���M�4Pw�x�"h!�R�K�A���:A�m��_z�������;��C`$�LU��~�4���[}�{�K�kCu@�!zj+5����2�C�������]����T�R ���n��Y�x��>������A������xʐ6��ʆ�o���w"`n�E0�T[8B^dpAZ����:6$x��"����K�ަ�Ǐ���,�	^��� �}�XxSw>/	���������9�����ӡ}	�0c3bl��LiE�Lb�;���|!�����ra_9[��::�r�l�~��5,��_䪗c\,5�$z3���?ʙ���?}���6�����(�W�bk���*��}w��4�� �U��_+:�@7g���T'�$�uJBn����h���GN��^k���L�5fD$d�&�:�>�B����1v� �K�6-��k	\��
Ԓ����XD�m/��m,u����%n��5'�~���h0�5�$��ɂI,�s,�G2����愱˪���j�].�⦥�>�&�C�pu��S���q���A�IN�޲�DC�|՞T��]C�������su�1�	��m~����* �n�=����n_�I����������,�K;��T���GoeQ��6!>��ރ��)�����y��ϭB�&oG�j����%�UA����y��έ��)��@�?���G���;7(Ϫ2@𵗌�-{+��@�.Џ7���'s�A?���,�p��O� H]�:�ؕ}v1�.���#��Is݁��&@��]�C�ս���҉ۤ(D���>S�L��*���t��f�]Y�
�� B�~�m�0[��o�\ӿ�Vڝ�ѿYo���QOն��uѿu���u%�CX�D�l�n���>�
��5��u���:����e�k
F�4�.��=*��m)��[�	Maw8���j�Ss�{�ȣ�t�)�� d����2H�N�d��)l� �[Y3ff�/9%�1���NS��4�^��M'���D����><��6wi+� ��CŌ�G��,h�&�X�`+
9����Gcp��^{DC�<�-|��ө1T��/U�T��xe`�	��4�7��0ބUV�����	�ú�f��ڵh�8�X�tA��Ӊ�1�K�.��e.<�F������N#�>�G�@�F�ě\���l��!�ˀ�j���P�,���"'�id�I����姑�9����r��PR�a��yG�3k�3���䣵b>�-#�F1q��ꜙX.0^>۪�Sd���)V�r5�p��5w� ��N���@�x�w�=Gְ"i��c��d�-�$FC��-�����x��O�:qL�Ko�X��)8��2��;�%�i���Uuj�*L<�n	b�j��æSK=<��na�;�S���5��=�!`"���˴iMy�����KU��d8�䡜Yz��-ɫd:�H�M��әmAEӟ��uMU��7�Y�ժj҂��,�Nve���5�)��u��Os�'���/|t��XQl!^g* J=���+��c~��Q���բ�w��7�nOt`颸U��7��G�j���k��y�Q�3� ؠ���4
v��c�����`7`+R��|��.�:�o'_ؓ��9h�s;h���;���z��z�p���˻�"�X�la�㧞�1��a���@�g�?y[-�����Y����W��2>�n��ߚa�<�X=����Պ�W��b�e�q%�~E��6%�] \�Z=���B�
���J�(�F��/�V�m�8B���Z�3R�����U�E������S/r����E�7#tbqԼp����jY?�^"���H/�g��ql�}�c�e%�;�� I�b��Q"�Td���;��T�''Xh���!��D�����({w��-��\s�P{��Vo6���-�����SGrǝ�e7�Zo����t�CpC��|��'���'�h/�
"�	����'�~���l`?A�.��'(��	��}VS�ׇ����S��R�1��G��M�i�SG#� 7m��@�r�ݝ�a���eE����#��-��O0���)�9˹ڡ\�P=˞	���&��@�WH�!?>+2�O0׀��PC^���3�|��U�:�׻O�&�d@B�4�2#ٟd��#*w�I O%t�{C��a�nrt`����>ۖ\�_��S���f ��)F���d��qbGp�,������ ���Y�u�3���&���|�ꦺF������}<�eN�;7�C�4��	fݟ�v`	�`v 	��T    �[�yr-�]�\:uqI���%a���B0u�q���)f���X:.^Z��;Lޭ��G�pL[��B��c�����/ViC��\��r�lJ�!\�<�|rY%�J�Wt&	>��F^�V�V�I��c�7������ީ�a��cPu]����i�U�Hy@�ՙ'������eyR`����D�e$�?)A+P��-�����ɟ�j! ��� L�t�_�H��P^�Yy���^�� �2���.�>D��[E�	C�t�/�k����ύ""�֣�iy�7�����%���[7�Mմx�:	C�n]��jp����oE0o�>A@��|(�>�6r��!�*3u�����r��&��&]��-�o}c�aЈb�5�⍿1��pH:���p/������_�����@��PW��a?���qa�5�í_��������r:�O�=�X� �l�v�<��޹Ɍʗ�ϽGD^�����Ύ��v��K�2[�p�5�nD'�ؚ�£](�oZ�F�N�f�j��(�|&&�|'��$Z�r�<���қ�6��D>�Qo��a�ENq4�%��wx���d�˧	9�aH���@6B�m�&��M���p/�x��>cM����"4�Z"]���2/��S�ck��&0���K�]�y�`Hc��7�ݺP��sc]�
�� r@�lP>����ɸH�`�HIM_��#ͅ}�Q>���k����rw>M���q`>��_vu���E���/���H֘������ѝ=�|�wr�?���	�ܳΏ-��Q6��ܞ=��]z#'�";�=Xb�'�$�U-�N�<r<���	�_`͞��]�@&���7	%�3�3��Em���ہw�(����^Ӵ����R;p�I
�[�BB	���!
�H�:�t[p�b�1���/��._���]��z���a�u)���4�=��߼<�cZ�S���y�!y
��C�z�푈��^eL΂�>�=�ԍZ�ЛӇ�/ݳ�~Kơ�M���	��Rg��f���o`3�F_ŕ�ʋ䱦{̀�� �4�OՁ�2r̋�P<>��+Z}��(��25��lҢ�
�6KBJm�E���ZjhE?�`!q��N�Λ�.�n&�#ԠOm�]%1Ѝ���Q�y8Q�`�E1�Q
=@i�9ۚ���ڸy1fD��
��j�ɶ'��k�w����F�"|�ICE���|ڪ�R#�^�D����(W=�G��g��8lU��9T�I�t�#h������5�&�[��U�e{�W�c��az�R��^q�#��h"�:"�J| 2_�I��.�K��MIx��L.�7S'>��H���̵�]s��c��~���u;��(�1�.�۩(�YN�B&$���d��=��'�)�`$�_�L
��Ք&��ۜ��`��C8y���X+-M��A�°Ƙ�T��"��&�������5n���ꛙ��2\��Z�6^�g�B�Q�k.O⍛j��H�I-͠�seJ���EQ����#�O�����l��fi��2�t F�˛n����mӊ�� �lj0GDZa1:�,�N��������@����F�J�僀T�w���+G�ac�%�C��0������P�L6�!^�L�j9��#J�/��F�Ƭ�)���d�?E7�+�G�w���7΅^����׺n�SG�1� d�uc�6t�B7��RCW-�[�U]UX�m���zwfU��a���]����D�y����$0"��K�<�P�jg�e�ꖶ�:�]��}��`��+�[�2.Z�ˎ����K��,R�a�\<b"�]N���-?U/b�\��5���/K={:u͞�+�c8�]u]���g*6v� 8�#]*��~����n����^����1�tg��陖{�����i
��d8��;R�v�3���T���Wz.0�-֠�R�:Oo��\W�]�*S���Z�M���!��oJ
�[n���C�@��%�A�/��U�O���.-_~���z���m�W���KGF
�kIV��}�}b�O�k�7�R|��K����M�0zѴG����ߩ�9�����Ĩ!��+��ϒ?�o|)����z\���.�}��?jW����ķj�aʵ�9f�� �`�FD���� �
�/�� =�V���$&��HR���� ^E��N3�&�2=����#���|�UxI�
�B=�n �L�M����1-8�Q�w�����h��%���'e��W��1?sb��/$��,�p���=���h؉4��k��if����p��5�?��R�a.�b�w��K�� P��"�`�it�S=�h��kL�i�#��i�w�\k%����BP�ѭ)cðN�)���W't���l@����&ZeUFȩ�����.	�P��*?���=A�n�Y�\�K�<Qv�8�Q��b�V�[�F�?_2�E��(/T�7E���.~��,�<���'�7�2އ�';����ؗ�VwIp�f_�W󻣐�̖Cƅ|SSno���O��������mB���>�Q҂,D���m3ݐ�g	<��[[�4��t�-����w�+�!_���4�̿��6Р	rAgmf��Nٱ��+.ñS~@(֔d{�7Z�0X�@��ϴ���8��R�M\�v����x���=D�w�(g���5�z��I8q���	�qz���7D�[�-����r���nԱV,��`,�gy��7@HEЧ�oY[3�k�o��Yٹ��{�}��N@��eF�C�@
�B�Z�j>�h�WIP����ع� ���K�g�5;�@M��o�}������}�Q�B�'.�5]6��9��QV`s8*F%6T7�p��O���'@I�6��ƿ�y��{��6Z�9�������q"#��=�UK���S�.0z9M���|�r@ �)�H̷Q�Et}�
h׹�%a�Y�0�{E���5�]��Ȼ��8%���8z�3k9����)�s��u]q�+5�q�ģj��� ̹�������9f��iT"C��)���L���,�j'���<�l_�:��Fko��.�x<iA�P����yԜ2z��Tt��B"��^�f��h�A��Q���6��O�C4�]S+�T�5�l��;Fi#�܂�(�̕�ޘ��:�h���)}p2J����ԼZ���O�W�j{R�9�g���!��Q@9�?]��*Qxb� �q,T]�n0<�VY^���ؓ��	�o�k�/�m�_��qۏq������}�w>�x�Tq��*��$W��ڷ�b>��t�Gp�ڿ�g�Ǎ��
��w��,�>��2E�}��o�A�b�, ���Z�5S/�>؏����$�(��?��)�y��w��M��׶3`����Gz�����@ܣ~A�z
�y��ub�����n�l?��p�
�-�����=�<�i<uyT����cd��b�X��Hs����$��b?�sIoi��X�ǚa~�z�S����u�X�@2���O�f���M�%��N�$�fW�i�n}}W���s�K݅
�\���������zϯZbH���Ǐ��y'$�^� �}ͧ��`-幩0�C�KF�) J�S9��e.�W��*�׹�����MS���%�ƨxBDҁZJ��*%G7%!�S��:�`S�w��A����b�������+)٦6�K��	�q�I?`��N-�J�7�O�Ѝ`����op���W���������{����p���h�XQ@�ui�ʗ
����Ì�H��
rU$Wi�Ug=�Td��/0N-ǇÙ�Nyg9gs�Jb��p�h�$��XN'z��S[ WBt��I�cpz�x7d�O�S$,&������ZK��1��-x/��Z�2�8o�c�����"�p���kj��҃���} ��jD�HnOUy���ҥP��{�񏲴l�Jq�K �	�[�3f�QD�i@���<I    ��[˾�B)�M��2?�bÑ����1�k�i����D:��0�gN��y|�ˉ�o�я�:�:�t�F���6?
�ou|�y��$C���sK���E5�R�"��pS��u��6PL���/���;_9|t�=ED�b�����܊�@���`'���/�ݺF��H��JX>r�"���A���&���r�	�oA���I �����f'\l/)����)~�|���[ |wJ�d�~�A9TN�-N�:hƒ���k�[˟A��c��؃d�i��j�Q���t��� [Ue��h蛙�7� `�Ȅމ9+tR׫nz�v��ؚP9���<Yw�cf��GNoЗ6���{0w @�W�6�oJ��VOZo�ii\�"����c�i;�e�G��1��R&G|C��"�]��	gTÇ0�\���AZP0;Ў��փoZ�KM/$6�w��t���-0.���P2�2��> ���h���-C�Ȏ���X;�2 �-�����"�e��{}9C�;d�g�}OBK�P�0.r�H`���C�%�k������&�e��Į�Ih0��0wZ��5{�&`�T|vM���<�������Le�j;(of�z�з	Z~�J2�52�o�E�*2�O?34�j��y���S���8��e�@hm^U��i?��O�p;��oZ�A�b�B�3֭�?!,C��%Ϯ�"��S�a��OD!�$S�4� >��S���s��G�nB�܎E����j�Ѕ����z�z��\����Eg
���Gu��)���1��C�4�[�5-S8���i/�8����)�����SF�f
�/_�P�2#ɧp�ܢ��3�L�B�|1~lS�A)`�v��p�b�l�1���H���qĄޗ/]T�S�?�\k��h���s���������̂�rW�d'>��B�H��2��L�R�jG0y��Ҝf�א6R�}�U���Z8.)!~��<��-h�r����3�!�m!M�Z��%\����6����Ep��s�Xl(��^���ԭ�,� Gz��A�19wCLV�=w�|��O�q��O7Vz�?ݺ��ל� �M��D'�fRr��L�2�F?�-Se(!#�V���f�Vp��Ʉ�g���N_Bb��\KX�0��bg�j]��e$�t��W"zi�'LE-s��9U!����>��@�F-A7��/�#��p�v9"Ϧfۨ���a.:�d��\��w����+�*��T��p�a�bb
��?̘��r�U��������4c�t|/8"�[�5����ݥeO��P4�����Zm'&��&o�g�C�S-ȵ{���DT���`�Tw�Ē/�٤���ח��*0���gG��7ws�?f��o��v�B _L�O��#��B�N�Є�S���o	7p+�7�5n�]��!z�^\�<���0�(d+����H⨕ޯ1GEn.a7�9�sI������X&
��S��'����9���J#v�	&�z����5�(姚�(��h=̪?�-����BqFA>؋&�|��[�w�U���O Fй���x�.�/n<J/	68x�h���+���~�=��B�r3�!�%z��٠�A��b8z���#�J4x�L�68p�H��&��q�����_�'E��$XWoi|��ƛ��a�v<#�яZ�4�#��D����� ׋)��%�C31-�T�����kV�#e�L���m��^�.�0��O�x�p9Fx���;�킮Q4	`EO�_kl�ޫ���;��l�pB#@܈�P;�����`�KS~��Q�F�gy����\�m��|���[��F�1���b�tΪ��հ�0��Q�y�%f��r_��	�W[�C�af�3b>�lba�`�+�g��:�5�Dr���w=�<��E��梦���ߛY��F�L�K�4����)�r< �Pk�THj�Iq0N����.��lU��}�\ ��-�?9�^�D��-�����Ǐ2=S'��Ǐ0e,�6������2�G䙢�X�h��l�}��%Vn��	۬2eې�F��rߒ?��Vh�a�p�����#��PX�u��V^���a�w��`&6JK�-I00�[�aNǓso\7�fpX��Ul�WGS����Rp��;�����*��0��%
�k8`n�����w;E�D�ü�u����i�@έҀ�%#��=�Jnr�P����2�$��o<��w'~���t�����o
�4K���jN9DJ�m-�LG�.�O�b���\x�x�e�~�BXo��8�7�X�}4bӲV����
��⻪1��=�B��* �*�����q}z"�Tn�ݬ:�/n7����f̕�,Ȁ��ˈ.��wW�o���[��=�Kd�8e�&�mx��xݝ�Et!ܲ���șC�I�� ���ZA�X"�na�����6D7(Wd��j�|��m�VU�o���6B�LO���+�ғ:W�ن�S �6@�2STU�0��0`l�pv�'[�{@Y�E��M:�&=��O�g��s��/�xV���,�lݺH�_��m�psU4�1��u�Fsi١l]����67�ȡ_
����ݗw_�q4*`k0:[�]�/G�J��Q�����N|M�KE��=��D�&ֽy>����0����]r�����&�6}:��ϣ��?���&��UZ�^���6J��&n��<��0�4�c+K?���ale�M#x��u_l�n�	I@LY��6+�Gf�1��yr��[��:M�!I.@,L�CVr��d�"����� 0�m0+��u|C��R���:p��bDPۨ.0�$��پ
N�m���l�ӜжO�C��`������ZNv��V��WTY~�&O�C��)�����3��'������!�\	j�&��;\��5�A�fjfk�M�uEY9X�Ϩ�gVF��s7�fV�0K���՗���	��ٖ�c��XK~�(q"������h��f5���{}���C~���O˼����~��w�j�or��~1�YW��^'��FCm�ALLPF�I�F����]�Xk��]�]k�z�:ax���
����V<�g�e�)��0'޴5+�3�n��lߛ�i��{��(���R䂻�~�*h��[���$�̺��[���n?�W\[Ǯq��ֵ��8��9��:!K�Ysg֍���u�,
`2~+s������:�n}~�͠����{E�Ⱥ]d��2=c�o���nA���`�Ⱥ���}�[P�"طϺ�G�6�ߺE����)ٺ�����`�1�MӢ"�����K��Ym UEfd��n���5�u-��=�%�������������� ?G�WU���U��i��,�G���)�2��P����9�T�����С�[��p���� I�</�,�4:q�Q@����<{�+ y�E�G��7�����-�C�������$	��)�\��V����N�1��� C)f����2S�AṢ 5ʙ��}�!G�k��uf�K���vyA��s�tDh��^���L��X)򮆠0.��o)����o���7/��4���T��*q`���o��F'봣;��9������uq�ݚ��\<��($����
����0�X���3-t��1Z*2v�^��{��k��]Doƫ���>�N���t�6��#v1�^(�����#��k>v�8Ȗv��e˕�ñ{��q��m��N��G��N�mگ���������Ά�%5,r*�xBZ.F�r�s3A���j�fj�r ��
(1��c:�Z�d�� �I��E}>z|5.�j��;�N	\S�7�y~O�4��,�g>q��kR�S\�;�UE�S�$��x��M�+ɗ|�\*T$�ΕB=�$K�L�h�8O�,���s��F_���g�dp��6z�e}#�o�&�˄�/�=�kV�7M�`���'�g�wS�����!0R>�"
��S�{�EKP����cD��{s֖ۂ��ɇ��O�̇�s�9l.��/�Q����"�8���zT�    ��ܿ|���<6D��eUM/���6=7x�]��%t��I4�ؙG����#<����������(�Z ����4�nx�r6n��M���O�!��/��y�	���-[U�9�k����g���}�]�� N|�x�h;�1J�� �������sKqļIL�����k�U��P��(�Bgx��K�WV�0��Tx��s�t���� �t�"��� �.,�c��`�4�1Y��3���o���e�
}P'Sf��oH�UP���ڃX�	�H.��Z�?Cb�K�/s�Ic�a���-PK�X(��3,�"��B�MzPyp�� �>A���]��X�x�vH�`Pg�c�nͭ�x*KpU����w�BJs=*��U�'�9�L�������J~�!�}{.V��:d�`�z�z� �B^H�^���e�+��-��*a8�A���$ ����x��?󭏑v?A�w�����'-��^?+*�Q�i$
 �}��ϪyIŎ$~�]Do�����.!Ba��,��E��b�����6b�m3*4t����s�~�"F�_��_��l���>/�	����� &p��"�`�u~Y����(��l[N�v��%��[4w������	�]�������-�9��֜�%`R�-�NgK��{�9��θ�b7�h�!���hS�|M�v;�Ń���']�=��*�L=�h��Z�I�/�WhR�L�6 �����}���7^T��u`(�� ���"��G�C�o�_�G���񄶫?�ԋ�:z�n�B�ܖ�Q�#�	�ق��VFAK��ꖹϴN���)��,c����W5(&��kO��P�p&������3{�~����O�k@�&?K7�?�~P���[�=D�K��'n�,���%�9+��Ij7<��۠����.`���F%��1@0���h�zʟi�x��,=ef�{(����ne�lOFSu�{/;�}R2�>�z�8Аf2h���}�����$�� }3�p��|�=7�ň:��n�ޙTpi�kCg5B��[�^]hHs��]Utu�{�Z+a��"���/���*e2�C�rs����ixD��V������=�e�:�yNDn~ѿ�w�$��©8T��\ym�!?sIp�(j]F�L�1l?��(��	ݻHU�t4^P��I�/�Z+�/)j.
4c�'���
��P�&��1�9`�E-2Ȩ�0.��TS(�p�f��VA,�6�0�����#0�Ǐ�,/ߐY�X˻�̀�ny�R�V�c����뗁�U�Eͭ8\�@��㮬�'H;�"*�*���Kc���,Y��%+��1̒��
���e��#/vT-�D�1Y�3lh�� #a:���!�ސe�5#s�há��ُz��U�DZ�� I�K00�ۙ�Ц.xx��v�;�Nm˶$���	�\�=��9��xTY��p�p:��tQ�í[	��!?>��mE��+Liu����퓺��]�C��~��,70��^��D�����	&0w�cކ�uQ�+�Y���uW`��<�pC�{�m��������6� J���WgC��b0DH��I�~�K������ l;�>��o1�x���W��O �4�XSi��H赪���
����vG��U���ӛ�kHX�R�ا�w�Ub	�{�l��Уp��� �1FٲkD鼈�3�
��(� ɓ6��_h�&�6�T:��s���j�z��&��>t�f�g(!�#�׀�`�US�o��} �8Ӵ�>���j�1���w\Mkp"�t�9�@���i��ρ��}~�4^�Jw��
j���a��NHf���J���+���> wmi@�p�uCm$M�nHl��=Hb�`��fN,�DuP�ɱ�����T�>-�희������Uk����ƥ	�$@����š��E7�4��ʹ4���uZWۺ:���.-_`��@g�Á����I��|H	��o\��;����d�4�."N�m.Z:���h�iz˜_Vjp��	F)�G|n4�X��%n�`?�>��m6�^�7^}>pp��Z����M��oS7�������kZ7�W�op&������&��9�߀&h@P�3ܐZ鉕A$ܐ���1���Q�uܪ��`�-����즺^<
v!7�j�E^��1�V�<�4����˕����xT$qC�Z;c�g�S�N=����A0��9��xv���c�(Q��g�}�%6���m�2'�\�א��k������!F������c(
"UP���JR����eK�a���y�F�J�ŧ'��I��;D*�B�\i\�Ғ�!���*<3�J�-S�
�1���l)��~Ԏ�ޱΉ1H��������C�
�oJ���N�bv#
�ctPAf�i�`-6�V`�q�Y@��l`��KG@6� �����ɩ�"�?h��D���r�E�pZ��D���v�����s0��]�Tp�X�&�^�I�R�s�G~"��2E?�#M
�O4�SQ�B��'��=O�D��P����8>�`]�8b�n���)v�������}��lU��uho9�$ޤn3+�Td�UF�7�yj*2�FO��$�ī���:J��U��U]Rd�GU69���Ȇm�<0y��:d9�&�>?J����4��ퟮĪ�T,毄�T�AC� C��?ޣ�9����H0B���
�hV��5��b
�d��H�{c�+d�m���G��,(0/7���e���;�ڂ]͠D�UyF�IAy,��j�e,6���-�v���V/=���kS$kͺ59�$���Yd���;�NV͉�I�ð�1EñV�~3��G�3�� ǂZ���0Ido�I�+��nc���ݱˆ����<�|/}sc{����t|�b���f.-������Q��vV$�����Տ�X�	�h��~�-/ t��.Xk��&�@������N ��` �Ns�X+�zp6˷L�7� 1HE
���P����d~GŜ`vFy�%$�(r6��͓��s�%�N7Q�]STx3����h�i��i"=i>����.�+2��~�%YKkoA>H���͸���+U��#�`0+0��8~����@3+�Qd��)帍	��re�(� 7K��a����?#;�@��ތ`�L��mb�z2F�QY��L��Ge�^Q������t�����h	����Mp��`� n�}X��i&S$�˶K�ǉ ��.����o!�mE0{o�=_F�o<J�\������w�[Fu~��8�jQ̊B aDS:��g_��������ʌD8��4���f�U���@����m^����ͼ�����)Z���9�w^@��E�#��uu��1�|5����U#CA��� b��N5���M�M1�W��VFBcD�	�i�&dZ�lK��Hh��i�1ucw<��ϑ�Z��Xr��rV�@��H�;EG>	mc$�*k3-�/1r"q��+�~ǌ�㦅����rJH��jQQ����_���cz�ò��}G�"�-_pr��p����4����y�1�HȱgT2�}J|H��x� ����S��;�����r��Ɣ)�3�`��n6�GW�sj��|Ĉ�N����<��苳��Ng�N�o��3�������]�<J������o=��z}]A$�������oUoe��t�n�r�zJ�'f_�X.w<7m����t%����=�L��5�Ց��xij͹���*Dd������h՞����/-~ ��0�=dܷ��9w�6Ëx�@�g3Qc[��v�+�I`§�Z�˹2(C�=OLm���~���@pY����m����j�u2���{�Kv���=.+,������3A�n��v�	}��w;����O�󵛬Ra�3��ʌ��+Z�$Qѿ�w#E#�Lt���w�5�:�����uhuix$aV���
k>�Žk��� ͘�Vn�U���1hvBj�[X����_:<�k�eHEfׄ�}.�n�c'�����Q�V��""��UH'��\th�    ?���U�"*�V�=���U쐵��;�U�hQ�T8b�޼��Y�W�WnEb��؏++���@-���Z�iA+W����P�K|Wg�6+��Hi���>�X�} ;��&~T�>?��v���֦Dq^d�:eT^(��QG^ܕ�M�$�ʄ)��.t����6���C�JBKՀclfi�+_Vz}���v�ӦX�$���P�lO�zWC�̂[W�+���Kh�A���Jf�w���a ����� �M�/�TC�6�]�P ��NaK���@���6���o��7��u �p8���λ��ǒ���L�����-��3�Mx�#X�5��ۙ*M��n�[8���s$	7��O�:@6�]I��j�+�y$ �^�?�]Oϥ�X�]�<%W���K��_��p����$������tBFJA>�܁������}�e�Ep��[������8�`���n'.�,1<?�N�r�[�9ͧ���&q�tB�a'Mw��h"�e�{���7��R�"�3'8�+-�q9��Ğk�̔dD=Ʌ&y�@��2�c	�����lf]����P޴�z|n�C��䴸��\�Z�x��3b8�C~�~��aʍ��Թ��N�r#����ה�-��S�O"J�^a<�)�(�C��hz�î�d"Vr�7��CM&�B
�⯴<gĪQ�4lW�Yh2�p�n�S����$��~/�'S	��m4��y~� �4Z���<���^���`:	u���HY�Ů��)/����b�V&D��x�G����3QЬ�"0-y��sI�huu�p��+��h��@�������6:ch�:���a�@�g�7�����홌��C����M�?����;�ŝ�#�(1��ܧ�C
s~��vMw�w�O&͠G=�
��\B�;�ŌV�=�8�OP��0���o�Q��QH�I=�;nk���v�#JXY1�sNhi�4��I$��h�˨���Փ�S
�z�ڭ^�a�7��;}��Sx�Y�-����!�y�N�j^8�zμ*߶A� 8���:x­������Bҥ�g��<��z�g����ct��Msq�GWD�DZ���/��z}�%N��-a�\q�'Rŗ�m�Z&���M�pE�
�s����zG���) ��?�Z�� n���W��뤎j���P�Lto�`�Gr�z��U4�"˪P��"����!���ɹ�O��j�c25�pb_�ʛ��rܿ�&����ЩC��h�W6�b�sD�j��5N���Ce�BP�!�^��pR��4/7��o_��lrJ�s}|.H(N��Ó��woi|����Z5���Le��/��(/�I���KÉ8PhQ�c�X�"�B�����������`ٓ�����{(�R�P�B��u�^IP�������!�$IJ�Zi��B��M���N��=��Z��D�,%Av�Wτ������ƴY���I���d�x�ޯk���?�ͩE�q�x��"K(��x��ׯ��#"�X����	� '.5�γDci�( )�a,Y�A'a��q�8Z���BQ��R�J�>*XV�i��(B�ܢDj�
t�Fu�H�_*S��t>����~���D��t�@�pNe�v��)�,��UL�9���K�9$q�04Ơ�"�=S�?JgVU�=ۺ� ��(��댂�H�>YSI�eFb��`w2���Jb����$�)��%��/2�i+ju����B�Qdm.X�˧w5�/|�
�*�''uu$*�Z��E���2-�g�<��S;Z	��'x)��K����g��h���K�/�0-N���!.e��g��l큿ɪ]FW".BpA�!����&?�DMD��9SM�T�Q;�"{������)cɋh��H��fF"ʖ_�	Ϧ��/�"�h�u�z���69��¬����2�J�=g�ɇ�%��Ըn��ӈ\@qct�ȴZ;~��TTx����R8��5!���>@���?,7�HW�(�.P"��}А��,*SQ��We�+��iڿ���l�2+��1�u�W����C�{�K�����%��LE��L_�M������T��VAϬ/���A�+���ʜj�3�����h�o&��/UЪ=�y�R/W0X?	,*�uIk�L�d���\�^�h0�� �\F.��3���{�o@V%�DZ��S7� �[����!o�w�^���� �к���x�W�OW�B�󰕡W�(�u_]=	|�Vp �6S�Cb�B��C�#��g��Q�#�\���!~k齽��f5N8����on�(̆�dk$��c&������9Qx6=��dF�y��¯���""�>�J\o"���߂��_�!K뙏6��s6|�����e����%k��ȏ#��iM��!O���+���ċ����h�7?��.I_�Dy�Ϸ$��ށ_/U��ؓY�G1�{-E)�5�L=e��c��#�0Xt�eo"P��4?�C����*����J=Ğ��$[2j2�.^d]N�Xj~L�����y���9M"a �k�F��Q1�{������s�|��GԒ�S=e$��F��{�0UK���+ه|�\g&�Y�[�p�i�;F������ڃ	��=[p����mU�|�zr�@�������"=n�:�I�g����b�e+�a+�a�I�m����R�>�u�5EX'��C����׭ײ��$�|Q.�S��ʨ��VJ:=�`�g�-Ϙ����һ��J>I��]9�K��`�S��L�:�ƠM�;����(,W���m�P�nsJ�偾����T�Lu�����z�Ҿ4Q�<2���W��������Z�j��������_U�ۍ�����ȅ��O��aO'B͛�I�sڼ�����e�ܔ�(���hb'Mp�h�J4������Me�h�G՘g��_�hZu�Ap�c�[H0kQ=�GWe�'��S��&7�r�']`�s#YR5N�_�>�4����463뭁9��< t&��;��~&�� �d"�Ć�ܐ$����H�z�\�)��7��1�ɵ-Ԟj�UB~�e�r8�1Ԏ]�5T��'8��!�8xi�g�'��k�q����3-�18��Cu�*��t�#��M�5H��ބ��E�#ĺ������(F}���C���[ ��H���Ӎ�s-\[>��C�l��-���.�6�+����Ƀ{A�-����ʔE�M������l��6Q�)��E��֓�l�;�x"�<2 ��f��k���4ޱ�l�cŽ1�E�n ��2l�A��"�\�v�ǄX�7�~�࢕A��X���V�Lv��R*D#!�$8Iп�^��y�(���iI]sO]9u�m]��^Ƀ�����s%������Ԯ�}ë��JTt�R�
����8r}��eg�!6��~ɲ��%c���B���c���q���j�M�k	2�����Soe�XP��ݮ���/W�vƑC��;�a����c���5P7����n��D�����-x�-0؋���jֲ��&m�ڠ�+��Ƒ�u�1Ǳ�˫�<p
kA�(���-W/��S��ek�fhf��z�����˚[`�Fbk�ajk�2��p(�4�S[@�M[��}�Z[j:c[xx�x�h��m<�e����M�a��"یv�yvMW$�M%��8q�*��^�E~�cv?�!M�DpK��4�1�7pNk7��!�}�+
Mf�_Y*�_+^5!e��3iC�	r����ΰ�o��+�Or��C�-z�8qm��SS{Aq��'�1�3vm{j� �Ti�*��:g��5K��'SO�u��-gb��l1����ˮ1d�s��Uה
Ec�"6?�+������^��0N��y	��i�h�<V%-PZ����m���*�2��`�k�8?j$��� �,c0-�r��ad!7��"jG>�} 7N�fE�#!˒QH�����Xf�ub�hT
�UѶp�����
�ˊ��<�_]0�]��8[apZ��ˋ$��m�G�� �dO��·�"�
.���B��mH����Sf�-�S�܄i�kV�d���}�0� S��e    -�+�N*�[�Y��n�1T^�ښ.cj���� H�����B�9�<b)g<s�n��y��6(�Q�x��v����bƞ9lF?u�(z�������f��NM���U���]� �_J R�$����� 4�'�'���GJDn�cM����tz1���� 3KG`vӮ;P]��7� /��ȓ������,�M{�N\�؂y�몤b��kGDL�Z�~]��3p�@�!7���s�6��N��r�ؚ{���`��R��d��f�r_j�Q|���Y���`�>�S�/��s7�Ì�[�i�cĦ��YX
-��O�J,=u�M�}'��R�s���P�j����!v�$6>��Y�¦�J=�`j�գ2�+@^��sKo�4��m8P�b ���R�[���OdG{��u �T�*�@�ߵЪo���+x
��@ۜ@͈n�k�m��K�bl���*�jE;�}��gl�:g��{���--<a"��c[n�Bz�O9�L��C�l�5�)
�k�R��@�YA�䁌�m�� ͆>hA�V/[惶aNm�J�J�
�l����>#;b�`XiY��sl��%� x=�>��+{e���^�������|�9P13+/i���Yօ;��a��%J��֑;2�ʺ��W�ľ�Ĥ#�}Mls`U�5�0S���#���4����F�S@Y
zH�Դ�M��Z,�������%�ڦ�^5��?#�>��g��m�¥I\ŧ��#n�m�0����� ��r�i�+�ы ���*ܿʶ,����t�M13���M���%���+9�y�Hش� �$,�9�/��؜}(����x���䦼)n�Ux6�`����d������Yk>"W!�����J����o��N��x�'�\́݄�*�[ΞP���08^��Υ�Ϋ���.��3 9j\��ߴ�y���m���������P�D����MB����w<��T}�C��>�žDz}(��n0l�a��a�i��ɣD�RϺ��y���C�%��n ��Q���tV2Gk���WQ��s�o���?�x�=��5�j��T"�}S�p������o4d�~�J8������T���@�%O��s�������F���A导��{�ˆ+�U��ˇJ+�pݯ�72����	��,9����ȁ,~�ꪁ�w����:�q�NT�\6�Fn�,#;p�KkD�A.�W<)���5�B�Ao9�g-6�#�ǝ����w�Lb��W��~���\���e�� N���^���`�Md����e�l���=�������j�vk���uU�>�/�ֆ|���C�p"���Us�C67R1��Ҁe�u�\�/���/i�~P}%;�/�k�_�J]~�uH���U�s�"����'��d^��n��L���^>}#)��n�BY�|ӛϗ*�왍�Fs��W�
o��ʛ`8"�e-�\����=�x�yB�D��=��N�tĲ�X���@��F�M�2qP�E/x`܊��� ���p ��c��N��!m�Y)y�t��׋��z!E4tȎ5��x�A���A$l7�M���a�HdU�V��Y���M�ʪC�s���[#���;���.B?��7����\`�;��;�sϬp$���8w.9�A�s�m�5J�^��0I��ѯ9D��+�n|Ӌ~M����t��y��H|���m�:����&S�\�5n�eB#��+���&A9�?��� 8J�DZ{�*|ps]T|�z���VE�|����������l��.3��W$?�y�|B�?$�<�C�ȣ?$��w�s"��!9\����E��'�����g�[���lT�g��&�7�����垔+�폮
��	�^�h�pga���iteco�8="�ț��	*K�ez��="C��(������z^Y7?W�2��MG�W�c����]���i��u�
/G�1���-���}��"��3Q�S�溫�ϧ���Y�d��0�Y�A;!@C�}c�^q7�!���
.҈��	±$�-�ƜR��1غ؃�*@�+�����zlj�Щ�9��1���˼:G�=0P.s�?�L���[*��6!i�y����<��(��\(��TT�}<@_B����6�9D��}JǊa��l誦�h+e�`��H7�9�ں�#?'�*����t+@ٴ�#ǌ�x��l�3n V�s��M_�� �Sx��d����[�ӀȽ����y׵�[3�9a\Q�E)#��'v����@�<C�֨~i��>x���0�Ď��L�$����y� �(.�����8������
م�U>����D[w;��L�h�f�C\;�J8��,T����Eҳq�c��Kk]ٛ^t���Zy[��u�SnI� �@~�3�W�C,�h�?����ot����H�*��Mn�-z�<�p٬� k�V�n mC�u�
:i8?<9<����\�C�7��<����Ř^;4��r���B����ɋ����u�C���=�X�1�v�Bpy{�H�'��*sܦ�dz��mQ�7��u_�&����;	131M�����؞H�N}v��\g).�d����(�z-h�C������N�9�T�ˠ7k���Z��������}���O��� ��h2r��}�!gN��#�p.۠{��+~�v��+0�*U5Kko;�"J���_�m2�u5~���>d��M5���\V��84��E ڋ�+rN�s6�3�L�����܏���VZ��"��Y�G8[�J�RW/!��s�=tiZ]����K&Y��la`���V�3����P��ɜV�Y(�����ާ��[��A ����I ;A���B���GO���*II�E�4��Wp/�ExI}���r��fQ(���"�4��#�$����� ��~�H�[u���,�ƛ�&����,�"Zc�6�J#񭙇b���O�>��cPˬ-�ގ�I��;H�CHi\@ߥ����Y��Y1<#�/uM���P�����N�%~�;�ڙ-0\���D|&c`}��Vg^]�޹
*�ҙ���ƙ�����-F��!��}�zWP���*ZBIs�#�#P���f �q�oT��,-�y����F��5����<��
B���4n�(�) ��jņ��j�ȋNP�E������'�+g�\�˨:rw����ښJ-~�[��EYz��F;�������c���x�q���9��	,u�-)) Eա4{�y"�bn���B�M^��S�A`(`]`>����|]�g��ny��O�5[��!FK�4ĉ�R^�+�{̧�����Ls��7��)=�h�/�`��'g�ԥ�SlȊBhq~���os�����ܜ��I�A�c鮞�v3�����~��z�U��20��M�}�hsE�do�C���:p�׋��#���1E�}K���K��b�)��Љ���H��$k�B�Q/F�y��{�����X-
�M��!G��A1�ՙ�x���Xz��(
�Aw�/)�`���yL�]m�|��#�0l�	�4����u12.���.l��q��	�Q�}6���.8�eja��]��5�b2;�pJ�\���ɗ��1���(��P�%��Y�G�ce�j�n���c'�!豳��c��������'<���oD0s��)�Gn�qa���7����ܣϰ�Ӹ`�������m�*���?rHt�z�~�kUA�C���-���f��ל%k=��v��7�ݙ�}}�`jT�l�7g�Q��=>��]F�����h �7F���(�rW��Y ���ހ��\k|�dy�hg?�`��G�w��:�X˲����t��xlG��7�u/!����k��X6"i���!p��l.�������Fܐ�,6�)�����	�8^!��QO\%��"�Qn{C=&ґ�*�.�9𨇷��O��d�	J�X�{�.��!��";h<p>x��)&\���-%# �8�����~(u�J���$.B�dm��4��E����+'}��g�-�Mg��$�D�"�    ]����	s����r�{)��M��4�p�U�S��H݅.�s�=��=��¬a��<��� ��'�ta�q�	l6��ieU�)�����u/��ȟ�����R��g���a��j�gѦ���3i8��;c0����lƉG�y�Փ,x?O���a��^έ�ՙd��D{$E��]�k��y�7�)`�z.�Ф��h��@}Mc�Y]m3�p"Kɢ�o��
w�%�혔Ij>�َ�12=��/��"�E������_j��$E(��S�D���o�Ǆ':h%eK0����&�x|����G\��(�bӴC<KЛߜ��J|��e��@2���wUa�O<ݨ#�&
�>?'�����5N�凛c�+֖;|`��|�]��.o:�h��F�]e%YP0k�X9��65�F<��x�s̀��	~�J c�"��]vP�����@��#���:M�V�e�J/�<�ŕ�z�1O�Ur��7p�H����L��$Z���PZF5Ќ�WQp���s-$,��":������4�p+W�#&����W��H`Î�+qÀ���^���J^�9#Q '�#�yp���F�:���}�'�*.��Hv��4�;п�����=�,m��Ht��[��p����H,���[��
0yQ���]�E�b���<�(�������W@4P���OPU�L�W��]�
��E%b���D���M~"M=��W�(n_��;�(�rUcx��ya��ő�H�vt�Ø��Ht��U,�F��#q�:�3�$#yaQ��Nŕe��>�|�-Y��H��7m�g���>���M�1����2�Vo���8%7�DЗE���˗�`R;�U�Ά0[�<�p�%�C�R��y&<C�а�q�b�*?t^�!2������3��Vo6^��V���+����K(C)gw��5M��VQ�V�:*�7�M�L� �%�B�6OO��Uۊ<����
��GB:����B�R�g�	X=E"8��y�QD���3�5��56�:a���q�W{��H`w/�U+8d]H@2��\w$E(�\�꾣4��긧�x�%���-�ة�e�o6�$�k(଺����������0e'4$K悧N薮�'��#�j�U A�d��X$�:��Jp��rowD�@EWC@��Ѯf��d���V��:�Ma"p�c��ޑ�3�j�	3y"@�CG�oYDBjCǢT~M��1��#�n��I庆�f4!rOﰸH��VMK@G���h&�k
�J�ܤ�%���Kf�`q t�j�?<.y���Mn��Ă�������Kv�1�F:Fn�bb�:�`ys�u4m��F"'�k�A�{j�K�<R�#����s,�k�T ��i?i~O��^Ԗ@�~��Hߜ������9�g�[d�ti^x�q����m��$�;gi��$sG^C�k�ǡ����2Lt��7�ͅ^�jp������h��ߕy��M �}�W��dT{�ۢ��ځc���h0�Uz�<��v���n�l�SpSW�ɸ�	�KC���i{���q%kt\���Z��N��uG��i��r�-��A&R�E�j>���7" R�,��u�o��*۵7	��A�����q�������+>���eb�G��\�Km.y���_���qb�i�3�89g�?B�����u��c�4�{`��V��R�z����w*9�A.������!G]]ϧ�¾쨫&�����[lCOΏ�Z3M�LaG�ã&���ElC�Ϗ�p��ug��GE�P�Կ�Q�Ώ;'�J�2������(�L)��]=4M�v~���ad�ݚV�� �h�w��#�X�z��h�HU9�tR���񔩊K�{gyN3����g\%�s�$��~̏�h~�y��h�q2����m/*�ζ��`m_r�!Ϟ��͘�.��Ȝ�i���P%\<�����5���$H״b��hm]��O�dEC�v�z���>?�����i�j+k�9?�j��L=?�Z&d�����9�Y��隽|�/�55����-�Ӯ)u%3��N��g]�G��ϸ�.q��=.c@����e
�w==�"�q7�g]�}E�������{�9��tC�p;�κ���޵�ct]OYL��ׅ��>?�=�����m�_�Zy8���#b������YHU�L9�0!��[�D��m��q�,�4�����N���e �誰%�����|Kq�� +�n�5���L�����K�\����&�=�\v��W��H}���[��cw�/A���S��u����B����[���r���
� ����i�r��]U��^.�s�..�s�DsN�jǼS�{t�9��S��h��l?d�6K��.a��~V`^^�_'KN���=�	��(��ӵQ������o�Ԃuw;�"w?*2�k%�� ��mTg�݋`πj�8���n��w9�k�����]��tM��L��F �]Uu!�������%zԥ���*)�=��Qb7#�>lc��Cе��$�bfB�K�5��H�����\�K��DjU�Sp��mqnAui�4Ar��]����ݼ�a�z՘��'~	{Ե+J��I�Q�M�~�]����K�A阸�:.��֎�a���m�1B����_u��#=s�N���s�r���y�sՅn�v�;����f]׹��-���>�2a�!�"��|�8ˢ_*�O�w�P���b�c}B�/j���pY�*�۽�z��ۈI�O�x�n/�;��k��Y,.���7�YD.)�cw|^Ʒ�����S����!�6�������2y�b娶�������=>N�� r� YI@��w��rv僚��K_wn�Y� ]s'Lm;��?ិU�:�/�Ƒ���^���×ysyL�UB�L�@��;���7���m�B��΃�X�̑a>��4�v}�t�Bta��^p���mg�ؽ�k��f�Dm �ƉIŶ�K>���ړ������ڽ8�l�p�9M�C�M] ��Iǜ�	P��t�e-������8�2�pR������cio&/N;��kvǲV����w`��oN;��%l��>�r��o{����i�������nT�[�wWb�/��.+�vwr�!c��ު^�v�6)��V�G���v�u��i�p�h�ƣKa*��s�l��������q"y���=|��_��y}��4��m�ە�i�ى��ޒ�9'�-���'7$��0E��?v[��Ӻ2�6!:I��Ol��GR=�c�[;��N��g6=֚6�|<���-�Ї�ƺ̹U=���L�|%ナS�ׂ���X��*;'\�>�0-���$�w��$�W�%[f<�O2k�~ܾ�;gO�t��9����5���_��� �q�^8�ϵof�`d���	ǎb�$�ds�wrV��.�T�A~�<�.�b��${�E8�f-%�m<�$ٔ���r�$m����g��:�mW�0l�-�;���j��U�z{f�Q� ��r��l�Yo'\/:1U�S����֪lV���^��E��ƻq����� +h�ov��%�:f�4kC���ϼ��>RU����	�m�6��h/��ӛv�s���,s�m׆�ݐ^���v�G~��U�\���#�z�F�����d�[������S!��Κy���θH����y;^�}ͷ�v�K/�:�#k�K�5����ڈ�{y�������c��⼝�rH�i��
x�>y�I�L�1��o�Y�_=��V9+_�a��}��ʪ΄�ʤ�6�&��;��]�x���,��jP�76�mP����e���}�Wq���	�}u��I�o�oM�w�c�R�SUq��eo�[J5�;Ƶ�ʻ�I^u4y3un�K�Yyw6��W��c�����y%و���/)��Je=��V���#����t�lo/��dw�}�=}VYeվ<�o��*W*�������[�%	MmR�Cߗ3Kpu�/A����u¥>����&q��ڞ�prsk��>(�\Kvd�	U�����"9D'�$-��<`Va�zr����a�u��*t}���{zi^i/rے�    ��;O�Q&� �j0�YW��pp��>�~d݌�ڨ7��\�z�W�p����3�h$ł��d���G��EW*n�[�Y����ԫ�F�Y��>c���k��Ĵ_��)�1ė�;���mp��1�8��\H�Zb|����jg"��"���z�Z\�)�ߒ��=���nJ�GKZ�oRߦR��a���g7S�Y�穚6�y�M.>c�)͌Z�z�u��Uw�k0�}�o�������.x;�0���]5^�ެ?>���ɖ)�^Ec,���>qx���y�-�k�
_�)��,J��u�Ͳ����C��~P岤�}��Q�H;���ܬ�'�cj}#�방��8}����jᔢC�v��$��zT0��v�L�Ď�����Ȣz���w��bxa���=���
�{�#�7qJ^�?Ǿ	���Ι���	\Z-�w�x5a��WWT��~�+q�LF��{µG
�zn}uxꛎ��KU7���I�*�E���S�'�+:��*�^�ٳ}_$vë�=�3ؿ3�͛��ܙ�H��(����Wr����f���'��\�Ͽ-�'��;鄂�S+�3��Q��ƴ3+�乯��Z 
��Q�L�pz�T�Y�*���Oe2�e���2gJ����'~���.xx�]v/|�Y��{��$uO�)T7Q���F��(�9��4��>��kE=Î���
�W����4-�HgI�N��D�OyH7�����|t>�ƩЇ���l��/�t����xi�>1!�_&�-�'$h�9a�1���c!'�as b�g��O�͢r����D��D����]׌��=7j6Ec�i��A�~�$Éwyp.:����w��x'����%�W`߫�*P�=��2&�U)~���ak��;�ɋ~s���{�'�����C>��9��c}�=<��DVD�}��#��DX�`����͵��7'F6��a>yi3*S���hߧ[�������x�޴��8ӽIF6�*�N;a.W�|�Y'�E>�:��:s
����P��ǗGl7��<�}����zK�� ^�%^0�Z�CWeJ��T���Lc�o*��4e�H(?~�F6KM/R������Z��H��5�R���j�����8x�ur�i}�<Z��=�~��|���E�M���g�v�~x�k�=��5��VsR�?��q����N&�aC��Z&v���x-!;��Ө\��0Ya�qw��"u�?��,����n��u��J>
3��#���Z�<�ð����t���v���+hǲ=q�i�\���D��>�F��i�鞔������Ke���m��y�u��.�"h��3�ڊ�HA��re�PG�]��֦vt���N�:b���E:3N,y��Ć��fq�_v!_9�U ��!3[�S�/6G�����-����cn����x�=���uuQ�,�x)u��Z%�������<�VAFf�0�
�T��L8��V F;�G�����3̓|���L���ٽ���W�{��3�Yܩ���oe�tw�l� �Uڳ��m��O�JZ��}B�����-��m?��.ٗzFk�#������������;v��ٔ�7�������7h6�hu8>fc��w�W��a�Z���}����z��ؾ��y|�az���S������HvN������'|u3%=�p���k0	�8�1�N���R��᧽�Y
�>V��`ݺ�DI�<�k�+�����*Q�^��a*��A�T��Ø���+����i����"N���CYR�����i��_n�t�n�����x������;�xP�Nƞ������E��H}��_��d�>9��!�\F;���ҋ��I�w�\�ޏ0J�GsN ִډ���~j�&��;�g��������I��(�%�[򍖻������W����:�ң��[�`��慔h��~)ES��Ҳz����Ok�G��){�oΧ���5'�A��`:&6��S:�_�n�q�r���Ķ�r�ʈ'%�ll3�_J���sd�j�|������~�E:����yQ�@�=��p����é��9��������:�Z�v_�\��L�_J��� � %����:��uu�1�����)���O���mh��{P��T;;>��Z��9#LS�?�p�ۥ���g�g�mf��d�ѽ�ӼE�E3��\�ZD�ċT8��7����_�)gYڻ&I��wn�.]��'[�(|�nC��n�'�fL���O:$����3$o���-�d��{)i����9���c�Qg��N;��Eg���o�|�33�^S+N;��>i�i���uڱ̾�+;{O;>nT.E<9�X#�\�86�����:5��:u�J��/���n|@�D��Щmg]p]F���䬣n9���D���߿M�����YG7r~j���!��C��xr���n����/���_v_�}��u�]�F�h��r�xr�!���Y�R�\Nκ�E��Ck���C�X(Z����	ى��������t���]5����>G��a��v��Lf�g~ �A������Пj����؏��V�.��8�M��L�N��Ր����`�E0֡�F�i̺�����l�S��.��_�'ڿ49��Y:1���	x*�"]��j��(��g��:�ޞt��IjO��zޱ��e7�!֤�='%�a�j�~��������}�Dpb�m�J��sMg?�S`Μ`'h��������?O����!SR�f���o��ޛN��g���l�tFv���&��SGr%��'Wl���jM5Q�{���{g2��N��U�;N>/ttj��*xh�m����P�C�CUrl�)���_����*���^��`��p�m��YI��L��U�՝��v�z1��ֺb̙�9��
wf)�1���>�����;��Z-E�@W�r��s�I<z���T��Je��8�t��@>հ�:Wr��I�/2��l�.g���Z�i�,�>�t7��RĴz�v�N�ϥWE�®V����?�˄�vG�����[d�K���Cz��ҧr�z���#� �B;��tg]O�6�m�G��15��0뤿�As;�l����3�J��ޡN�<$C�gw�ۮ�;'�����v#=;������JŃ��I��˴3�ھW��g�.@LYg���呶٘�;'�$���	s������������g�;;��Ӻݧ]��2��;����ȞY��Ic��P���-��λ��@�0�2��@wcpf}����u5�.:_)g�<ckw��[ٷ]r�Vf���}�ٝ�{m��Q�ns��H+��>u͆'8g��_��F�l���-[Hju�T⤿}�Q�?"���6��`�]���ke�X�ݯ#��7�K[p��|����'t.c'���?�-m~ǨrZ��b����ڡ8�'+�`���!]3̵�S�\-k��س#�����6g�G]�y��>�[�݀+.�g�S���זH�c��QY��l�.���\s&�
ܯƫ��=;�l�����F���m���iFzm�p�ؐ�~�i6�C:��~�ɧ�Ew5�l�a��p�}Яb�.D��.�"���ҳ�N��#���tr�]����EI���=�Kݹgŕ�RF3j��33�I�tX����u��?v�����.q�i��}i�H�HٞvN:��X��t"�����U��jY�=\��m��ș�����]��1�B6S4q���2y�2���g�^j{��˻������}��@*lO�g'}*T���O<�eRA��:e#?[}zv��ĩ*�҂�:A?�n͟uOg����k���܉O����s�3�S�$�V&r����[��O=�T_�?�L��*;?�:;d�:���f�i���
8N�9�T1m��ЏDَ�����)��cǩ�r�/%�K�>��q�I��Y7��8�L�Q�)N̴���k��* �2+��A�ZS���"����#�s)�7Z�Y���7�h��~�u���H�H-�k#�6 +��3�7��J�|��#�(��-��3O�� /����,|Uf
��R.�r��5��}�9�_?��$���#�r5���'�O�� g�z胹( �Q��:��my���2    ����M��M0�CeD{�Q��et�9���{����Fe�*������rňAk{�B;��������L̫Y�x[/���"����p�v7H����y@�%��lڤ�޿�,��r	·;������/�]�(�Dڜ���ҡ"/�}�N/��;�d�B���`��?�T3%-n�����&9L6I7�9kȢp��(��3�k�7�"7 ����LR�&��@[��`":����A��ƺ�p�G˟ܙE�����U
c�&yp��3��[	y�f����T�;g�2�C
�H˺!���ֹ~�\��D��q��V3���L�m	�Á\YN�&'6����>{�
�Wƕ�
x��g|�I[LC�.����	�46.���Nh�0��7љI8��7��V>\M4I�,��Iѱ�5-PQ����VD��[rZ�E~G�lOb�ƻ�.�`�^1��f?U���A7��Z����G%��0���t�Vt^����:G��#gEt����&��8F�]�e�`�,�M������H��>d���
�.�:�H{�	�< ��ӏC�A/y&���,|��<����l�����,��Űc��g�-MR��O���$~*:k�`X�T��������W#��������S�iD�.��48>�QF�.ip녲�)���q.G`� ��}1���AxAO�W�hbR&�����s���0��^s�+�{'�h"G:M:���qBJ��\/g�V|�k��:�	�� :�205��R0���>�Ӆ���`�$$�M*�5�ejI���H�i����7���X�8)ɽYK�.��v���Or!q�}_w��漕(��d||j�/|�:0��/�V�1�imkDy��B7��,�`W�;1�Fݨ2wJ&U��1�ϰF�;�9�wT4/Q��[ţ���4�h� ��n3�m�b�1F��=Mc�U�Y�ٜ)���W�t��C����m���P��6�GGg����\��SGVq$�'�;wL��-�{c����9OXp[�6��e���ڼS7_i�R#ԹI���5}��(o7`De��.�=YpU,o�c��Fum2�I���U�g���T�!Ĭ%a�-�!�����-�l �S�rRB�b�;�W/����?*�:GR?��G؂|��_L�p2|)cy���2���WSCx��������^���{,�3�`�Dn%�"�p������,��� �����\����s�b���\�{}g�LHW^�J��%|h�M׶x5��5I���@{68eh<Xh�q�<��*Fd���}���W������b�(�.�;�䥂�3q3������6|#��y�KM6pX�S>(:e��4�p :�qT���q���3L�-�.�>n��υ�M�/�	��5A���� ���/h��� �^8[�j��Rl��AN�5���E��~�Ô;����3��K>[p�=�=
�1q�����>*���!�΅!�w��C��z��b�*w�C�q�4�%J�5d1q�v#5W���Yz���W��<���`�� ��G���`����]|zN?}�
�m��W�7�7��F�7~C���������
\oI��%�[if��OM�4���5�l,Z̭�̳�Z!�A�4�gnI�v�e���jup��p����n@�M��=��fyĥӳ�M\�4UL��˞}}ŢM|�*v�;�)�����TC����O����q��T��P�P�5DC�pt�b��7�k�FzX�I�)9I�ʓi��z��?�+����2&�v�ٷ�Ӹ�YCѵ%
n6�1�xA��&5���6]��$��9W�x�vPL��*� zc�Ҧ��6E���v.o��=8>j��A��A���"V�v�#�� ,�`�k�O��%��i�pn,p
�]j��IX��XeW��,'0ꀮj8�}����%j��K_�ƕ�g�~҄����{�Dj1
�	�Zذ'�
�4�d�5
6�>�z>f홃HH�>zN��;E�D<�0���9k��h��v�'�p�M=���Ŕ΍�E����`M�oW����ʪ�2��_��4�#$��V��G���|�>z]�D!m�c��ɀ�X����~D�G��Li��Y�m��Ort��n��9M��ϯ�i��_$u�/hg\��VX����>�T���(+�:�6����O�0���3"�fo�y#ph�<d&�H����d$L�K��kn��JD'g}D��;��.Q������/���F�H
���*ٗ�39�K�\ *�m�(n�+O"%�ҊN�F�aNi$+ |��Xc^̛�`�C���)[ф)A�6�����s�S�;~j�\ɼ�����%���Vk��8���IG6�����Hk�w�`t�Q��R�[�l(�'�09����x󸺛��H��H��V�<l���r����%�������{9QZ�AcҠ���{�����;,U3�/����b[�Z�i���#��Au
���qֱff�v�x�)�9a\���9�vل>W&q��z܆B�ĵV�j �켜qT)��,�#ϥ'@��]����u�al���4�n�5��-��~8�26J��o�Y?ʃ)�J���h�Ge�Z;�� �=�|�ϳLEFd�R������,$�d���H��+�9����i`e]X��@�}3����S�Y�le�dhy�#�1_�B��f��g1�f74+F }E���}z�W��|�I��p���s�� *�\� D��^�Gݿ�p��/6�������6&s�L7d�@"Fa���J2�ї�$oA��V)�%=�P��zA̵)*�l)?%�)�����VU~����/N�	2��{�i�y�u�8!l�rt(�����Lp�1@��ɕKi.�apx���'�#��C�t�cڍ��qmg'�~��駎�i�����9֙�v���Txq�t'CD]���K7mC~��ϻ&`g8B�	`��� �1M��6�
OJ��;ʋ
��	ޏ_���?ڥ.���dg~��{��Uw��>���)A��W�xdn��rք���؛��oѻz�ψ�����qRl���O��)���/��m��Fog$B��ڦް��XSj�(��u�ȜnR	�����42R��🬛2y�l�pe���R��u���JU���v��h�q�4xLs�r�G����p@/T���.�2T�@V�*����A'�6�ħX
�J+Jm9���IP�CE�Th3�`MU��伦������7Q��|H�Z�SA�8QYn�Mf��˷,S��S@`��̰����2n��ֺ�j@o�zIB�ө{PM�IhW`^�&��� c�MDd��Ɵ�_Ή�Y 8?����T�_�U���ı�ǃiƲ��;;��2_=���w�,�$E�r[��J���@0#��_���^�I������ �h��i��8�Z���eV4N�䐽�'ֳ�E�|��� �E릫���+9�_�&E�2�Oj�*	\;�[����tZ\V�g6J �SA1��2/q�+m5d��$��͟�ZƂ��U���G�Z,�x��`{yhY'>Vl]�nL��
�/[��Йz�Ro��������dNs�BI��OM6������We3W#xq.�ǜ>���ֽ�wZ�f�fJ��i��?�'^���i�X��a��ЏM²n��4��߀Ϲ�2��{t_wlCߕ�^��]&�+��CU�@}��^x��{�<{u�$��z�Y_M�i�$I����tR�W���nh��9�]� h	PĖ%a�dG�����V�d/:eAs�s�Ax�I�<xا�3�,����,�G%�?9@e}g�2��Ftn��Q@�+Qoz77I?'�|r��e��������`t@J_�J`�-��rɅZJ��J+DRx`�3��!פ>�فu�cNm�!"�X?M�o0R�H0l�ꤋ��'~�\�?��>�-RS�Əp� �}��`��'�p��>`n�����u2 l����%P$V�+���#K�T���osb�:k B�1��EB�N�X���"q�b�Y��4^�YAf�    �.�����z� �xnӵΒ%����#�}��2n���w*�� 2R�WR�lV��p.g�ܺ�A�AB�Aљ	���T�|�q��H$�g��#e̓NMz���B�3�:N|$�İ�+�&��Z��o�%8����-���ٌ:/4b;`��j��G��6К9V&{��5�	�S�^T�)[\�4��Q3+ ��h�*�%UA��<����&��ER���\C��ǡR9 j��i�ڝ��sX�d�n�d#a�LX����^��o���ѕw!y�.hG0Im@�J�p�yTI�H����Ǩl?Z��*�B@Il%<�I'��2\�M���� )T�wc
��t;U-���ʕ�.������ϱQ�yъA�s@�C��f��yMǙ����9=;��Izv�P���x�0�a��%�r���yii�zOS�QCSפ!���d�f�n��Y;�7��[�z�o*[q=!\.4H�jh7%��flb�D��^D����ѐ�ϟm�>FTf�!v��eÀ���0���٤��r�
T�c���7v0L4�����7�(�
[����~zsi=S�S�, 	��j7�s<IL����ZO,~889盼7T�x�<��*f}.	�A�k>UO��3l+lz	.���;�(��*����C�n��HX:ڲe��[�XGp�Y�"a�:Q��6!��l<���{�����{�� =��E|���J� �:�fx_5կ)w&�%2Q#����3��:��׈>�j:U'ktyN���6X����H %D�˼q\�X�%i2JL��?g/����T�UB�*�$�t2#ء��|��&u��g^_�9�9~� ��R�^MKJ[��<p�f��Aҩl��b].�%i2�K *�D]�=I��9�I�A�m>��j�'�
ZH����̰�B8���lb��/`���ʈ�񳺋8��E�Z���*g�VD����T�C�E�#���/��Z\��V�E/�m��I\��ҲM��Z��*>>�=콫_s�!��#9��i��^�H��� �K�7�˛��M����G�N��]R���u�3n��K��G���p��)�N�)N�q>bUZ��D���(\�ѻI�o� z�JPFl(��U�@�M��rG��t4pB9R#Dz#������=����N:�E���Jtz9+pn����k0�mgo�b.���h��С�}���̒`G��8���Q�T�D�o�Ϭ�%���]E5%oi�>�Z���F+�{	��k�mI{�4��޶��֤T�,�������D�R�aH�$���%�����W���Va�%��|�D���/���)⧼�t�֜w��0����MY���h�X�.v���x_�0S��('�,}��cȟ��[p��}l�4u�W`g��L��{���[�2r\J�����ڦv푔�)��.��|̶o���&Ԩ�>oE<ac�ͱ}<�ذ���(����Rx�z���|�'�F�M�#ߛ�z��Y�����r��1��R���&���,t3�?�x�D�M�	��i�� �i2�����9z��X���-�&�,U��3�Ú��ң��E��*A��T�)M�Q�
h�\VЄr`j�y���w|��n;Uq�6��)�j����"�ʁS���Y�D��n��`���M2.����U�ct��<������r�T֐��%s�E@C�1�y�:~'�U ���Ó���3��y�������$�&��l����:�[K��h�������d��L�%��H��m�$҉v������i����<����<�*����Q���k��q���Gm�-������ĉ%�I\ �#�JIF�8�zBL���r�NE|����� ��o�^�~�2�o���,9����rW�l��L-����P�Q�g�V�4_=c//� ���UW��^��/f!�r�����w-@-��A�f6���q4X2o����Oek��A�\�!���x�!��KԺ*ăQ�uum�����t;�2�Js̯�더�{PX�-Λ���<���~ʻB'"�����22��d��\�<눯��z^b�7���xA=I���e��h%s��ۋ%�So�	�T&�B�K�)����"���������dh���(�0¦�3W̽��y�QYЃm.g ��������+�)0ds��iɗ�[��s�a�]��oM#����neU�W/���yQ9��i���%@}��i�N����t�fe,��v�6��N+?>l9���4I�ه�`d�-���j�*�oW�M�>o	�t�M;�u���t.\�e��Њ~�M*�~A���-�~\/઻	&��~���iV�V��/��^<��)�B�俨W`$n8��6�l���6k�j���0L�8®�i(a9�#�
6�����W�R���ZJ
R�Ѯ��t�Po�~+z�x�/{4H}<�:�r��N�h+��E��G������Ia\�%��/��Q=�Mrm�+��b��:�з4^����у�֕���ʁ_B1�zkb�`H���8$S����uA�g��j�+�Y�H������-6�{d�m���T�e�Ѡ�\��H�۔]Xܑ�\ə�]~�r1����>��^�=��X��@`/5��O�l%��`|�W'�����M$Ԁ5v����XS���N�3��J�35R>��q��Z�T��f�0w�p\#�*����w*����V��i��=u����G�hK�0l{���/6}��a}�18^���璇�8>Ii_pz?rL=����1LmxT��Ǫ/M01�f���>r�����>~L%�O��iz�9��,Z�Q}�/i����3�G�*@��~�s�p���������Z2�a"h<�s��JJ�,��*I��g�A�+�>��z�~yl���<��]H\+ �Kp�!��>UkpS��y������r^N�t���X[��e	M�T,=�m�r�iUqP'9!�4���jCg�%�E>�y�Y��qC��|��f,�������	��a��R��uo�r����� \.d���Z�����z������>�{.��f�V����S���I���#Ǧ&M����ǡ����퓗�"����K��/٭M�Ǥ�RwUiw-\^2�y�pG �N�b�mVW�Z�qT9�����ʪ�5/�?���W��]��Ɯ�E�7�]���8��7>{W�t�Y��2����K�z���V?���A��L�[�h[�#�n_W���::�q�$�A�WIX}��!��h#����1M�O�Q�kY����:��^C�B��E|�Ei�!%R����-9��5�3�t��<D(f�M��x8�FpM��VR�T��>�H����Gg��2�o�D)a���ea��*;"E,��p�,}�:K,���U˃���'�i��|37F�����N-M�<=�q�GCg��9]4�<�b�k~�_N����C!�Cd�B�b|_��f� �Ei��t�b
�u�Oo�v�𷑎�c��F)���ƙ�1��N��L�+s�u�cߌT�XX�l0�(�h9ϡ��yK^�Ψ;�InӵIB��3w|2�֠ظ+��Q�`�4�l�0���I5���F���l�]^�A���}ȃ�~��^|��/���� R��Ѡ�2�#�k����Y�c�gg��7��0�V���ͬ���6��;�'/����T������D���J����l������J?AJ�tlI���3�<��Y���;�C;�.������uTØ�����Xwc=�$}�f5h>Ga��Z'F��ǐ^7-����m1�u����;l]>�0�5���("��L9ك�I�r�������C)���{J��v
�2t[&�.��À�w�X�e�Z�J#p]�s���_UA7/�\�I��&�k��W��똳Z^�U�,?���&�1��:�Qk���W�go^��u��&*�Q���
�rI�����g������F~ȇjF>���h �\͘�ݫjD��g�����Цq�Ϡz>�&�)1њM�	�[�����89+g.��W#    ^���:����9&�����#z��M��!:I���8�|���b�O����ܷ�=��vj?V�E���hJ�Q�H�������);��0۔�қ S�*t�Tw}�r�R1*w��+w޵]���L��Fz�,D�dؐ��#�J�4uC4Ө�k��"��Qe�a
PWc�����R�p��`F?+)��X�=$:��*�ޓB'�gm�,���d�O�s�3~'��*�]����ߦ�K�|�
�_��$a6�d��)�:��ǧ����ȡ����6U����9H��о������ya�q:k���_����Jn,���|ե�������V5A�5߰�kv S$�E5������E�:����'�F��_�����Ri^J��潭�����;��'X9`ӫ~��1H-WC^U4��l<-��Azhk�����.����'�j�j7�Ga�9908��y4�FD?�è�Q�_S��"1���w0��E�F��}8���|��.�6C][�K��ZZu��5hD��h�Hq11>��IJ�����Y]�VLы�p�?�de����|�)=����*T�W�UZ'��R���ӎ�t_��c�<��Ne��#Q ������#���ZЯ��\e���θ��sL�h�9�t%P��|�*>{ϭZ�]U�|�E묌���+sm��b����7P�.��m��/�!���1��=�U��E����J`
QW ��ɰC��`��F�m��~�tB�0d�!�ۦ�f�V1j��9"ς�&��]H�v��z��[��)|�m�#֫�T��+�9V�Y�Go�j!ƺ�6��H�@���բ��$ѝ&0����7��;�8��=�4��rX��������z�&�d�| I�-�b\+���L%��<Sz�l���%�H �Hg�e��ߏ%՜���T^���Ǉ�!���z^���	1��>�ׅ�4�@N�<bL�XW8$�Dg�&�I��4�a=�"F${͓��#�&�~O�g�6��,r*�NRXu��1>9Ch\n�m���A��8��/Z�2ƾEŋ���g��	��s�W�mڦ��y�[$�Oʼr�|�9OjY�f�["xJ}b'�~����m�^$�<�1� `:���=��k���S
�0��*R�p�!���e���ڧx�."!jT���Pu����|�{�\<<;�t��N*��W���
`GDj�*�S.���H�I�f�0� wA��Iu�~ �`r@_*�=�Yv7��%O9��V�{̱��@4[�9�\u�����[<&��Z�S����ig(P�]��/A�զ̀�~��\���X}��� �.פOK;�kW��O>�\��u�į⑑Ga���I  �f�H?R���������"��fз^|=x>�>(�Mx|x�\0�_4 ��2�=�I����f;E\g�\��<�k�KrN L�!l�=<�d��6�4ʳ�w{�?��d -U���]���LE�f�,/��.ٽ7�B�E��ۗ����N�?�>-�<zD�u�D�4\����,�gª;6�.�D���~t&΁�m�#[;�Αz��A��IyFۓ��|�ti
�U#�Z�U`0\H�����h��\�c���ω�\B  hl�
�j���tu��f�f�s1ꇓ(�l��⚄�%����W��I�r��8o�N2u/�f6�V�$9��`���W�\B�����x�	��N|�H'hd��!�vI}�Xm��S9'1��s���H�{�����41�߀G���*;��9Nz'P��Bg�%'�*$��d�Ǩ_36la[��W ���%�Fy�m���d�Z^���ɜ��ae[���V�xh�E��4Ν^��?�1L��4W�M��V��mhB�@�j�h�В*=l�Nt%m��ƭ\�L����X��rF����'�'���n�Y�W��jp��~+L�u*������O�dUhk9���d���Z� ����@�����
�G�UZ���ᇗy�~5KP��S�i�k1���as��vq� �E�H��5Ӥ���3uB��P�>�`նV�ޖ����.�;�W�=o�&�c���:`p���qNm�a�V��,��;���]��M^�9�g�����.E7��
���4�$�?�l��ę͛1�^0�)d��u"������"��t��sg�y�/� �.��|��m�S��t
b1�9�43`��Rd�օ�h'���f.�{���c�e���7�̯cTe��d�ݖ���V�)󆮔id��ή�\o\�wU�C��_�{ߩ�+e[�\,cV�B�!�9���"�JX�l���#�9	*���s�>���-�iP[���-��{��"�ƹ_9�d`l�*����g��W��҆���.A��Xq�t#UR������e��&�Eۜ�Jn�c�l���Ÿ��٧���%�q��8e�J���<3ud��!���k:nL�Z6���`o�&�ɫӎ��u(�f�H��_I�½���9�7�Y��n��o�[N�W��jH{/K|�V�z�p�
�H���Z�X��j�W�c}>��[Gt���ta3�I	�:����Jr�5co�.u�TѼ`�
7�_^lstg���sv�]�X���߰ug}g�+�#vCz]��E}��n��ï�z���;����M۳�!�%�Ϝ'�6��Q\�Yq��X�;^Z�ᖖmr9l�|x�^�:�u���ݧy3�$��G�؜z�bJ�ĉ29ܪ'~�*�2���d��b�2�,�eV��_/��[J�6������>��l�jS'�������1��tR�綎=O�Ɲ�c���~�6o��j����]%����,v�f>����(m�)�H�]4���P
NV,!��Q.4:?�m����MR���@��$v�Oێ>�2lq��.�R̒�N$�v;��O�"s���'���bhU��gmO^hV&){4�jy�}h�)]����#��%5��V��_�b ��u)���2�k:	���HvO����/=�Լ��z�����w��O ����_�YF�
��$ٕȅ����R#�ʊ��K��K\�%�+��A��e����	�#�LY�:�:c����ϳ���B�oyg�p� ���f�Kr�x�EF\Hxz0=���ӧ\�v�7H����l�i|��`$=��1�g��`Co�A�8�i�?^r�Ե�{��FG%��v�6�V��>�+g����%9N�eBO�����-�A'&�����~J.��*_���;�:8��Ա��ПT��q����g����Q�;�g!k��~*�I��&���į��+gjη��D�"q��-L�Cu-rA� A�#L�zTf�J�u�¹D(��%� ;��Y־G���Y����V#0z��l�#p����2@�[V�q��;z��$��$/LQ"����x�w�L���X�5�N-��1it��M�����X*I����F�-PnH���%H��鮟3�����[{zF��l$,�[�9�zr�����6�3#��x�;��73@�۪hwfSβ��i���2��o���3��N�U�,l̦E�/�6;�٦3�F�Y��!HS�K)=`D_'щ[V,����4-���
�Mˎ���*�s�9�\nԖ}DH�$�^�H�&'��6�˶�"��K?��o>c_��n��\��h��˰��e�w�R᪮��G�+�0Rqځ��6z����&%�+a�V����|g�V�~5��0=��C���i|�b�.?�g͎��"��|1��G��W-�~�5e��g?���ړl���w����G/�w��#�6���u��u���D�#���Z�Z��#��VFcS��ʙd~0-��O�?�t�Nu�Hh����)�@H�Қ&|�De&T[#�j�����J�kį}޸,�,0�S\�튾i�:0�~��[av��rI��2���{py<ҎQ�i�2�F��j�.o�G����������&>/�e�����v-֭\�^�H�/��`?��)6X�P�l�Z�.'#	,s�L�P%B���%��E#�q��F�����í�9�w�pC���m���d��d��s���j:��m�(c[*/���1Z�|    �P���<~
�!�HP�0y��ƥ��?g��QUa�n�{��#�y�V�Q�a���Ǵ���z����i�������l�A�:*���FJ�����5y�4���L���7��i�s��C�3�i2��-�����&�4/�n
���@��&��eJc���٧����^h�=6��N�rq;f?iL�C��
)\��{f�2���Ye s���w�0+�;�HLӈU%ngI���]I{@-�V����>ڳ�������[IF|�v
bWnΩ���(E\�I��3{ѕ�k��k���=�Q�h� ��+7>쮎{�6�����<�ݾ�J��EjT[ZzѕJ�6x��M�gK�Y����pIeD;��c�=��`����S���L�n�|�[����`T�a�
@��@�� C�3�yl�E���6 Mʙn�U��}�O��}W�^��s�2o�r�H����L��%��*-����?ɟ�̄֝��'�,0�ҷ��-�p�~�Td_c���㝟Ȳ22F���(�N�N����S�X?�����^���i�
N�SD�9f#���S`|I3t�X�C�NN� �ǛQ�Y-g!*bv�w/6eO2�ז��Mpo֊/A�/�7�<B�AV[���N0��LG8g�e~N����f�x�mϼ^<G�'J
$�+.Y�s��4}5�؀���ևf�4�6�p�9�Z�c�sVsj����e�[�Φ\)�x����J[�.	�s'LM��:u9�н͵|ׯ�0/��f�Q�'�|��\�Kn��,|T.]~c�)7�0�5'�
����˕[n �ьZY�|���ߨOςQn����\]�t�Q�>��88���T��Y�?x��7����Q(�����|��Hb��]���[�����&������?���TZ# ��%��[
rh��A�~p!�զ	ǋ�(;�w�}��2����#>�M���)s�cǪ��u"�JqDX� C;���2nh�#i��?�0[젶Xk�P_� Pŵ@���A3z�j*��e���u�ӚU� BuM�����j ���6���$�\�+�$����nP첖*�;Ȗ���E�� �Y3a[�ʠ"V���@�S�{G�y�;ۏg4���}eͫ~�o�K)�	+5%��J���s����:��潠G�U1'*�p�$�,�$CS�6��u����NFeb�aR��>�.�'`���\k`�r�N4r|xz|�����k�+��X�p>~ɘ:i]�V�����9K�x��B,j�cH��ub��3�����Hj
xRˠ��Úi���%*&���{iS�<����=F�&�<)��B���QkT_���~�C�pM�ӌ	�N<���5�����.2/�yzm#]Ptpx|�����_���}"�J��ԢV��o��	����h9��}�&c�.-�r˘���ܰ*���Z�9��^)��&b��դ.q֩�s�.��Y�\��x�P�%附�|�]P������@錦1��� jb^����'I����`�4�2�쇟*yC%��4�u"n�9��\�Y�T?�!9����-��#pyk�}`�[)n�h��ٮ�E�6�C��I�q`uU�p�V
��i�} ��<�v�f|�ݜV>�W|�86~ �qQi�}���N���I�g�g�O�t����75���rQ&-/z7�I��Ot*
���J�O��{E�
�Vt�)t��R�f�� ��g0�S2йc�Bg'RE��+�[��T��&*mtl��Y�mx�_'g�]��
���0��S`���a u�̌�����m$A?�%x`����uҺ��h�/ȯ��*�Z��. ������@�P���ˌ�%m{�r�H��4�H5�>���'����)<�Uώ�Q���g���r��y���U?S�2��^��p�y,��b��W�W�t�
���xO>�>�>Kk&���s��Xk�n��Q����1��:���
-}6�M2�^$6�:�|мeᒛdܥY2���UU*��9�>H��,,9��/�Nձ\�Uו^�*cVS��[1�D6V�2 ��\���S�h����XG��z|#d�N��%�����.F��͹�@5\h�����i^jJ�o\W�A�RF
��d��4�E����tK��s�:l�Y��y�;IMR��!����H.�C`���V\�Gz�4.L��n��
���e��a��b�ZgL�#�T��^�����%�!�6�r����`�Z�YW�[���%� s[�S������⥻����5��<�nʼHw�>?�૟o)���2#���q|S6j�S��(�'��ǽ��Y�[ k�&�n�^p��:���w��dly��Q[Ce2&����s_����}��t�����,m}Q���g��^-a���A�<q�����oL���6lM>�U�IķQ�Z�@�/�?�� P��_c��$w}�v:��/�n�L��P^}����� �k������Ң8��I/�~䌧r�6d�hA�n�XL� �iIX/<z̃]z ������I�K?�hG8~a3��؞t�Q;%�z*zg��p^���awu�NT�����0��~�9o�I�O���"��c�j����?���SG෌$�%�.���Ie��(}�U��h�U��2�A������;9+���!f\���;����R=����'��yp��Q?�1����u4�1�J��O�r�:���(3k���M�3�t���3�6-36Z��|u�8�,���G^�4x���3��YF��Cg3_L)I"A��)ɝ���)�����^�\GsqN>�<Mk5�[�p8��µv��#o��%��p�f� ��S(��I[kmj���x��RS%V������V M�5M��4�T��
��JSv����K�3.4�\N����8#����"�O�,��	�� ����\����g�i����gޏ�b��:h���iv����_��S���0��ߏ|P�r�2��26)�{�T�^j�g������&�DV�9?�{��̉Pؿ�������^"o�6�ʵZ��T&>�h�����U6��8q|Zf�uh���h��'� t�:�+�w�����������!ɫ�{��a�ӱgLk�s�a�p�!g��j�\���'��3������ �O��l����u�$;<)�t��,a+�}<��C$�b�T*�|����N#�\I��4[��eO���ӫ��~h�5���$M�@?OI�F�z���EB���%�b���U���ihw$Pm�w:W��x���+�������)�I�|�͙<Ϛ�yO�'�h�v���
��3k\V�Pw�����6���钝�vC��� h�#+�75�Ml'5?�|ΔI�}C���舔� ��[��t��t�^�g�]���d�w��x�6��*|�'��}�㇗o�p����!��&qdcU�<]���: �����{��s����cS6��))����>�ϴ���8Xaq��"uQy��=�����`-X���k;���'R�����������9�iW� ��]Џm9�6
��I���~��	�
�*_/�ᤈP�j���Ŷ4��������c*�>ڡ�d=
�&��sD6ݗ��U�6�Y�I{��0��*�"$�wH�pC䧤\�41{�Q�<Wc7��L��3�9����N:���c/�B��f�?�f��;�O9�Tob�<jX���.�V�f?����u�צ^( ���To�0^V�������FG�Fҭ�Gs~����bo��G'�ny�@7ݥKe������<�s��*��,IS�z	e!�JC'꩸a��Z���bSxi��ϕ��O��)��Ǵ	���^�(�l|��'|s�&����7X��H��
V�s����{���]-��p�d�F�0!�O�J�Ǹp|*�Hg���C���MA{=PeU��Ia
l�s��4,�>��[3�̚�j���&�栛m �ʬ2~ys�lo�����D~�j�<��F$sc���j�&{���~z��g��Up��-T�6���n^~��=�Y���c�����%�`+Oc�k�(_��-;�D    �KD����^b+�J�CM"�*7�(.7(�,�c��#�~s/�PJT�H��O��Ԭm
l��f�󂿨����ٷ<^�A؟�Y"y��7�� �u�MA���t>
���2�tx?��j�{z�w*[�14��٫Q^��WD\<�Qkݏ7|�[��KyP+��7j��� Gh'�KR��f<Y�s�}a\Y��f/\�S�Q��jS�5Yh�oI5d��x'l�ϩ˷սa2�;j����v�q�q��-�?��KS:�r�H���q�A���la_OtbV��f�T f(au�<qƻ��V�d�llLܸ��aDm�ω�o��������o��496�3�b���B5fm����<8<���֟VY����m�e����=yv�	LҌKՔg����
�	:Q���M`�C�f�<~�i�n�t�E� ԌDh��5����O�7q�k����&*M�oiiPv'=u��洖��V��0 u\���F	�j���)u� 0���4��$��"�~��c���P	�Ax�{�[V���� �6�w��:��>�y���ހS�w�z�W��O��$h���m���g�)��r"6ob���V�E?�ؠg�j���i���~���8�-���A�c��a#�YF&��tY!-��X����C�)���u^�s�����}�N8�5�E�e�S��ms�n>�㋓�N?�@5E�����I�*@=hN�w�O8�Y�W%S���AS�R���ۚ��b���ygF��l�Q�(iX|�В`(�2�l�+/kC
ךb�nȺ�?�YE�@�pn��wG_s͍�����%S��	Ѳ\D`Go��?���"F˦����9�fl6�s	�����!���㇍���k�
�58�B�u52����li
Y�P[�&��R�i�?-���C��\8و-��5��Т��Q�����Z��g��o;��k� <�K|�^'��Wv$�+v�e���ILta�~�c�������u�b�N�4��j��,��M[LS�Y��\�,j��}`�����R��PM�&AƷ�M�?��/[�$�����z�r]�����@��p�V�7m����SKWI����e�N(1B�j^�UC�zI�&TC��I�����ԏN�f�7O*������s���<���T�aav� �XX�$G��~��%|潎g�9`�)2�O!���8�
=h��8�;�2k��P����eH��]d�3�r����y�͉*�\���5�$We�T�.��?���Zu��^p�uP����Rwi��� D-��XG:c[��'�|C��x#��D�qa���~�#	���q(^b������`΃�sI_v�5�K�(\�m)�$�Ɓȋ����QUkt��x�H[��l�|�y���J���.�!(_`�&$iqxB��6m�Y�$��:29փ�Jc�m?�{��7�r1%���*�{���Q0���6����b>�Wf'y�K��)�z����)�Ϲg}�\5�}��^���=�`_�%,h�/v��{r�������*�Ì��G:M�#WE�4�}����(A�C@l��5���M�uK������|�wq*�a���;btD����k��b�����͌=�5_��>>�7�3+\��V%�yR	ߣ{�0��OufcE�R�	C[�`%iV��u�JP+��%�jfa�ߒc�U N�˷U�ƻN�&�OH��~d6`*g�(��UI��(93�a�4�L�}$T8ܸ�q~��m*a�������&�[�^��'����Y73q�:za׏я.��u棭N���gs�i��	�Q���*�t���k:�\�X�`�8��}�P9!�٘�N��7C^+��˦��q�����jS�uu���E?qJ��uIl�F���=C5�������e*I��
KA��]+ÏմH�1(�Gz�(Q);D�L�3�M��U��S\M�a�4�g�q0��W:I�~�+��-�۰���8�qspO���Y<�E�����Щ_ei��_t�+�7��EuW�~UfXRWOؚ��ǰuj�	̲�U� �s�k��I��o���!��p&8T�R�#��tU���� �2&y	N{�:+g����r�4M`�2�9�w6yJ�E�*���ÿeK�3:z,j�U~:H���P����`N��BJ����<V�\�]���hHe@w��0���U�m{y���=��޼���u\���#� i�7"s���V~$��!���m�L�lrj2��D�;Ja�����8�	�ފ�:��G�f�n���i��U�!()I�Yd���Q�y�ѝ����o����̈́�<��v���0Ҽ����z�z�&c���X/|~�󑳳#�19'o���D��~i~kx���q�G".���[)�|��˼����-�D�����-g� ӒM:XU�J�$Rh�԰�1�	��f�!ް��"�~8�5��X�h%��b�+���c\��szv�O��f�H�n�u�����o~���o�iYNC�e֭@?����J�hAx�1���������ׅ9jߜd&���)�D��j�E��/.{p��H7�R6x� |�silx}<qi:܎���!��aFF�5��^��=N��7��wȾWq�T����1��?1��E_&��4�����"pu�����sΖ��a^Hr��0��W��a��V>�0�>Sp�J���Im�q��~����\sT��!k����03�[����3�x��Y��3(=�.LZ/�Jj����г!�,5�w����Xlh���'��f@��Հ[s�l��kSd�yT��(Nh@���&vH�F��R�&��+~´�,�6	s!�%��]T7����#�p�b6Kf T�4�H�����3t��e���T��1[�����v8�J��p�����B�ޥr�F�U/���M��yr}�+-[6h[��^q�����
RO����/�-��׊]�{oH��Z"(��/�:�8�/�*Ő�'��˥��,�����^���ǹ�s��+�a�*�,JMi�Miیx��_�ZA_�҃Fb���W�����3\�N�[ؼ��C����ӥji6ު��f�b��y�ʖ��_�N���l��u�,��/&S.���X�-�k���n�磮I���긒�v7(�Ks'��wmչ�ٖ���К�p���)��Drh`��g9;4����)��i�U.T9�?�*"3�H��w���q\+`�Y��%S�3Q�l��f5��,tQU���	ε��O�7�.�s6��e޴�{+�%E���9{K��V���^�l�H�&/�ӧo{�-�iI8�oi+X�t�>�'�kދ���^��]j>\R��
{�U���(/�����a�Ta��-Ʈ�w?u�)���Sp�U��p�����Sl=����V�U�$��YS])U�p����uK�ҪBceu]k\�X5�F�\x�̃�^�@����ps\A��A}���:��H��>W6ﾏ��]摭F�ST����+��+t�%扶���fY��SwE�eb�E1#
���O�kF{Wf��o/��-cS�V~�~�B��Ѷg+5\�!@䛤aM�e�/�?�Q[Y��l�Z[���Ͳ��#���r�q/���c�]��F�u��S`��A�K�H���U�lZ2[��z�QD�ƅ*����d�B�����]���Ȍ����K�������;�L�sK���O���Ut����-�+V��n��N���l)HaZ�4o<�$ߒJ����SR���{i�=��sC"�{��q�4{[9T���'P�=�G����]5=�Q�v壳�V�D����O�����4_�0������(S����T{��Y�4X���b�e����,S�D�n���Ƥ�Խ�'�7��ը�0J�H�ݤ@gy�
m*@�WH��(���^�Ƽ����kہ�$)��~�O�y��(�nU��#��$f9~5�P9TJJ�)��~�����<G��oâ�f�C�V7�| ��������P��à�j+��^߻Q�D4V��0�y�	��Pa��eԄW�D�c�3#(oLZ��7Uھ���!��UX�q��
��    ����d"�Vxe�E�ݥ�8U^Q���u��r���]��e�a�А��v��hbq>�cz�ւOF������Xw��j���;v�Qއ��
�� ��L"WYI��C�nMRT��[t[�%�����~�g�c��K��pE�z5�ຟ��?�T�C%���l\
����I��kp]�	�]�~
L�ܖM���v�0�R�M7k��F#����������᮪F���7���O�%����+���PN�ܚ8��C��[��fe�.�t���+s������E�1gT���Oq�
U@u�v�Q�}{���^U�����m�%�k:j�!R<�����x8�����*iu��AW�r�n8��,��Wu�Ֆ�"҅�i�=ƶ丈�a��Q-E4<�<̗�,G�CR�4t��.�`]���a��vC��\5����b/]�+ߍ��զ�o��]��k7�!Tp��צ�X-7L�����4}uye*�8�#��uM�Nx��ʬ_�i�.�d�ܬ@e~Q��y9��%��I�J�I�����9|*�f8�d�'ˣ��"	^|%1g?���p�G��S���K�*�հ	n�M�\M��U�c���ғ��n�D���˰��-ܕ���,���*ӅT��E�˘znN���o~��O����:�0�.����K����%�v� ��ٚչ��e29��j���[�f�"��a�6�&�	�`�K|�`۹�.l��8X�,U�F�?b�Y�C/o��?Ъl��ʄTw�V���0��~f2a;����wu�߹��5�Ԍ�C�'�5�Y�`�):���˧((�m��,�)��\�i��/��٬�E��k��y�C�D�O�ZKU���'=6\ &T�Fa�9G��-�6V�z/��������t���l�\�[ �4)����$�G�/���c3���	l|=���xG�ϛY�>ѽ��\��ӣ@FgF=rP�"Ј��WjW�'��}���,����Y�6�}���Q\�ʯ��"��:B*s�.<պ�d�FS�$�o�,�+y�N����'y8��Dj*i0���v*�T�kJѽ�q{t��u����*�ŅQ���X������TSf��#
�U�}�݁�ɇxN����4[%��p^%���*"JB������ǧ i�?��l݉����s�����8):g���/��2,�vtF������3|J@T#�����'��e���mi F���U>�����B�,�Sd��a��d�>��X:Z�O1��p���
��:y@sc����IM�0��A�'����ܭ�&۬2�R�^�o��3D�[rq��w��rX�yo�Um+���ȨI�5*_�6�×/	r%��@`��
����'��`���w��C5�p����B�L-ͮ
��X�!l�B�0�;���pZ�_��%o'0z���;'����i��p�n8h���%�#,�����H`A�M�	����b'��F ��'(2w&nY���i{|e:��������ζ����F��Xx/�7X���������׀�搜\�TQ���EJL��^կ�1����/��5�vI+pVF��@z��ˈL�����)���4h�V�ĖZ�O���@��(���67\����aTT����.�������+w�(����:pSv��;�\��.�*�[hI Yܧ�&���r�D�` ��0+�Q�DE��b -1ѽ吘�	Y��I��;V�S�an�)��H5�(��)=X0r(���6ƽ�ܴ�hе�_��.���Z[NFGx��\�Y�7FJl���V��T���iY�#�eh��.�c�>
�֐(�\�g��b�����==����bʳ�Ź��v���pa�u}�x\�l����8��@e*��,-ã� EK����.mG���<��W�x<��+��#k-L$���)ֲ�u��<hFs���I�b}2�"e 5��;�֩���n3`��d��2]�fS=�a�>?� Rf���"GQ��?�a��V��m�(����� )�&��-��t�w;�P���xχE@Ԃ�֥�zQ�7�H9�v��J�\a_r%I�,�G?J��%�v(^�m?}���P1��OՁ$<�Gk�LGpG�UP�ߴ,񐽘}��_�t����c�A$X��*���dl����g%�N���ְ���abWq��\���G���N��?XӰ�ȏ��Cr�������42��m�̓�����!��R��!<\-; �l���u⌉�U�Gݘ��(ǃ5[�u�q���*�;�L@ƪ߻E�TH�Gئ��{jF`���Z��?�����ⲥ��*���U����#6��,\u�ee��b\bI{P�1ɭU"�C�� ��3Fy�c�E~�8v�*�5��2:\����f.j&
�
�=�m�+�K���
�9�V�Ɣn��$��TR�½]�����~����u%݅�,0q2����~�
��T��j�(�Yj�]�dt\��/Z�M�O|�z ���<�* �:��@0���/Y�b��2.J�Q����a6`H�� �\�?\�g�<~0Q����
���C5��F���G�� �
rJ���z"��<�f�*�� O��}1���w�k���(YM��>d/i� �:���u����ϋ�lB~E4��:<�����|݊a�I�<K��eI)
p�����Z��o��i6�+�j�t��&l"�i3�Xlo�W�~Y"xf�����0�+�mv	���.ةk�C���w1^���D�+�1����k�`������޴z�?���cN?�:K�U�l�T,;�J���G�T���V��C���/��s� �ňo����z6Z��ϙ�r�q/�#��L��R`N�Q�F�^'a�9}E*�γjO�槼3E�kB�dl�B���8ߙD��-��希Z]W��*9�����;+B[&��\�zc��h��+��shؒ��CeeW�0��g?Y��d /c��zG�u|H�9�R�x-K�USA&�Uf:� ŷ8ݲ<�ԟ��@6��¼�ł<�q`ъs������P�X�����Jv��m��Lg��l�����\�jE��oǧ�)����`ص�k�u����y���}t��[�����q�������oK�+���L�{��8����mdb�P�V���&�S��?|��6� ��"�l���#��tryC��S��\�m#�o�+�M����N���n�𸮞sS�U�4�>�``�@����1�؟�P&f��g��+�:�>g�T7�&Vb���~t��L�s:�!<9Eh��B"	��)�W�;_��u�.�CS�vRȄp�\b�p�o7��QUHE2o�����m�n;��"�i��%2(��<D$]Y�c1\F��on��]}�x���?ۥP�	-CH����3'S�L�q-�@��A�4d`qi�,������\�=�:�ݵ�Q^bo
i�S�-A�a H��DI��Ed�R���*_�L���eL�'��E����X��|�@3{q�s2�ig�D��~�~�>��f���a�E���B{R}Oqeu�Sp�Jd��9z�u*&����\�hb��7�kb��9���l�'��)r(��U�J�G>��!bC����2k�t�j��'G]��"�]�u���S������꿉4��L�_ Wˤ ��
V�t��QU�Ćg��`U��*��g�J,6C�����[��S⍻r���:տ�ɬ�R��JVXp����
�^$�i���|K���4�IS�����H�)�g�+�l�"WK�7}� -�	���Yj8�C+�>���:M�®!�0�HR���YepbJ�s�Kл���))��~}�=Im>��d�6<E:J�Ӿ*ծ���-Q�g?��D�m��&"$����U�Y�t'`�R`���Ʉ�ݢe2,^���`��(�y�uӼ4i�s�k��˯9���P��������5��T+� �=c��;�[+�%��S��i����J	��V�1ϭB>�ܬ]x&��Җ�Q��mR`��P��o:�y��2�HI���q~ǧ�f����Ԭ���uU�(��
���r*��C�6�^/�:�4C�    ���]�r�O�cr��ֈҽ��Ivf��xG�D��=ZA�h��x���'��5l�����\]���������:MX$��0�dkS��-ڪ��U�PR��2����~_�K�����0Ū��6e2�3������`�Ɩ��)��J��ժ�;*�!�� 6hx�.+�gﱕ���#�A$���ub
���35�w	���vV%E�ɔҠ�D�%"��j�ظS����d"8�:'d�����tm2�+�l�*g�miX~���4J������]��㿱�L=��XW�����Z9O�'�0�ۚw&�C�����
W���I��B��K����^��C��πE��{��<�P<WM��ؽ�pK�������-C%�,����0�;���(v�P�h�X��I<ÒA���>|�Za�]�hjz�\L�2{��f���.'�_'�T�s��#���rL�9�ol�����q�2~"M�?d�n��]#@[��=p\�vK%|�F���7��k0��?�M�89��~�;��D�f�.��������vPe�2(�eU*f�2-L���DlxB78Ǚ5~���:ln�{	)��I������}���H򦜍��K��b ��w�\㒲 y���/�A�9P������ʛ���V��ʈ����n(]�i��I��t"��.2��V���d�MX��S�Z� E�J#*��E�踟�	[n�7��E��-��t=p���1�y��%]��2�߫���R�qZ۩�Zz%A9�J8��}���Mz�e�z�G�X<����NĴ�|��,	��]�AS�U;W��PW%�. ��7(2�׭(�BB�߰]hg� �)W^n�C��Ol �lv��doäx�MSÂ߷.�d�5���t�\�k�<�}Sc	z�X�L�t��Q�[UX&�E�Q��d`9��6vQ�2i�mF��M�A�ʴh�Ӓ�W��t��1�6K�+V$=QPƿ�7]��W�?�)|���)���Ӣ{r���X��&�u��e�c;J?)�����?aFe�vb$ĖT���.7���XO�_cFlmѹ���q�A��)���3��"RR�}ױ)�Բ1���ց�������
^��R+�����m�j<p�w���L�]lY~�|��A�76V���zpoc��6@Y���9�nU�*x�;�g2o���|��(�Us������|�����@�g�1e�NX��T*[�J��б�K-S�����P����TR�c�-_�����S�DB��d�O�}\ˀ<�g�O�_#|p5.t��Ṋp;�;*��&�Z�0z��I�eC(H�Cʔ�ȩ
�}�H�+e�w,?�"G?0ZrK�n�qv� ƾ7��I�HS�>@;~+ϣ��PT�٥��&̖dӭ"FY��O����dO�3T�$6����`(n
N[i[2iGI��V���绸|}c<����ڨ�`[�GI��B��:+�C��V�<�k0 ��H�~�pEStѭ�ˈ�މ���N�m+52���Q&�ЧߎB�4F��Z�m����ob+�d�ew���*{�C'S��m]�{,����u3PvK[����`��EOՎP��I6 �\:��
=�qz��Y�ō�C����ma��5��u�m�C7�1QB���	�%T�n?m[��^�Y������ټr��-��{SIC��3���v�Rؽ���2U���>T
|Du�(�M'rf�q���%Vh�A��,��$4E�r��>�]Aa�P-s}��7qS:FFW|�����)�tͣ�I��	��ԭ�yɲuK�U�����ib5O��U9��1�E��mp2�Qn,M�:l��-�͡	���������4hJ�S�`�:� ��:�C������CoL�񣿆)�T��OHb4�ŉ�,.�.y�#̏ą��׊P<='Q]�V����E��\s�/�b �܇4֏��w��6�(p�0Vt��aE<�${6�l;�E��OqgAD:g+�L&XG��"1�½a�d�b��W;XR��B���i� vx��b��O/LblسN	��
��b"o����q[������v7�V[�]-@�O�rۤ$�N`� |�����.*�b*�UOv�ఘ���v�GU�O�7�_0�=��8�%� ſuKF|@�V�^DUҶ���f�X�4<7�ٻ��o2k�_�+�\�s�;]�dd*�K�aى���!+K��V1����Az��	�RkD x_a�)*���i�'B�E��h+�ⰴ�<>jm)���j�iY���N�Y���9z5a��gi��X'4W�\�(���ڵ\o�Zk⁽�z��0o]-����ñ|�����=�	���$���Πv���f����gx�A��Ϊ�o;tG�I�!����!6�'Dp��\s��X��v<5���:lK���".��<�'��K�Oթ�+� �^�5ɍ��,ig�+��#RNO�L���y!�#L2�W�`�{�E�������̊��]��o�ؗ�<�ui�ZU9�o.@�q�����l���6��K��O7���m0&�ȧb���O�5+a{={2x��;}Ze4M�<{�^��"!����H��!�L= ���'�z@�5Zԣi�.I?l?����et�`e݄bŹ��85�bf9-��!���QGw���־�K�1ħ<�u�Q�E*[�����G��1��2�צ´H�@FXn�ۋ]&�vk��mf>��������ݒ���e��{z�>�Clcㆭ���S�b�����"��00�NK���>so(p��h.��/VF;'u-H���|+��:W0��`�j9��.���HҦ@��ٜ�ڏ�E�B9�6��*�It���l�����!*�G����T=w׭�#��L�ҩ+��w�"�c[:=O�.��B��\��)����5*%u"�bS!�����!b����Em)�~�����q���r�ݛ��)�zV*��W�����:XE����he��D�fM��j�j(vGU<�]�PO�����N;�i"���S��*'��*5÷^Z�-$�� &k�/x�Z�\������n3/+W�P��	���k�Q��#U�;t.�N���'!�C΢l�
inB�β��Q���HD7�xmuۭ�!J�-��
�gf�#\DU��("�2,��Q���fy�6�Lj�����H$���������:ui\܈��[JEƂr�S�ޑ�������� C���p����˺U[�C��e�v���Ep��a�rT�Iƣs|����3];a �6�~D�{���A�+�|��I�՟LD��t?p|��dp�t=�"���B�ï����N]JE[��x��ބB�p�i�sr'+̙Эױ���X���'C���U��隰����;}�h3!mq�z	�+p��WS*���;?�|���~�~R4�c�����C���J�C���������n��� &u���ݞϸ(p�<�OtGU&S���hԒ�?@ �n�]e0��_�(H���"̰;׷���6.wU�B�� �N�X�oO����TB�k{�=u��� خ]#�����/x
����׫�a��xc�y�C�����(� ��Fc��O|Dѱ9��[`p�]hHIx���Xb��x�"8eln��;����V"�CL�_x����5��7��_��r{�V)���^4}9����ѐ%kN��I��x���ѝ��8 ����)�k��0�Ӛ�\W&9�M��ص9�qC��lS�/à-.����
k��&� W'9�%�ݙv�ڔ�8~I[��IA�S7,x{��R�׬�W��sBE���DѽVO�l�"��(-�k(�u��r��7��
��hlҒ(�qRU�\)�&�DFwK�`,z���!�1x5��>|�-6ѡX��m"�L�Q
`2z\�DI��?R��V����!#�1�.�&�l�����X�HC�=ʇ�ѻN�+�j����(w���F��Nƞ�
K��X|a^:�O��t�+F�Y�_�މ���T�C���|��D1fLͥɼ�sR��q$��L�����$O�G�a���+�w7r҃�++8�/�r�`�A�,�Vx�f^Z��v�!t�����짌v�����(�B�    pKqZ��hK�)'��s�(W:CDߘg�PPi��&���[;~��vo�^��m��f�?ke�M�)p��֩�n��B&�P���D~��%�����v���~N�R�ȕ:��1fWhH9Xi��򝷥^��+���������3�_��f���(*������U\f]�i�����'������
|még���ʥ�`��e�����}q"ج�Ӕ�$���*�N�˓p|�0�ĵ�	`��V&���Rh"8X�,�>�*��4��ܟ��z�
Z�h�~0���V�X}��+�;�|�q�݋���g�=L���4���k	�ԔZ6Y����i5��z�2�n#ЂhAy������'�\F�pv�[�mN/w4�h��mxjEU�3�CR�F�L-��k��w�I''wUQ�ۇ*WR]���Qт�2�*5��QB�k�\iX��w�Q�q)!�m�l�ʐ�+�k�;E�-�/R|4���'������[T�^�y���L�)q���H�-��fz�{.��a��x?�!�ܻ\,�{Zn�+A�E����Ӹ���+n<��F�a�zw:�,�"�a�2�ҡ8��t�ZҸeOxှ2UbJ�o�aZ��
�oĞ�Ffy���lȈU=;<${�s�1�ܑSb���kgUA����<	|�AQ�e�P8���I)�;�P���ށ�����;���F}j~��������. �g��dW���p���c���x�b%^C�6�O:���ʝ��ڽad���^`��N�,���U��[l��m$��&�1ݔ\n�7���'T%��x}k@�-�W�f�?Q�=�;G�����H��&�dI�� ����}D����|�,�i�BF?ff? ��!l���&�ʝ�@~Vۣ4���\��dq�7�[����>Q��* ����p�[���ʧ��[��dp�*�4p5���+G�e���k��N��H�����7�7&]e/j�O�W]k�=��.v�u�A�螐8��\�Mb�-���*Vz���sյ|Up��u4�p��Z�6u��5��v�;��hFt�R9��۔.�QwHޚ縌��IK�3�Vh4p�a�JUy�����r������*�"V�A=8�������I4�oI��n���Z���`�h{��-���ܞe�ac�t�^U�����k֣�n(��̲��yǱ���:���᪨Lm��b�K���'�n�&_S�����*Jn	|g�u�~�7D��'�4�%�-U�������y땿s*CS7VA��D8e�����J‽\�*`^t�޵=�b <��҉��f�!;w�?B�t+�v�к�C�*�W�<�JYE2o�]�m�֖B�;W���wd�QJ���9���37.7�2��r�����HH���e�ݨ�}�a�
S׍�	�
li���S���F�'����fYfy��jbw��l^�?1��(^:�O#�M�V<`� u���͎�uq��F���v��i�ƌ��SG&�@;o��������W����R�ՕP\Q���Nv"6�����$E���1��5�g�u���:r�I0��NuPs�ؗI2�`r!��
/y(i�*t�Fc�4�}D�h
�����W��jI�`���%k���W�ɛ"��F�ܵ��Q�w�adJ0��������*���ݼ�a�p����|,J��.��)����o�i+w���lj��0Oۺ\�H��)��_r���Ȑ�!d~�k�M6�}Rߗ]����+X�qZ�^�sՆwYd+�&�צ�	�o���( ���yI��$�Y!�%Õ�r���/�y���:sR&Q���)�*��#�Y$a�Z��{<`B�v���1��t�֢�a���9Y$��h�i���#�PD�<$K�~�;�T4�#�n ��n�,)5�"�ZrM�`����t����� Mt��1_1�x�9?��?�;"�y J���!w� ���F��cp��"@��0Tμt��$x�΢,�NV��>H|������2�ۛ`
�{Ȕ���G�4Tm��V�'x�:������ҥ�
o���5>f��R%��[� c<�Y�)�i6�^g�t���v`,���2��^��Xݲ����R9{��%�6�n
�n���d�h�r�&�_�W>?|aQ7����o�H� [�5���@���(^�5�*V�jS����=e�#P���D�iZ>E���vm����T�p<v�z%���n��C$�#(��}�ƎLTTX�X��p�����X<�6����lEΫC�%]��K'�T��]A��_S��cgS��1��\A��ڟ٭B���1�^�
�QO _Ex�s-@'p�<�8��gC'x0Mϱ˩�-�,L��Sõ2Ke��`4����O�D��M3Bul��nL��X�`��,6�^��3Ŋ�Q�w��7�����`�ݪ��z�G�_���Jө*y�S\�P���s�����k�w�c�۶� ��L9��N��C��~yI��`Q%,7����}Ś��`������J�8��e�N̃�Z��P��s�%�~:�6V2�(1�K�#��d9�+k�D)�P[%�7��+��1W {��Qe����l�F�M�
�ݜ�ۛ-o,�LT���j[
ս�k���C���.,��d%���Y`�f�%��Pwz�~L�OY�֝VGں���]jO+@�i�䢲R�?UN}�;�O?����V{��+<-'���_� 's���R��"6>���7�Q�m	����ʂ%z���� g)�����V�s+�G�F�;CZ7�������?��0^�}$��&/��l*�p�c߱CP0�8d)�:\�ݳ�LkJ���k�s����=�}�X�YRVj��H�ݙ)1�����1�&��H]W���GT��WƲ7՞
�4�L��㢌�%�E
�c��:	n�w
B2z��%����ױ�"�:Y2��A`��쀒sW�S�O$�v{�]X�Z����XW]�|�fC�>wj�~R,`3d�/����:Po[�������ne��U��U;6�r#������� ��r:��}�By5�ź�_����԰��-�5x�F���"�[� #wY�{u��~���a��m�r��B�C��D�,_R Fpy�*Ԏ��'�M7,��.TD�Ju���L�I�˽7j",6J%1�y,�1J9����H�8v���nSR{���A����������DG�ӷ^��<b/�($��nu'�۹k
t�C�rgZ��"�ˁ��KI��Im������wk2�Z�����/����&/�bS�B*Y�J7/F��4^�/�x�}�Xe�ـ�U�~�?�� :{��^�mi#��8�������r���?Oq�r�^V��&v:4�N����wP���	.�3I��n�>VE����UxH;��iJ3j��<�gQ�kJV���t��>Q���Т�/U��O`�~��^r̙mV]V�4/\�V?Y��I�o,)�spN�q���d�����A%�_�J�]d�N�Zlݙ�s| ۻۃNAG���)t��2Y�����\�1FGW~�}���R�u,���8@؀��Lؒ~�r�fȁ��獇�g��OT��UO�sL�zѿ�����O�T
?V=��kg�x�R�J�hlK�8���+qS��}����S®)���5=d������2~W�?�q�[�[�Rܬ3��t�{�^RX��z���x���>�Tp�̾�%s!�ĺ��Qǡ?r]7,��>�%4uq��Ċ^&޴����|���Z���_�v��U���;^_��RLN���;��m��WD�b">x����h�'�;*<�mp����G���Z�N�D�v �7X��h��p���#Uiձ�d4��-P$w�D�*���[��ƤEVj9���Ʃz'��h w�ǳ�:��%��to<��zHs0��g������;�~>*�'��^r�AϬ��ѡ�?�k�/�:wD�ޟ����H�>KB-AXt{���%�QV�s�N{Q�{�+�aTj�3�zu��:����03�Δ�G�8�.<�q�!.�Hͭ�����    �׉a�ő�s��	,Թ�<S�\�+��G��ߺ����iQ�g[���I�װ��a�e������0D2Dt<�	ղ�
Z-�Ŷ�I��Z�\�k#��p�f�Ŭ�N�ݵ�����o�%v;�3l5����H�I����t^�����$z<)�z��nEoM�F@�� S��$-E�^x�*���vD�G+"���Oێ�!��S����͛�}?��Nu��)��t�u�+��(gɖ5U�s�B���4BQC���K`	[?��([�i�Z�dǭ�E���H��m�'V���`�%.�C�%y�\0S���[��CF��;r�3�uSs�y|�7� s�Ru��]�T���hCFlC��jj�؇j�\�Ρ�j.�X)P�K�����$��A+��o�Q�80җ�o��n�c�
djnCt�-/��2Tjb����+��7���a�-�m�$�ۺ��L:���+��[��mP�nK���V�^���о�[�ђ��a��#���+�38ó�.����S���n��S{p��ƬC=|8:�UE��8�^g�<|�f	~B-�����o�+tc�u�Eܮp!���+�E�����sV(�s�#f\����~� ��M`���b���M �f����kV��j�{z{��3P0�XX�V;�=��A��(��v�n:[o��ė��������<��*�΀�m��u�eb��K��g���fX7m�9]�ʃ��K�!l;,X��]CE$�F��/p�+�h^�ڹêg?�M9{�Px�z8�*6;�)��K��<��&z�u<=�L��x"֒UuX�Lh��o<��aE�����l��V�U��A�
��0�F��ׯ�&�-*~�,)P�c��t���Dq�S�:X����%=��@��'�5Tr���\�h[���{JA'X*����XH�F��S�-��16+w�-� �~-JL�$�fژ�&���ޙ�Ҍܢ�(��k�$�$�a�v�K�j�M�o��X�s�R�݁�@kWJyDS�;:U@�S�I7�N���_�C�TW)���WN�fv�Q�e�>���AA�eaǆab�;	�.q	��;g;����5] �{��<��!\ke�}����R_���#�)�6{�U�iA7T��S�L&2;�Y�?�G�!r�(���PL�[�ZZ?������Kk*Ãɩ�J©��w��<#]u��S.`�σ5�#�OA���h�HW`���1}��7j���2]������#�d�/��u4�����U��V�`�n,\SS�ԬB���VI���,? �[DG%=v_��m�h򔐙�淝4��`���6+�9�\g�V�<	��&z�ӟ��Q�Tr���U,�Y�;��r�t0����`� �rت��$B�W?�<,L���`Ro��^M���H��ET�W���T��)�Id&�&F�3J��_`3�����,�4�FsāAt�wg�(D�N�w� Kη�\V9'�R7%ݾ�	&���k�"b��ŧ`�Ը@�塾?Z{Y¦�
�pdzG�'{�n��R�2X��4�v۞_�����d���ټ�e߭I�,�)N����R�������޷�g���:/�~y��D��Hp\�eP��꟢���ME!� fӬlv�[�$R�]���5h!ig��o����~�[;�P	?⪱� ����$�kY#,P^��6
�mJ�Q�t�/&)���ğ�`��1�sK��j�_�����[��JJ�����D�n=�����OtY�du�?���X����객�P�p�/֥�*�@�hd���k����B=$۟�	�!��u��-���LL��zh�Yp��=rQ�b�b0�q�:G���}hk��PM�,���R������;�?�P�i.wy���AL3��M���6�cڞK�I�p�MMq�nN��%�AG�	�P��O՛@��w��E�8E����!����2��'m�e)���L5%a���k��WU�1���(��ԕbc����>�(����4Ϟi�e`�t���4[NG�9
C(����H�X4H�ht3��Û����R��D�BY���l:T�?�A��I�Dv��q���(�T^g�+�,�$ɪ^��x�6�)������0h�[m¢�3���<{VN��Z������J˦5�Lz�U�H�~�p%�����X�����9
����o숈*����X�a��MU�r4!�7Y��K�w ��G����#���5�A��P�	����9Z�(��s�gG�S���P`\t��r�+W�HI�دf*	�^絁��X���8�W��E+��f��s�:�8"�-��=(~$��*gG�Xp��wb���gWz]7`QaG�f���I9���u�T��`(�������{AY�Eb�$�jt[�h8P��(m9��F_�*k�x��&	;1dt�>w�j�hN|k{iR��g�������n���$��ǥ�l��0]�0��YÍ^�����~�c)?��:�SF���N�A�h��L
�s�[�n��T��h�n�טa�1UJ�,׬����0�xh�4k�a(��ĵM)Z��#��X����u���V:��2>#%����P���z�UZ�,.B��/cj��[���E8�)��8E�H]��P͝V��:�J%o �\�{8�����Z/��-���{�������g�ց=�x��څTu��V���/z^b��*QO��~�"�K�W�£��Á�X��W��]L�r�t�����_���䢧��U)��f��Ϧ�w��y�d����'?��c�:��-eX�;����[��P�F��/(��}ݏ�C\�߷RVE�+���d�U#b�+)�a�mQ#��*���9�DS�IKז��\l�oH���`�(���|N����l��H���O�ɞ�Ĵ.����������ˋ�|����f]�t�ɬ��!M[
��t�V{�D#^��?����Z��:�"��l��0kkS��7����fy��F�!z���T����&Xz��������@3�w;z|������?��� z����Q�[Q��VEh��駸2��9��/��)V&�x�i ¯���M>L��g�f1�`��m�hWy@���jx�3+P��/Y����$� ��V�Hp�~�}��"Aa�+�#-}�%�D��<Ս��pt��u�����,Ú4d/�=�-{ �$c"cb�#D�N�Qh���+5���G*�"��d�ͭ ��)+��'L�Mn�Q��O���y;=BD�)a�m/��ڇ�W ,ۼ��
��k��?����;����y�j'ݩ	M���[c�CT�Ȼ�%ͱ^,�m�r�.��A����Kb�r��M��?<>�P*�1P���a�]�����t��(���w�=�(�X���U��
Q���l��
�U^m� ���fYjҟ=��2)�2�A����Q��D��LvevU}���{0sZQi2c��p,������6L]pe��̮����C�m{�d�2�s
{*u�݇��
?ݜ��W�	H�9m�2�r��'�����@צ :�zV�������y����ĵ�tmB�$7�G�6������~dn�臃��T�P|*�{g^̱sC��\�6�	��M��j�7^v�b����������9����q]�l�0��v��¤��r�8/��;�]�e�mcK����
!<U�X{�Fk�@�X��p��Nftץ�������^l`�팎��E_r��N������g#�r[��-����Y��\,a�P�����)�F�W��o����#�5I�x���s��x��JwM���Hlf�m�cԸ5��y[��?��Φ�4ƒ	n�5�/{;�j2h����v�q�^�	�~:����	n��v~4�|����ر�ѿ��{.�1=�_Q�{��g��P嫈��LZ�-F�Q�ӳ�����`��%:���s3Y�
 ��m���Kpa����8�{�c� ����x�G]�.A�d�a���K��9�d� �ggs����ٙ��0��(��#gg�~/�= �~.����<��H�s`��d��c�Q��    �h��Fs h�k�tDoG��ɻ�'���	\e����_[P�N��,�
��0=����e��'��8g��9!]�|G!��$UȒ��\����w�hY� 8��˩	K(��O���oiJ�b�	3�I� H�Q��t.,�|baw6�W�_�?Fq��1C��?�>6�"X0A�k_�4r �_�=�sp���׿��)j*gx(�o}�z�J'����3<m��<�J	�1gҡ�����b�<��1�KH�sv��l��w&�Wf��ͩw�{�x�r��peɁGw!��<+0V�^n�_b/�#4��#��v��*����:~W?��O�љ|��F� �6"՜���gQ�fu����������~<	�^SZ@}�~���с	��h��	px�Xq�h#D!/虸L?P�$)ȱ���X�k;�g�*=Tk�Hq���a 8Q�qEA�=2t*rI���8/��#p�R��?钏���%��)��H\�/Yda�
ݛ����se�\N\�'{r�F�v�kT�*�cd��q�8��>�w����b�R1BKbIN��%q��rR#T��K/#��}XF/�E���� T���'�	����a,/��)zDamG)N���G�؀4�s���)7:�Qiy5���e����N1�s�Ox;|$��٪ܣs��O׎�I��立5vs��w���.��nי���A�ˤ��x��)K1k?">������O8|���V�"�#��O8UvIOe��iȽY�d�����YXҞ���+�r�1�gL˸�H2�Q�8	�9.c|�7��c����o����'<;��W�D�$c.Nc����0�,�û�Go�*>][{�jn��eVu�#_�U`ͧ�����Վ:Jƣ��]_3���)cX��f|v�Q��.�^~�}��|�6F����}�Yӝ���o0q�����w�ێ����?UX%�)��o�/����x�����!��ۤ�Sa��&�?��ѧ�������cM��b�L��o�s���Cz��2Y��T���$}�䏾͗��� O�LB[�� S��G�	���9��o(��x�O@�u_�ea
<d'T���1,���>m���ñ�j�v��~;���uP�C���ew�t�3����`�g��!G�?��2��L��#�6�{%_�����z��Zʐ�7�����o��t���AN��O���0ft3�*f��4�:����F\E��,^���<e4zW?�U E-���^?���-�gT���1�Fxe�CM{�,�zD��ףG�bȇ��J'	/@�F�k}g��(~j@X)�~3�&���5ώK.�zx��E�	������9�?�3���v�@���aZV��z�sb1eX��a=����%X�E�p�#Ɔ0�gk���߷|�� ���{@���<Lv"�*w8`z�����k��}��+�.�� �g�-ǻ�p �L��Ĩ����g�'�Ÿ�,�c���m�}���OY0��T��[�=��2�+��5V[z�^R�U����+&CR6�(4���6��(��3�dp�OZ�&F����9�b��=�(�ӕ"�����.�8��qx�1Z��9p��'��R�!�[r1�h�.�{	�UN���n�1ư6Ċ��E�3��7^��1�^��`������ً��ł)s�������g*��9�L��Q�9]��I��{���?�yؗEЅ�z�_A�,
m��{/2������-֭���1�M�b����q/r�^cMz@��﬇
���(J_!�@��ԗ*My�h�ooP��]�0���op�N�ގ�,�ylR��=��u��N�W��]FO}h8���OEq��ZFHr�C��X�����ĻU���D�=�e��
4����zZ����u�V�����ޠ��gg���7��޴,mp�L��C]���q'�"�^�kЗ�M����e��C���u]5݋ƌ�PK�c�r�K�é�����A�Yj����w���� �PQ1No�$�&�^�X�x��Z/N�Pm��X�w ^�5^Ƀ��P�ADaa%�Ӽn��G9v�=xYmsQ���{����t����@"Lp��B���d#Z<��� �����'�w-��<Ɋ-��ݬ�a�§'|���e\Vnn�$1Q������m�01�6L�@����u��q	�V@�?��x#L���U��T�!�e?�d�9�$"��� kIH���F�5}s])�cXn��;�A��A}��\*��\$w��*isS���{��0��#�z��̞J  �O���1�s����{�J�q����z�8�D�����$���*`��2��bw�
�}��H�a	§(��ڋ_Ļv�1B�8�Bn��x���^�
���.�i����5���wf���Qߺ/A�Z5�����~Eő(eFB�t5���1O�H�&��`lǝ#��a>��Ck�}0�2.C㓁}�yY����Q�b:�gT�R��ʥ�x���0�m�;�[������ɬyU�|ϟ1�k[� l�|/@�7��O�4�En�?�E������4��Ǘ�F�Q-��c������
�q�b����
�
�r�������-��R���
�k���Ի�'�oq�]3���{�P*�����Sڷ.`#������j���ޮ�}s�@N��=�빁�}fL�xh��ư�^I
���Wә�ɾڒ��Wr!Dl����
#[��Lo S,hϴa�KV��C�̊
f3�o���=�)��g�L>��`_Zl���F��QL����yv��o�S����	j
���2����CV<i�����n*Q��>n��<���1���*b��>����Q�i��,��̫(#䨗���U�P
|gh���:�e�e�7���TE�: �o(ưW�Y��}>�C���(��gAk7bdvk��`|��c�9��_����Ѩ�c��l��=4�e�;<��o�;����j��9&����^n�˼�S }k��YV ꕫ��`_�o�oMR:��Ջ��xa�w�cM�;G0�o
�����pN������1츗���q�%��8E�9�)��o&�w@Q�d�#{��^.���{��Ʀ�!���b�*P��Vޏ�E�6;�r/bkvDP*~>%�#F���_Z��~Mk�\|��H�U��2�o�нL��������5X��=�{g�[��7�3*H�_&���`Z�rŸ~����<������h~��]��Tr��"�>�l��92��e����?x���z	R�$T��3e氶��,|�9�y�����X�
�K�G��]��'���l!w1AA��KԔX1=����Pڋ�!$Wƶ3i,�!�_��
��_�� �%�8�_��h�+�Q׾Fk���D���U�P[b�� ��4k�?�i���+`-^�����z������W���u z�A�`���j:|^xH.�I��%��+�U\�剟j�v�jR�}���c���p���5��J,����>����%��\��=���c���~ś��G���������b��辞�K�kK@����~g�p��Ac�&e�2�y�z�3(j����#C7g�=����L��$�i���^K���Xl��$��F�}`�"��EB"�O���e��0�M�����V4�yXny�{��(K�/�|�re"�c��ҁO� V�p��;?����O*.�fXSWy&�M��y���.0�uf����n&>����R�xf��%ǫ5�>`�X���Uº�E"�<=2��>�������)yǔټU�.�]�ُGޓ��/7�0?���������پEn��ҷ��R��bC}���'�E?%[A��)#[�?����)��WN��L-�F^Iy�Q�7B}�CP>����'�L��T����ط������$۬d��]��$W��4F��om)��#��N�6�k�
�x/�§g�p�\Uk.�`��kϸ�u^��c�f���2	#��[l�wbGr;^ߊ?�[�xV�m�����Z�"��OΠR�+������(�h�    `�*:gF���ǻY' �ϑ<ZW���ߍ;������;���[��-��=�[[g4��a}��}�7�@��]2�-����4�XUgtH
��[���V�ٻ
����}Ӈ�{y_���O*^�s�ܡ��j�>�_�ij�s}\��17�(�����qQO����Vǘx�8[�1��^�q�}�طf�😡�kjtra�E
p��F|�Һ$�����TD�,�5����9����L��"�\�uP�ٳ$d��;��G"���%�1���0+����ը�p.��ثP=��W�j;�*T��ގ٫�ݤyU�ڧq���[R�혽���g�~��Kb��.K�Qm��[0��}��m��f �Yk���M@��&��h4Ϸ~@��[C�h@�o�?d]���s�¾��+\ד3y��@ۿ���v�#gT�@~��9@_n��\a#�5Þ��*)��pm�������x=UNPcΐo&"gak��W��Xy���?�"f����Y�e;�{�ٓ�G�yfFfb�^��rp�v��v��WQ��O���[ĘE���AgTՁ�|5���ũ����;����o��@�ٹ�.�I�}d<&��V��$�P��'*�y��cL��C��f��g���Ml����ۇ��14��~��Ԍ��X����q�r��(z����]܇����
�\E��劭���,�s�+]��z�׿D���o2���4��~��ގ��J0h՘��h?�F����N����..K;�q�:�{�#�)��|�7+�$����A��ƅ|I?o~.���+�2�:N��b�K�b��>� ؜�1�w�f���c��G�CR��{6'��\�=m埳�~f���;��Ŀ��M�0�?􎙚`Zi1�,K��a����A֙]����g�o4&�����Kp��	|O�Y�g�!~�1� ����h6�?�����U�w�{��I�U�a���z|��Rc��h���>�*T�+,�b���B�Z4���8g%������F`5{��V2L*@��8=���Ili}����4�a ӑFR��&�j5�C�_I���༳X�O����L�� T_;�T�Kpo���'��7���jJ���*-zZ��BA���i��-)h`E�`�S�����n�%,Ť���ֱ�,����X#��F���cɱ	0�h����X�c�&C��u��T�
T�4w�TJ1ņ�`wx�L�7M�U��p����8���=#tU:�%�X[PH��K�I�sӢ�va�)�~n�E0���>f�VG_�������`�uxhbʰ�b��Z�3Nb�x���b9�s88�
`�d I�`��E#&�j��.�c�U�r3��7��ɺk�6�,H�ވ��f�����9p�b��W�b��5;�/'RM�;��:�Z>?�&Q�h\N�/r��pBW��H��N�!p6}81��i�R�(sbGI5�б��a�'����؎} I��%����x��\K�?c�ޯMvÎ��~j�4r���6<ug��s$�C5ҵ�X��^͜s�i��/v��W�k�������L�16)o�g*ݯ��82�hU�ٜ4M�d1�X�E�R��H�Z�����H5�s��1��tp�pd��c��i�f�sރ��r��9��8S��'���3 �_G�s>��/NET��֩;�v�ܤQe�*�#-��u���Xe]&ۊ�b�ڳw�&ʞ�arl9����\�>�R�9^��o��b�Gk�i^��A
��|1�5������N����>]��\ey���zLt|��Fo���( �a"�4<��:z��#v*&����J�S��8�..��_j�z���@���b�j���S��ϰ�q��|�zs*4lǤ�*/��r�� ̍�:��t
� �s�{���0G��64�]��D�)갠FC���f�6���/��6Xk�~�*ړ��,�:c����R�}����`E�~0l�ʎ�L�m�����$�?��Ü`u�~��K��w�J���R6% 7�j����&���iz���^�	D�mY��G�$>�=��_$e�&[�����}'����	[kwr&�S���)��CIk�m��B�3O�k�^d*3�U�}��p�ȱ�HyO«�u��hg�^`��/蛜%U;rIE܆����9)��v �^E�YnQ��2��{���p��ɸ
��O7���c
���X�$��n$M�̤��0A�垺ԣ^�|��#Sr~�M�lP`�5���q���4f�?�'!��#a:i�ܠa����(�dM0�����2N�����.�	ZL����x-I^�����d$����S�.��H>��x��ab-��S�x�r[��ro�I��gvRQ>�W��~d�X��%�4�	��H{���P��y!#�J�H!�_q?���a!�x�H,Ї{�K~ڙ4���Ǥ����Ey���'����
*��e�e(æ���\��|��xinvanq2ձדs���-�M(�Uwa�Z!ů�>���"�5!A�s�Ӱez�Hl������>*������痺��L ����Rm��6�ӹ�c?�,P��i�M�ɹ�ls8���u�Wyi���V���>OZ��ke��Ţ*ZҖDۓQ�&|o��n)Jj2�a�m%�x�����0I���z�ђJ���N;��1vA>�0�V�LJ0�dŀK��+�H%��j���g���w4��̒�Ə�g p{���R�M�>��$�{��`���U��G���"� �&�V�a�u�/��C�g���g�>���1���WkVh1����Z⨊�Ċv>�[�L&����r�ڢ7`_�]�}���.a�J�I�t;�K܇�\��N�h�`_6�&�#�%4�����������k�1P,���!�'-3��ˢL�4͸�1����i]�(#��p�?�aި��Oq]a60Z(�h<a�l9e,�đԾ��]�/��=�E��FO��:=c�EE��a�h�b��JGѭ�Ta�_&/�Ta�ϣ�/�'x!`������O��9��T(?�Y���d�E��a�>x���
/�6z6���3k'��BM�p��_���.������k=�g~�X����� �g�/�X3Z��p`��|�S���+���*J;xłEu��d:�U������j���g:�O��9�Qfw�H���!�;x�6!ퟝ�0i:�/:�O�hQv*���\P������]� Ls>d�c����/NҞk6���/r[H��/}���U��v_�f(�%�'
����޿���
��|��&
!���2X�c���#���i�'P�
�)d��b'[���{�8�o�=a�
������P�Sl�i��_��:��3�2��ĺ�.r{��_($�Ijs������3�f�Pj��;�6�����2>-.�c�I}��lG>R�U�ƭ�u�?[��o����L$
Ț|�i���r�����Y'�$���m�p���QF��A!��Li��?�W��B��U�����S���o�O^i״�M���T�&ݲx�����x�����Y7��ffU=�I�t#5�mL��)[���}��نh!=�<���d�C]oȏaS,4�2���[�^��TтݠS�����.t`�!ўQ��7���v�E�=���ϓ�s<'�YV��!@�Q�Z����t�h���b^��b�3��Y��$�W[M����$�cF�	�$�cl������4=�s �|���ŧ��z�b�M��+S����}�=�gޥ�1�����X|X����R���/�`������ӵ�o�Q/��I,]��g ���X|��A��ӷ���O�F6��ɻ�߼TNx#�<�ʄ����qS�}(�0���Y�R�WH�5�@j�%��?���k���x��L�_s~����ȷ���T�)|{���:��Œ�i=|�۫�W�͖�M�	}��EͶ��k�9����K{��"��z֡��L��0�R�2�{#sƾS��`��.LY!L-���liҠ�Q    #��wS�s������\^8� �W�$��t�=+m�t�=%y+ΌSQ1�ͳ���ߌ�ⵛ�1y+����I��t�=�R��=���wH���r�[�j���<yO��a_�tt�[E�����3�J�9:a(�!}�A�L�o�f�f��A{�N�oܻ���~;��m����+M�:<��LG^��!C�
l:��.��x�F���7�����ȷx�S��n�U'a�Ͷ���Y��G{�.V��t\,��a�x���Wb_�h^<q�fæ��9�bW�t*Gs��ݘ�1���~:�07�uc��'��J�ړs�1)�"��"׌�@]?���0�*�������,��q�KsHX���;LQ�,�@�����J��ŀ=G��vÈ2�20�S�8rd" �X���3�2��Q�m���T����X����܇pm�)q�_!��'��庲ތ�H�E�,;���ʈ��f��+�N�P�+<`;�r0�Us�:����Ŀ�3��8Xr�N������axB;C2�+$����,gG*Fxc�op��FV�m��N�ŝ�t���"����$�V�@� �:��j��>�6��C�=a�K���1H��äIXNb���G�)ݔ0ڦ�T�1�?�BG�e&���]c�O���� ��Z�� �YC�=rתh�%z,i��<��(5���������0�U2��=�ʊ99�J$�=�p1\���9����8_[a$� ��n Q�cz�UQ��؎n$	b��y�w&��ȗ]��o��H�v�M�n-P��+P�xcN�7O��G��4��;1&~WxXXks��/�)VzJ��s��=c�}�Ϣ�mp�3�7<��|��)Y��>�C�Ғ�]Y�!�R����=�l	|�ۚ�S��T؄�6#�9y�!��x�UB=�E�c�n*�bw�������W�F$�����7���-A] ���m {�&�g�D1r�bж�|�zq� C�Q�ki��]���1��cU*3�UH9�29J岥9Ȫ�J-��-1Z����6���T�\�i�VUʖ~ �sm�"s�,r��./r��(s�~=��pqc�V�A����bî��
TT[浚3�>�	vϡ���7��s�T߾c�ks˸���婽5ͯ�˳��`=2����`��Xk�����YւWt"�Zw��5q0�]^�ԅ�M�T��~���Xs���ZiT�Y�H4�xw	��p2R���H]�ؔJ5��� ����(ޱ�ԓ�NU,��ɬ������̼.d8�K�)L=���\��ө��o?�s��e��D�)Փ��X��>t���l%L���vIa�/Ɨ��7���a=�a�'��m��˩焻�߮瓟z9��_-O��S��v���h�I��c0ݰ��zN뱞)�毽� y&t�2^�4�d9�	��ƺ�&��rr�V��[Phz�H:���k̬�)ԄH_��:�h,((!K�>a�m��A=��7���˚�ɧ<R�њ�<2�����e���8����|4=zp����|�0��W����w�;�4�[��1[y{�מ�u@8�c"�WX:�vFw���-�� �!n��8jq�fT���Ks���ο��^�����l��1=������c�����<��s[��kK�u6�M�_��+�!����}�L��濰n��a�Mԫ
���I��zhe���S�>�F���'V�N�X�W77������"��D�O.�sx�@�;��)��t�;���*_���-��v��`&M̰~N��kYba���W�9�2a17?0Xf��-�3 �z�0�ʪ���̬��+������B��#��"����$qa;Y�؛�0��ef`��|S�~̜_3��1o��%��_�����4�'�
�;�����[��*(�g��ߛC\���H��$l��#��K���@�R��b�`عbf�CsO�D��C�.��}$pV4��#��)�Ty��1���L�A �]�������I�����O2�d��8�8�,u�
���D��ґ@b�eR�}����N�~P�*DI��Q˺`�����kd2�PWY��KziM@�I�xc(z�H|���.ɩ�H�7Xq,a�4���8����*���aߑ8=`��%ä�iZ�0�q�n�x�č�u�� x��}=�$y�l�H8��>;���kQ�"��y�<�P��V$=H�H�܈�m��(ᚁ�����*@��m47�چ<{cY��{V�Gc�a�']eXz���s̀�Y��qpa֠%n�?��F�����va��'����s��������.b�
�9�c.�<���Ot�L��r$NmROQ�%�e^�«�iS�@��������/.�YBlFe��K_3��p� �kʗ��2��;�_�
�cuJ�K7��4�&C�Jk��#i��ۄ���X1d�����inW��מ_���.�FI���v��UV����U�w[lE:(Ҿ�_��d����;��w�#�"���Ȕ�A����?<A�cY�<jLE�M����ᬯ`Ib�_��ǩ(�إ�-LgT���"s	C���+���jm����_�s�E{�!$%Mc�O��1#^T"�f,ڹ$'��u���Zd��:�t�A�^{՜UC����[��)m�$��-�Ca|V����C"x�Ia�]����8:�>��O���m�2�����A�g%t������h�02"�y�����O�Z�x���O{��k�0�2?��X���FbLP;c	P�m���斑��q�[�f�˘�ߨ���NV�V�w^�60�I{�1�����zM)�G~EcƐ��F��D�5m��&��1��7���~��Rig��~�[�����ަ�j���&޼M�l{ĉ�?�by�6���}͒6j��Q���l8��ʧv���Ň���3�L��S�Y&��l��q,3�>��Cn�"�'sS����Xf�Q�ʾB�Q?��@���'�7l�G��`�X�oɶ�+3�ҁ��҅vK������\
DH,��+���V��ut㜖%����`L(n.J����e�ò����'���`P����11�c`��~mO*���q$n���J8J�/Y]˱b �/bS>@t�lډ1��A�զlLS�'^��h�O����4k�{^F��}��YK`��EWVGPB%�Ӳ柰5��N`���������3_�~GI�ytL9��=$�e�R��:�S��t��ƕ� l���Z�]�u����o�Y�2r�Ev����(���8�(�e���ZcJh����=���oۢ�]c�(�8| n�½��Eԓ��m�g�/5ӫfͨy?�,6ھr�y���]�x�C�}�M�H��[������f[sō�5��"V�RJ4��3��p+汎��<L�=;1�f(�4�k���}Be|�1?J+�#���~<	kR���F���3��Dӯ*�2͏'�a�?�$qذ���熆��:�LB����l�~3�]#��wy|l"�HoT��0J�e��֖��9�\]��5�����rJ�kԯnsΌ)�W����)ɗ�$q�)Ɓ_,j�Z'>�5�t�V��_�+39M��+Dv1����+����:k=��W���vͱ_�y6r��~y��+�`c�]d�R�~:˚=\���:�N͏�0H����r���M����o#'��B?�~A�
^M��l>��
��a�ʻ �'jƔ7�/�[��8��׶��Mm�^Z����wUthI�7d�wE���y�>�۱�bLTlKЮ�*f�_k��Ru(V@�4MR)OX ����٬Ӓ��
\�h��?�(4�Bd�(?�ȷ��E�:ا���є��]��<'��b>C�v��3�_�Uщ�|G?�x3��~?G���C�8#ј����k�0���q��;���Z�~���Ju>�c��bԳ�~����;�>^���%f�<�0Bﺃ��z4�����oa���n�*��m^lE�����Jx���g��qڽ��L+-�"����l��w١'��E�R[�c��T�/Ǩ����ge]��񈻂}�o=p����;vc��    3^k��$�g�M��Lb�*�QueM�$�+B'�ȳ�@���!���2B������LU����*�!(޸3���93�-[�_6����$���)#�f0�!J�����9�.��~W���ap�q�G�R3���~�@w��$4�İ��~�X�MxJ��C���_�0��=��.گ�Kŵ�c<�O�ɍ������x���������,�cJo�77�z��T�~�m4s�KS�3o��h�ө�A9�>����)�8C��:���[>�5$�%�hKs�n��5��5fNM�rL��7z��y��]1n
��7c�i��u)�{�C^��%"��O�O�U_�1mƳʖER�gz-���$��J�`	�wك�6�	7�����P�'WU�����6YS��k$��f�C�*��E�!V:��'�F��U�4��	�Ќ��"���(99�8>�$������q$��Ճ���T��uQg�7B;[0b���� �<�"]���!�u>���Y�� Fٞ���y�p�0�z�UF��}Y�s�� �c(E�U�&Z�D��}�����q�wU��ۏIzp�Jo����8�Aay`O�9��=���Y�>6��A�=+s�XʨJ�	�ԝ�h�B���:�2� �{
.X�77~���f�c���u�v+� �GrV9�L�oۜ�l�����4������������C�$��:�0#�h�eJB�����c�	QFۜ IFǿ�܌�=��`�h�+ѩ<!/s}�a�G���1�`���6.!�%�r�
:a����=����� w�]S�EFe����\N=Þ�gB~����b�(�a����V:��e�{�P�9(E��6J��F�����僨Lt����+�E/�[�~���K�r�r�K��oU����l{P�!s��)rS9�\�9i�N�)2?����/I��G�x��b��Y缸7�'����8p}+���������Q���� ��`˶� �z�v�0�3E=E���E]�$���	�̚�؄Z��oV��S�>j�4���t��/z>���%�+<}�
���i3�j�NO��Q��c���o
_���[Գ�y�/�\�U���^E��}m�7D���\Ipp����3�ߩC*�CE�R�-G|�.���/�ag�"���F_��иQ�mÍ��UY<�4=q���bQ<���-���p㗇�����F�z& bkۈ�>��?���p��?��ڥ���	-k[3�o"�ڵM�\�D�1쳦�X��ު=���Xb~r���8Y�g�7��u�$�!8o�n?<	)Y�g7�L�tI�A��Kx�SY!��q�g�� x�V�D�
�W�~�����~Q�-t���"	9���	�,8^�U;�|����������޲4hhF��D-P�7Y���z���ѽEq��<Xx3j~B��6�>T���0��L$���9����>�8l���Q{
pոa����y���j�l�c����s��+�s68�@�c��tG�qH���v���y��c�����ե��O��^��>�\�Me�Y��#��Xľ�1�_3<��gǾ����{��<����!`��g��ɭ��M̈�^�?ފ:�^t��6���%�E�Y��S�/�8h��W�ֹ	0_]^뗍U��&�c�)�#C}��ng��3E��ć7��{G�/zg����,��!d���@����S� RcJ����^S�ֳ}�����A|R`_=����#}��ڭ���!w��̑�����W��2K�� �
�j_��ơ������T��'��Ey��#<lN��'#%4U��菿�+]`1X��\�*����M8/)GW� ��Pn�|�c��:�AEB�R�Ͱ�ep,Dl�Ds'�榐r�����>�;�R^�NswBT��Z�LH��]�^1�=,:�r��k��9~!�L��F�o�������A�����U�.B4�x+]��&_�U�P����7;5P��"n��m,�<�S�=o�J9m|U!�+�f��1:jJ���C����+̭&��oU�j��*�hMgCQ)��r�w�Z��A
I��R��:"& ު�4"'�G=�J��25���֬�TJ2�]㌠�]Oۉc�,�Y��i6���#��ܲ"�LG&�*�eW��t*��w����6��3_��Q�;�~hN��0��1��*���}d����0}�#�c�2ѧoV}�գ��l
�s#�,U]�6
�>I�DV�-K��'���ڿs�����8��|N�Ǽ�9-��S����~3��F_	:�5�it�T�c����k@,*�D-���r�;t����(;p�����k)^˵�-t�u�kjcU�rn����y[��$ƾ�4F.�w�k���~�@_����FD�F�=��}���4�:M�I2�%}јN���*ӝ!m��c�n�HIl���8�;���������;��55ʊ	qB���^�������`��kCq'��w�2�O)�b2y�'c���q�{uLūg:������:�3�\�B[	y�z��D8�p�TeOF#�谴��8JS���;.�/�%��w0@fGF���B�]�E���p�R���d4�w�N�Jf4�w�&ӌ�}�y+w���E��m�^�e�Aۏ�^�5���m5!�C,���7U@Q]rD'0�#�aB1�GT��i9�<�+��	yӄ)�ծt��4-�j�����%��
.����Ne���`�v��O�;C�H�|�I�L����ᢀhf)�g�����F?��Ǝsp�rZ`<�T�U��o�
��+�r�?�9\�\��d�ɺ���s�86�p�Ԅ������Xq�d����Yf[@�H�*5�·��>�F?��%�1ߴp� Δ%^uwW�fRTf���fh4Ҋ���c� �ƚ}.��U�|�ma�'���^ۮ�x�of�_���{y�4M�u{UflO��/���S)��HFo�^�G�� �3r}�����Dx�y����vs)��Xra��)r(Kȇ�>��J�j�~�����mY+'Z(�"��o�[k=!����c����!!o	���ǳE��c/��t���G���L�rǁ�3\38T�\nG�y���W�a�����ಋ���5ցQ��zfxm��@	n2Z���� �᮴��h�5�����v^;����u�"����ȋ`;��/4��FO�qJ@�JK�K-�Ey������YP��Ѳ�s+/����� ��gۇƂ�c��jˀ�b|ul�mvv�[ ;	_"��CݍBqJo+k�Pۮ�̌8��^+��[���P�_r@C�xm�>�f6�G�B�x�?|e��u*G#=�~�45:��ә ���X��-t�
&���8�h.��MnK�����*
���8T%?h	�*0�J�wܟ#ثm-��Fwjc�T�`*d�yC�/~��p�cV��ed�?�&>R�5:�>��O=x�� ���GP��Ym(�bB����wZ<���>���MN��
.	�i�k<���8��E�q(���pc�n�xy>�⧍�K
��R y��	e����xT�Ve��	��Gݵ�SCH�kT����ɛQ��>�d`^�7-���J>չs�}\bɄ2P��~�[x�DT��7sP����[+�k�FX_-\#tq(�OR�d#	���6�������0H�NB"jCb&�+<�wn�ӝ<~�oռ��u5��0J�1�1v�Z���/��4e
,��;�k�2�z��G�NwiQƛ���o$���ͽ�%ªD6O�$�&�s��"Y96�we�'s�r��)H��hI�:��ęt�{�5�۞E���F�[�4��.̍g�f1�K=��ZJ,X?]��2s}_[8b��"��эzJ�֗o�u cڭ+��2=ݝކ�;[�Q�_�o_����hаGy`����jkGօH�(��d�n�/��62��qmfH�,�ol]�fX��2��pIC��Eq�$���v���=(�grg�F8ne0�o�(��a���^�S�D��\��"�<o�f�r�8�`��)��ڒ�)mr#�0�3��H(�[�EkFN�    ��P7?��M(y[ �B�"�ħpa�(���O:w�2hr���,:������di���P�bvC�����kܹٷ\�� M�'o�+^�df�/zi�>�xg��>u��4K��IB��B��㢶�u�1���V����8^!e+q�c]�'M(Ø}��TY��F��EI�d�;S��d7����x�j��I�+�̭n�󢭾� A�6,{��ÔU�ת�}<��y�Wս�_RvԌ�t��|'AA�a�*!	�b'o�R�)�B��y��(.�by���|���I��.���fh�����.\ql����;R�.������#� ���=! ܩG3����4���v��la��}Vn۞Oi���o�"'�-���~<�S�/OA1���]��8�m��}�YY�\<6���/���KE�͓�H�﯀ee���RR��^d��E�����+��aWMU��ң$_ad��>�]��a�w�'Nm��[_���Z׎�W/�Dw���[��d50��iXh��U����'0�z��<7;�K6�e� �Ӿtދ�h�ђkg�M�ϝ��q����G�Nu�=���x!A����=�v��笤@�����Nx �%�;��$vi��y+���%�L(�[ \r�}`%f�-���k��(9��<��T������Q��1'l�%v�r���|u֏qaC�10�T 	�V-I�f��v��U��\�Q'��V�����	�噙��]Ld�x+#�ys��G.88��I[d_7HޒO� ����;��6��}a��<ݷ�0�� � _��N���m�L�Ցwp�I{}��m�y ���O�������O�Y���E���o�����	_��bO���o�K��t�)A���ּ8� �Wo�v���]N����6�l��v�=��͞q�Mq2�n+�9g��Lܻ�#e}6c\�#~Ѫd)�a󻶃^9�.��aBy�=��&H��6�����ˤ���b��_{�_�����ea���;��"�b�r8J�XH#��d��;�T>�j�q��B���̝��B�+a+�p������lc��{�VOF'�J��O^�b��?-a�8�R���	�@�j�i	�m�G����j�.�l�pj�іh�Nŏ��o��f�Eo+,#� jG����P��d�����܎�=�Ef��6�����0c�r���F�@P"�u���_��3^2��eG	X˜���������;�� �۷�5�dt�)T���v�������3tnPwm'os�j;�:^:#��}�_r�*�m���jou����@o5�3�X��=��}�HB+#S�0��ؔ�f�����~������Yrn
���.F����A}�u��wp"wG��_莹>t�v�p��@��h���$��}ƞv�"4��%��&a�o7�~���\7L���s�H�n������<��E/�t�@��IG|�:�%��}y(F��r�K ��Ԯr8�c(�)WW����}N_�YSs�Ǆ�b����.?�8�c�9�@k���sWV$��E�\#��k�>d�~��3��g�>k�>���~<,7�yRE͌q�q�6,e��#/�$W1v������S�[�4@�o7X��SVf�W)��P�^?�����	���q��Tt�w�E@{uy���LN���y՞1늭f�,����<���y��`�:��2�������(�<�>7$�7响_0�q��e����jĪcc{�s�~����_����ӹ�	N�9�d*@�Z�Co�%�s|��� ����K��C}��w�-o������Þ��w/���6T�Z��E�j�Ǔ�p��`��EG��С/\o�'�z��14�+l����9kPr�ӄR*dɭ2S�d{�S�v�l���d�;�8p��73Ǎ���r�R���J���y��ŕ�dc����L��M5�m���<�y�>��w馬�s�C��u7⏔}m�蕽;&�I��N���:���&j��ڷܚ��]N(̗�|��D�H
�9�-0�"�fg?{K������=��| af���/��7MA��N�x�j[�a�c���~zb��-����D������f�ĳ[CK>xI
�㱤���'�����pC@��E��i�t��ǞQ$"x�l��+�v�Ǣ�Ƅ��u#{]{C@�{:a�T���G���!�zt�{0yCܣr��7�Je�>�Lel�|�Apzd�����jeL"��(В�|�}%:��ֻ�\����!k5M��FC܄��+�GT+fHj��j��)���u?�sf�M^Q�0g3I�.՞&��s��e�
�B�'�W��Qmp�#�r���ڐ�j���Ȫ�Ƕf�i�3n �<粽�#�}Qy>�|�	��F���"��a�&#k�o�K��g庱o��)��>�|1�]�[���
�c`���y/�49v��<>gW�	��}�1��01��%�Ѯ�O(�W��1�y�|'�KP��|u2��G��N��̫�i�r͔��*�jG�l�YH8|>�v�0�"�1��֞
�i��Y�#;��X���
���"U/ʍzQ�i=C���>X�7�v��&�H���R$�L᤮j�D�xmx���極�K$�l�1avb�����Xf����1
�жT�L��di(�t�r�B+^�Lw���o��5��!��5�d2	���]ڒL%�rǊ1:k~6��
�,��s{z	�yl�Ŷ�2��z�]�N�"�37+�S�K���B�pCgf�"Zm ��/DS9`�EE�g��r�tQo9;��t*�����`�w�Η�L"���X̎��t��=]�����6�&�����ώKk��l!�Պb��P x,U�c�쟣��t���( ^�[��&����,5�b���٧�E˃�+.�gU��m��c�K�]\�!����
�
��ox�'�N��<>H/'�Sq��$hb��XC˶B�U}@0�ʧ����9Ͷ����qWp���Vc�����Z����Q1����år��
V�bַr�Sū�4��x�r�����^T���h��Z�U�KmmI1͘�������v%�|�V���(�}6�����]Qwp""��G�O�o"�ڰ�r�i�C��b�T���.��Z�]	��k�q��U�l���e����֬�K{h�T�S�8GB]B���U�P�3��	��y����ޡ�9D]]$I��3l��y���1�T�K���q���[+C��Ȇ3Aw�����8 �8l;�����]y�A ��R[ښSX��pg
�_������[��fT��
�3y�-N�ʋ]�����n����^ӹ]�����ƭ�P�@g��^�]c&�&���;��t�$P�+�)c�i�z��*�{�g�r�_�	D�7���ڱ>	6���1蝦��8^�VHhhM�RJ��>�V�����fKޱ��V����7#n����k��	�x�yhO��i����˴]J≧]Ε����q��ǌMpvٻ*m�zpj��]o�-Cr�)~l�@���®���k[��x�L�,�.[e"��f�oGnz���=8�媈W}��u�T/�&S_�� �cV�ŕ~�M��"���)#�Ӹ�7�z>gi?y��y�zS�c2��Ћ�����,�H��4?If��iV�}��#�:�y��y���	9=��{�F�	��>��7XnFי�Ɉ�榛�K���Fץ{G�c�2�D*a�	~tn%
�_>�1HJ��؋�ʢ2#{t��A�Pw��B,��>�=��v�hB�v��0�~�_譑v�}�j���
$�,\�-�qO�`8l������d�DG1�+ȗ��5|\��agO�M��[܂��v���8�tw��d���`o�_�;����K�;�x�1�V�Opҍ"�,N��Q䟏�J��StO{e��UV��v�CL;G&Cgm ɺ��O��u�JL��r�M����H�L��Di��Mܦ���H��J"}�2d�i��D^����ز�B�A����c�0'���z�<dd�s�ɤ��A��B8%���B[eD"7�!�[m& ��˪    [ o��2{!a�L�D/B�fd�R:Q���r{i�b=����Ĭ+�c��m-c�5X3�6��LW���.G��X��ڻ^�g4��b��"�m���S��x�fD{�*�p���2� 0�0��zڀf�SL���r"@��	���d�S�0f~�U��59�Zy���e\f|z��wUBgp`Xr�vJ�P�S��5M&����JO'al��-T��t���@�����L���F��Ӏ)�rR�7�C� /�L1�@[���G�(9usCȕڮ��u����jvi{l����rfӺ�^ؘ8�&���$WEA�mS�G��@�ܪ:�m��@{e���BM'{T�[�.1�sV6�fKkjr�r��c1'xvV��$hD<uC���9�6����7.��f6���w�2g9�9�S�b�m����X�8Q(~����>�R�{��,8�F���!R�a���3�n��qе�ٓL�����Ke�a�����_ �,�k+�\��ݧ��jEH0j�������3A :�CW�S�3�"����Y����Şg��gX��W�O������/��f�;���.���p�`g�<��@{lK0	4\�����W��Q�sI	�Uz�wKaCr6�������ɄW"��-��f�?�{ٹ}���]_����Ġ'�=e6wY���cA�ܗٴ���}��ʙ�=;9�U.�]��d�S�t�W�]5Ptu��H,�4f�܅);�?}�s jOyR��0���3� +��!���@����=���Z+jO%9������.����K�?d�˃b��㠗��(�<dǱ�̊n�f�sW��,�m���?s�)���
��7E�K��σU<t���4ݦ�Iqj喟�v�7zKZ���8�$���L(V�ǂov�`���e�|��Xh��CX�7�`��wUy8x���9��B����l�=��]*h�Ӻ��Y~E�p27��'�[�m���֑D=�6*�\���p��ž<���'��0i��ʣK��.W�w�ۥi�l���'`�����[k����n	� �@x,: >��3��u��΃]�D�t�\�D��}��L?�q��'���V�bA��>�ؔ���Ef��M�J,j�󕂣7;ዣ8
���Հ^��z��	��
��E�>������	�G�|Y��ϒ��u�Mt��z�tL�Lr��+� ��{|N.=�~��{�=*��*����[��)����:EA⁛�p_�=ܽ�2ΔN�wou�3���a:-�|��J����s�s&��ܔ/�^@��į5�70itb�����qI#J�z�Ƀ������c��f��Tnn��f��I>��u�FM)���e��`M��3�{�B�?��3̌O��d"�Lq%��Wͭ"�=�m�D�x{nJ'����=��h�y�M� f�N��4G�����UX2�I��� �p�b`��������vL����^�%:������t����Z�q�&�e���X�F�C��S:�;���c���~ۧT2�C��,%�tz�5��E��0B�($����gj��.tQ�3� �S9�E��Z+�_$繈ir�%6�ioE�!�L|TkWF�>p�$>�-�����BB+&aF�0e�V����Y�JN>
X�e�ݙ��^Ӹ�Ӯ˪���!�[�ւ�Ve3�U+����fm)��-���~���濋Je̙�d\=�o|&S�dV;�2��\����A��4]��g��8��i���ȸ=��N��F�h}�v�����좋菿��\�#Q�nӍF"�7m7�I�ŎՒ1�Cp��s$�\��֧���C(������.'���cR�e5��g]uT���=�<�|Q�i�d�2��Í 
:����Io"B�Xh��|�¹)�8O���,�]�|��X(��.���0��Q�^5��z�����1d�tm��X��̀c	��Ʉ��~xaG�B�l���2�B��S,S���[����c^T~�Y��g��4{��B�m��+�X&�c����i���m����|���8N����N<
p��g;��H��Eɂf5XJg�.���h��顬��+����.����Z��)e^����%}�E+�F�ԆC�W��N�}fe��4h��������1$�g |���ni%�I
���|�uvŌ`�;�d>�֩_s�T/J)eJ����-�'��5��JWes���A��+r_���c ��Z�ѳ�V�}J�ɞxte�����)Zՙ ̣�w����4��pQ�cWH+�du����w�T����X��瓋m�۪�Δ��g��%�4�йj��Y筁�]���<VLg��`x�����Bز)���~Q����u_����&�b������>��j�yrҹ�#!��,l�/�ӓÍ�w�m@3CX*��{��M��# �v-�mAB@�V�&�@! ���ǿ�-r��Ùv�\�b��Oe�+���J�D�k�!k7�)S���Q���}$�l�Fq�pS�f ���� �9� S�ZQ$�)'�k4Ҧc�0����))Ҕ�
���-m�h'2\���{
�U?<"�v8��2V�hs�~��*���k��ZL�T;
��D�8U��A�p�@"2�#E0e6L�$�<�B�J"�3Pܮ��r�rg����V���K�FAx���C���(�^TU�a�N�TE��ϚN`��*v�r5�9г_��}�k�������E�{r������;��ހ''����M�q\�-�/����f�����<��;�O�e���x�c���݇C;�o!Ԫ-�|�/���|+_�y�yp��N灏ĺ�qU� G9{�h|���X!)HmMRL{e�x�c94�C��LV֔��y�mv6��X�5�<S̫�ȯ��eS�y����Vvo}όi�B'(����q��
 ����m@OɄ�>�c�<U邟9T	�������*6������ͨD4F��-Y�7�T��R�awJ㆏v�f��4�ύ�j[ۊG�<��T�J� �զ
����g�EL�-����b�K���@=���y�����9F�{�a]��g�ǾF_8t���f�SH���-7�����3�!��LN!�;�Nc9���k� ���&6��S�^�0(�7���]O����8L�3�b�4��t�Sr���x[�L�J7��}�H��g�a�F1Ȣ����!K��TU��i����VB�)��Y؊q�w9x�QJP�:�V��ކ�Y�B�MЌ(��dq���v�x���U���`��q��K�e���f�Ѐ�z�+�r���y�X�R�/�ʶem���w5DszO�{[���)1�Y���~���i��Q�G_AiTe��ay��4�"��(Cd�h��0�+X�FqP	0���{w���]G����BM!�&kjh�A$�$����ʦ�}@���mrD
�`��}����>�^�Nf��T���/�{e�:�A��̐���ݣ/�y�$r:����w����^ћ��^�}~ZY��N����&>�]Z�]$�٧���|��������\ֆ�ѩ�Ν��^i-��=⭑��glR��=��ar�r��h$eFSl.p&2�s׆���a��F?�|����������_��!��v=�J5{8SRF��2ޅ;:��w�^�pFB�E�G��������3?q��'�~|%3��3
�jH�� �D�c6�PT�����&R�l��;�!�>Ɉ�T�s/C���+o.;��b�c��/��o��+�t�=A{�O��[��(c���_�Ko��L��?�Ơ���>B�l���˦�/wFل,��yG|F��
�<�Z�
w��uZ���� �k��1-�.�$�0�nT�]r�ى����5�d*zCe��gm�;M��0�*?���M���1�l��8���.��FfK�&ѧܥhȭb��k̴��J�Ɠ����
'Ȫ�ɛ<��4:sV�K�C;�I �=^�|����Sko�#�V]4�&��ۦ�̈o����"?#T��ct��g�:w�ٸ����}�#��؞�~e�n5R<��|�7(����u�    � ��f���v���U�[�*��v�s�+�=����3�ȱ\%A�4�RZP�#lE=5��[`|�^������ ��΄Yc��K��ЇǙz0!����$ۣ����a�����$�P��G>�{t��r�����<�U��l��@B8��tA���<�c��ٍS�[D�eVcP���a>؛g8Fi3�q�g��#�?r&�_�i��1����2��� ��f1�a�L�R�&���LS�I�$*�|*x�}m�sAm¢�^����#K�6�x�-�O���ʢ�|rW!D/�:4p��e���e���DDp�e�K�P�� ��ۍ�R��]��Q ��,�`@1cH;��8�l; ��ݐ����`�.0��q��|;�� ���V^�ݼ�"����&$"�v������F���4�b;�I�f�0���Զ��B�����W�!�:A��=�(�-�¢ӔIX�TO�xSq{�{�N����+�m���n6�|R��w�g�1�EZD����	G?|y�w*�W)x3)����2�R���f�+w�`�3���aT��]DX��k��ڣ{�|��~�Ҕ?`!�]u5�;��R2��ah�!�$��Nr�M��,���`)�ҭ=?�䤽�U-�zFG��.��tSD)�.��:�2��/���F/C�X𘚻�>�VFDiJF.�A���
��i��ý���Qx�b��u�ߢ=�����(����f��ޙ���}���nڲ�.m/v��h��ܩCu@�y�vN�/6re��t��3�4!_b{���F��{��5M1�b<y�ٙ���\��� �=�`��!�MY�Wy$��q`w��D����������kk<�>H ������!�1�s?z��]�s���n�����^ު�)|��(6;��@1:�$P ���a6� [����5��iMʙ2\����*\�&��-D�(�J�T;$Y�Ͱ[���ֵ��L���Jp8@�f���(�J5@!�~�!�6��(+�!�;n�8�� 7>ዣ�r2.�=�V�4c�6E/�J#},��z�WG��T��m=�8�3�9�Ͱ5��ŌC>�f8���K��iz��쑅jG�Ě0_ř����k��O�������Y�;�K��-�~�����^��w;C�H����P�����_��:5�r�Xl���O}�C(�k���o*�G�׏��3��2t�����
��t���'��pU1�t��s���b�L�i�AG�f��,k�-#�(�mͤ��Zg����f��ʑ`n�מ�1�z�}	���|Qy���H�N�L��(+e��M��04�xH-�T�b��|��4ؕD�h�9�9'"ޥ��Kؾ��1���+��s����*�ӄ%�m��Ye9�13�j��`aWU�]�9�B�\	"�5%g����ӗ	]2��53��elG[<aM�`��'�p�� dLz"ot9ŀK7�t�8�*��A�ǝ�᏷0:G��xӺk�gC+t@�|H3��l�'g�~�)wu
ޏZ��=2'�v�����'��B�3p�b}��*t���}�:͝:A�:_AU�|z�X���`SJf�Ho���6���QE{�S 4P��*���ێgX.e� ?�����Cp�=�E+�CI��J)7�@"�cAӢ�AO$�7���T!s�+��>����	��/8��y {�^��fG�S��`���V �3�|�`#ȹ�iгa�C~�~�7�T���]�Y��'|�[�f}O>�����Gc�Ji���K��7i�&�A��i�ON�e�NWl��`pث���b&��u"�"
Ff�Kdo��+ >'[3Hl3+ȓ9'����;!� ��f
C[E%�ߘME �����h8�����v*8B�@��9 ���a �����܋�V��O���t>잣��+S�>y.�9�z�ɹ� 碪t1�(l��̀��Ҹ��s;-�:��gfr}�96��!P�K,�s��ُ����C@�cr� ��p��71��=�2�|���k[����֚��_����"A
fr��,_��U$~U--���$G�V����Ҽتԥ��Mu�nL�_�'�V�t�f���*�+�m��?*��z�����>��V�Ϫ��wk�V4"S��A�Q�� j�ut�0&��<������N����
K�]�B���fg4�S<C�_����pڻ�?�j���Y�P���oe��ػ���L�?�-k�E�����*�!�4O7����GYm�Y�4�?*��ꎾ�+g3��hu��!�_rj}�)r7�="��&DJ^"���zʽh�h�6�d�[)0�Vm��< ��aL&L�(+M����s6��e�u8�{��<u������9�4���7����>��l��q2�α�4�C>��:�Z%c��'L<�	���!��]D2�M��R�����J���֣Cż�IW}����>'�i,�s�A�����@#�+.����nL���;M��H��pQ�;����>9�W~�Q��.��g���66d}ϋ�tس�u��4�Q`�OR�O�`X����[J�ن��(zVy���]�ӱ_O�(� �XL��4�Ӡ'����5�csV��n�d�D�}�A���>�a��]Zԝqǐ2p�:Cĳ�@)��Ǵ�S�<������A­�i3�]�9S�U�،.��#*�܆{�@R�T�]DtT{�V�1gM�-��T>��������1���_��D
'K�UH:�!����&��n�SJg�r��B4�uA�cSAx_R��9eY
�/��y��I��,�bl�ф}SG6��W6��m:!pJ�<��g��)a����&�]�/U��P	���[����	x��0�sN��_�i�6
��
���p>���N��ȡ����h;(�^�[��0=p>���F��y%��L�c��r�(��/��=m"w�d�+#q���H�i�Y�]B#!	G�PF�U�.��Ym>����m�'���t�v�dN8�r��Ӎ��� '����h���{��g<)�>�0(Fk�pF�5G���9�������/��qcsf�9iM��q\�n�N�뭷E��<+��nt8o�:_E�U|յ�'�Tj?���!���N��5��_���
��˄4U�Owk۞03�-t��aqB!O|��a��a�r���`f�?�t�)�o�������C�׼���qn��Im~���o���Ĵ�Ǐ�)%|A"M�AWp��>E����Bsg}>)�H�3a�Q�Mav��.̫ȏ����{�RUY�kWTJ��Nf�|�&���sAs:��t���t4�� _m=W�0%{��y��t��4��T -+��?�'4v�����������M����y��˪dp��^�ӴV�=�<����M���z

��ƴ
��);knmF�ï����3��a����)�8]�+��>]��s��x�4�p��#B��ܵ�ou����c�a��?}2�T�E㞋�w=Ot�CYS�+gM.q��E��������t7C����<V���8��$�����fǥ)yb�?�s��;��4��#�afz�V�����I*M��?R�[��_m��b`a���栆���K����|4uݝ�N����g^�սf�؇s����iX�����\�sۅ��?�+�����$?�������0~�>E(t9q�����b"'^��;4C��!od'�&��G8��=�;�ΰ0�^��ĕG�c&����G^�;�K���K,^��sflY�J�k�Ko}��7��n[x%#�����mK��S̼Q�p�C����=���AS��Hz7��H�Qi�+!�RmM����c+�E���	#�=}l�9���8z׺I�����B���f�����J���?G������n���Ɛ�_�)Xm{hC��1��Š;��!��{���5=��#���4_{�xo]�0�a�3V!������?~���2!��U�DKs���F��5�/��`&敱O2e,�bcwl��X_�u���ȕG��kR���D
�d5�e�²��!ʲ��Ӏ�    ��ŝ�K�y����1�Ue��e_"�Zg��+�#,1�@�wʂ��ů ��Vњ$���;-`',F�����roA��xA��)�p�/��cӾ�W8]5��Q 13dR&#��{���*�T-�L�zO�t[_ -8�
 ���~���p�x���^]�s�kEb����.�V�bL�"3:���cz����ڼ�@Ne_�_�ށ�=�wΘ�S4{�X�[=���;�ƜyX�����������?:�v�6����'r��c��AD�Ț�V1%�ƅQ[��L�&F%�#DO��Š-g>�|d��9�Ν^��z�
�T��\~�Δ@�u���),a��!])W�-v�x�Vo-��L,"�!��V�|.�&���.B�]Q������ufa8l�����np7�#:�m����l�q��Tu�\Й�0��fi]Ё�0~���'�ʘ�ۃ�Â<�ô������)hs����/��J�)ȶS6lXiW�B��A���T�1i<�iE��H1Vz�sUJ�˲��3��qx?5�a�{��E��� rp5���[;'��P`����:�BqD��,(����Q�v�c�Y���{�K�>�^0vK��@�H���d�����V^V+�'���-(g��4��}���>��pa�@��)��N��S�t��z!]��֥�5,�0�:w:?�bs�2������3nX,�{��j�6
���k���[����,Lyw��(���������I�B��[o��	�-kBN�Ai�m�a3�Z�L:׌�O��xOo�,||�a ��Y;�4�s��a�a�+�3�;p��ǧ�[���/0tz۞�yZ�g%I>�9=�+�H���t�I��E�Xx�f��^������H�8��y�mQ����10�����'���<�7h���>a�lwѡ:�����S���<��UQ�O������'8�0iy�#K���X:
Տ=ݓ�M(���cI��h���=��!l{`A������1���-ʈ��P�v�i��n/5�Y��5���o J����b���,�Hȶh��L�/�C"�L����Key%��	#���N���P�r�͇���xic�����j�5��Y	;&h�IO�'�|HzU�Ҟq��$`�]��1�]�u]��y��~Tv)��U�w�ӭ�۵��,�����E��/(<�0	|��h3�X#�-��^���"6�(�>tШT��A{*�d�@�j��������,���C��tkr;�Lf-�}4�49����룢�֚�L�,T�ڹ�y�dsx[8��>Դ�kO�/�G���f2w��ą���Bg!j.�:�
�,B���e���Y��  #5$0�:=,_F�7an�?�Qt���;��_�
Y��^��f��tAIoq�Ѳg!����]H_D�������<d�u��I���Q�;C ���8X�4�p�
�o�l[��Af��
r�-�\�|/N��q(<�+u��)�8���_tU�nZ�J�1ׇ	��h�aBf:]�A��V>�Bu��S�����ɉ��Z��M�/�?M.�0��zC�N�f�M��-�L�I�^��v�a�O�(�|}d��|'��;:	�\c���,6�A�惶�.l����@�r��#�׈	_靮�ǯ�J������
�%��v�0�Ƀ�+�F3:88#,���w��q�5�':��O��Iat���
-A��0=�W��J�(��#��Je.�TF /N�UtWt���5Tqm��nԿ$J!����ɠ8�z�-|>���3$kP�5��;�	��ߜi��"���	����άl�׺S�`k1�.K����Um=��itB���΃:��L�-K�k��p�S�Ci��/�{+f��a�鏍��`۝�(p,�+$�f.����O0��]E�L)�ʠ^)x��&�.�V
��֢��Cp���l�.�v�-;�۾4���4u�-���L$�>�;��4Z��9F�b:�����)䊡3?�i3n:|{�q�M��d���#�/���K�ѥ;$ ��O!�/w.����_ZG�:9���
��F�^P�L���b[5�6v7��6Ov#~��d/��>6	�vG�z�V���t��K8o�u���$!�wŧg���k�"+�vn�v����͞�,��1��b��p���p�(��j�NO^�{���t�>���m�~jw��ߠ-2�!2l�&��<��E�Ȁ�����V�M�_{�d�T���� �V�2�g�0��y���4�>4�	ZI�3��m�?��Ust�0��9�52~�V�pr��>���SE�輕ft��OY6��f�XV���G�������C�����*�l���x�[�cAA�8,m;�1)gH'�t
�a�q�%���ƾXP6:���s�#cz�`ܻ��Tfl{���{n�i�I<���š���b��ͽ���}�e��T���k�ϰ2(�1j��
���(U6�-}P�k"�6�����Z3~��e�#��M�`	"@�(��������!�(��R�u�P�J���`5����L��ZLjk{\|�CS����d�=~y]��;�:-�Y�&���� xM�^6F�_��h� ���A/;��p���&��CL��� I�v�Ca�ݎeYCHvOy��ܫ�u	���2�b�˩7M�kӄ勱��43�l�:��턙�͠�a�&�����wd`�~��r����i���tP��빅*�%���^�i:�A���l��NsS����!?��(7�w�p��aFuu6�v�n��SZG7e�R����^K�|D�Y��p�Z)�����R�(�����l	��@3#p[�r�Ҩ���z�~2�m�{��ڽ]!t4��Ь�T��ɧ$���[J5�kn�ð�Y�t�0��'o�y��x��ZƿR��v;�i�GR�;}�.#|�
��oD΢����X9HF�u~2��S̠˟�ޖ����r��U^�N���7�H���芒�<ee+L�������"��ꉷ׉2���cL֍��R;��9ݎ
"�yV������h��ꠄD�%\�h��f �b4��8���Q�0X ��w���ڴ�~6fD������f�'��!]Gwp?���Z�k]7�n=�X�L9�R�T�5�c��*zgx�qm}��E2Bu�@�(��50e.�|�E��g:����]jzEg�1ϐ.��c�I4�+��FF�2v�˘D4�݋�'d�?�5s"*�Q���-­ޫ6���f�� U��1Y�T\c�ޘ����e�ӿb�)�$�B��&b����~G�mD�C\'�H�Xo�E�#Nw�i��H4�S�!x_���e�×�4��	���À'�S�~�a�s��lȻ�=�k?W4�^��D;�8f�^�9���2�j5�\e�ɺ�/����o�t cU���Fb���*�krd+���8����n �t�v�Y4(�9� 
�h7H��Zg.9�+F�h��1K4 ~�r�An���D��Ԉ��׬��r��NU�ꀌ�}�֮`��wU�Y�h"ҭB����"b�D}g��W~!3�F� ���¶#�c� ��̩�j��e���2�3�(BK����f��u*#�ݦ����E��͌�B�%m�c�(|��u�.��Ec�o�笜s���~ �/�m�e��<4[�0i�zl0��-U]��6�e�eYa��[�±z`�Lȷ��f7j�3�v��q���B����:�vkC�R�dD�N�O���X4�Q
�����	�C�;�0ܑg�X�7�Yw#�]�ݽ1��AH�Z�E��9���ye�bФX߱%�RϨ�l�6ȧ���vT8�����ɣ�*}U�AVF����kS~�et�E��H�*���'�2"�.>5��zu�]��/v*����B6�2�2��i�Yd
�:��s�4�	xUšӉXƪ�{���Y˨��"�R��i��yݘ��m�8�Ȭ9�T���ʹ��O<���C��tt��f*3��ҭ$��@�7��?��r���&��c��g�5�iF+��vc���و��8%]�E_��.{��*�<��W��j�j�6:c��    ���9���W�Z�x���X4���|����k�TH�m����4��7��W
[�i=��We����D��ʃ{��	;�P�ZUru��}.˧������0�-��cZjj&��
�|)�rz@9���yC,�??��3l��k�VeK���ROO���X��WM����u;�1�|z�C������lre�W"����0�~56��{���aߚ^�Po�	dG`e,l�^VF�>�;;˕�u�%�Xr$����b"R��L����^o
.��b��Cމ��"~���N���h���Fj"�*�}�wk��H8��ph�J��s�#5�̙bm!�+����^�A�)������?��so]�Y��hL~@̓Y�O��+��sO�g��d�C����s��1�+p���\cAn�6�F�m�?3�U{�ڡ��=?�Z�s�[o~��;А%�?����4��T��(pd*���X���(̤٩��D棔�;ӑ9�R�&����%Ƣ���� lf�kD�m*^O��x
����c��5�������An�xwj}�������:�޼h�OM�$��9֠����e&����mDN�����s���a63��|�3Mh���S��^"P���n��\�� �Y� <|k�S�S�W�zI����g
1;����Pй������/vK2��F+c���H+%S���F*�CI��ofB�9:/�.�V�N=�vv��E��Օ1��QUm�	�J�+���?�2�J�h럙1�3+:�ˌ�7����HK
K6rڍu����2u�;�-0�ڷB9Y�*�~֚I�vja:�M�,�#�bfQ���}��'	so���uiSa�}N�b_��L#9�:�y��1S�[���=�y3�r^E��l�U����ME=���"�Dg�w��ME��;����J��4];�3��\rlN9�t>��]]�g2�]DN���￉��EW�	)�S��V�]�w�#c#�ͷV-d�Z�	�hD�-D��E�n��o,���ݑ�4�b)���h�g8�	�MY#�t;�׽aGf~�d-"�/��t�3�ҽ�b�m�Bø��*u ���z_��m��{�^T*O�k��~�@K?�}KH�F�1��TQ�������U���Y�Bv�{^]q�Y�X�;�u#�����F������XU\!������G�A���G��~�}�i���Ɉ�c�{,�Zd�.p��x�����;L٫�ķ${��_��۶!PL'�*�_Z�j;+��XV���vKĢb�����9r�2s[R�p]�g��7���tS����鉽�JF�VE�
b2�w��(��!��96��~�*�+5� �q"�D�m�:�<�����D,ZW��y&bٸ�BG�L�6R�X���%䮩:V�D<��@�yb1�}�SJ�#cP�lN�8��aqp)Ϛ��d����F5��Q��\d^�;]�ar m�:�z�-�[�̕�Ӫ�]����.�vm���&�������"S�61x���ҵ�q9뺁�n/ʗ����zI4CS�)��d�\��ʴU��rL�<��E�%e2`��S�l��C�o�r�'��6����g�b���I���U1�:n����;=y{�kX��a���Mi4�aoo��OKV�h!q�>Ol,);����YW��;��>�ܪ�̥�sk!L�36!������90y�˻�����zK���֪��ܾ(M�X�|2��*���c��MC�-�/�ϣNu�*8�Ƴ��♡��"q[��;�A�Ye�A��y8������FK�G��ؼ;3����8������O���xȸ}���>t����0%,����Fi��kv�Vzbq�|Qp;8x+RV_S_jk��u�YEK��B_�|���]m����!�-bʿq1V\	��w��!n$�U�A���+�r���c�����ͰN�Fi�f<
�a�C��#����p��L�g�}P�_o;;�c,�{p �~���+���#~8�;+�7�� ki�n��u#�ә+(v�@�	+�^�]��ڋ~�	��+7�c����+}��p���yso�p�R
�g��)[����|�1�<�7���`l�]"S�t3�[5��(� ���~�lk2�p5Ƃ���T���^1@dc;����ח��R����LȽ��q�v7L�ǁ��4}��_�k�] |aL�����?�!|�a����9+�|��9N�T�&��F�S3'(������an�n��;�)~6d���Lrx�Q�N���m���M�F��韊T��5�8�����U����)�����Y1��+H]�t�w�xգ1��v�<�x��3�Z3o<�x��ߜ��J��i5�x�w
��S/��HuDI	뭆�r����+?}�ˇ-�CZ`����:�5��3�iفGg?+�\�R�x{,���n?�6�y��R�g�ֹh��t��^i�ȷ扐C��m�{)7���٤A{�:ݴ�f�ozl��Ϯ;�C3���J�ؖ�{GUl�qq��i���3�mh��nMC
�+mF���M����0`osP����޶�M7N�,��ʌ��L?�zX&l-�3�8���bO���Nm��.����%�e�h@&x{�M#+DO�*�6���r�u�C�Y��J��+_T]�֒Az� +����Tý��l��i���~��{�9��x���X��B���3�Po�g�l���q����N�V�W�A +�z+��:�K�!�N5�hh�ұ�e�Um;f췊��M;���F�g��T[���*�1txn|�^��(m�=:0K)���g.j�12���8N���̘��3�Ą9>S�4��P,�`����:!%C�s�y���o9<��mп�|��/����9�y4�,�cos^5uՙw�coo�mLm�U�x쭅��8����?C僔N���Z;/k�P�Z�`Z>U�/D��^��%�[�<P�-C���Pd��̿f��7[k��3o�쮁�� K�޻V��m���8;,��+U
Mw�~�8�c#��Y!;���̦��}=��Α�U)1���R,�:M!%����0�R�C΁hI�D���1��c�� �Uؿ���Ͱv�nDUo��a��P��*j��ő��US�8�sf�PJ�V�ujW���Uso����y�W��a���/��dgn�H�a�5�(��U�U5kX-��T<���+R�ѹ�U��"�Kņ�������./ߣRb,CK�ʍX��;1����6��>os�H9��?URD���^R��ܦ��Ӫ�G�'Z=h�v��g��E�n�9�`%Y���� �����#�р�g�c�0�z8����6u8���qv�LO7z9��p�Xc�L�e�UgU��Dڄ2��{9� [��p��_U4n��8���;n����8 �k!�L��!jS:o{��D�N\�ҽ+�k��{�|��2�W8H�(톰�TV��*����d� �l:l��f����𞙨l��O�#*�Uc�C�������yK����Dμţ����p�:Ȃ�uV��9&'�*�n�f.�[�o;��c3��~.j�3U�8Bzwd&�I����]�D�z��Ȅ�ψG�"��m��*_��ѶlK��S���𿵎l�Xf�.��PCI����sD�~U�ݧ���Dڙ7Q��꩝�c]d�o��h��t�4�^��ekx�e��ڑz<B���R��G=�u�[
L�����O��;����pWu�Z�1��H�TDbޜ)�np�<mA$��Ή���`»<1�]�O��'���#R�U��y��l%c���x{�U�XԽ��Q�ܑ����f�p�q,yU���=�褽�o�ݽ{�p�-�t�2�K=�qz,3%/qJ����u���+s{'��l��ll��v���ȚVƲ��,�;�q��(�ֳ@��lA1�]{�]Ǔ+�.���9��i�]ہ:�-�|W:w_"�����zc�l�XNd㨱�]k
GP]m�W��w�,���u����{��/%�ej�qʓ���;1 c���mHD)��Kq�iad,�́�0[1��nHF���\wX�Xٲu�M��~�!    �q��pK)>6��$��j�ok%#Iq,����1���b����>8K��q�����^��u��4�M�&���E�lb	�/'�7���#dx��=�eg���J������^���C�4D�[���U�o��hn�v!P?�.��S�Ʈ��a�d,�r8��X��������X� �4��Y0#	3`�Y5Kz¹i�ָKƒ�0�-z3�P	&�a���k��`l�� ��~/���?���>�g�&��'h7������r�Ȓ6x�o�1뻙)b�rIIy��L�آJ5�w!MB(���=<6*+�:��]��� D��o����P�7x]ʦO�l���@���h{�w|Ġ���ߧV�1�ZDS'	��tĠ����.���"N��;X#�&mt���z�j��.ǭ�`���E���#��0F�)���[O��7�p^\�`iXdp�S�r��5�z>�b>�:�b�I.V����Ij�E�j�}����&�~_>=�q�g�O���S4����3�C�ٳ9F�F���S�(g��ļ+�k8*�O\c��H��=x�x��dR2���d]����5.�v���'���foޤ��T�E��eb���*�8:�w�+c�,���Y�����H�J��V�M��1�a���p0/`,�R��p���[�)#�:�*��+ ���lk����ŦEu�|ca�T͞��Y����XE�L!e��cS��q��`XJ�܊@WT�(�@b�>��Mg`=4�ʮ��W��lCƠ�;����{�r��O%�9^P��2� b���R��b,�Wl|��_�`�e�v��� J61X�������%Ո�S Th�/�Mu�M煫z�=8e��M�x>r9PN!��qAt�+R���J�k궭�ZJ�O8�m.��+,Ά�m�v��;�bĝғ=�TyR�b�|V�t�֙MD�Ce�U|ƛ��[j�{%�]�lUJ����o���D��7$5��{:G�WE��;�
\Ԣ��=c��Qu��{ׄ������ˢ �#�s���G��.L�D�"�p�=)�?X�@��*
�co�_\&�z��j3l��2q�0�����~$�_� A� �ŗpN���Mf��2��\vT2�?v���N�t̔�����*�~=�̒�;Q��5��%(0�.��;\n/P��}��|%�m�J�1CϮ�z6�`���A߱ϸ��D>�{��j���k8�S��n.�S���p�:+�P�d���ع��-*��Eˆ|�mW��d�94���������.���<�"CL�s�3U�#�)�XK�=������ɷs��x���sM-Pd\�g]u��ji��������c��*h�Qdl}�:�Л2K��9��Qkn`
��1i+B�����U�g������Z����B_�Ǎ�\��e0A�1+{�)s^�ب>��N
b~FO�M�e���=���?�#/��7(�,$skJ�Qs[��@�o��v�!LX7���?��2�~�����BF;��>	T�l��"��%��5�Y�=��4r ��􅻉s��|0xϴ�w��b�Z��ҰƜ+6��}I�]�)��l���sl�#��n�`�BE@��?o������DZc�k�<&\�t9,r.wѽ{0-�1g�|��]cfW0w����gs�����_@̭F߻�Ƃk����k�dH�B>�:��0L	t�*{.�\-�ꒅ�M �'����0�|�$_�C��<�e89�3Ǯ����,���x��5a/G���I|�����h͕>����@��Nk�s�(�
AW�� �����yoQ�HL%G��l�����[��o�����p�\�4�su3��-�s]rȅ���+�W��" ���p1W�˶B�	���	��%��kL�6#��S�Z�vbL�V0���V��殬�i�.��yNvυ<�r�J���r�є{���Ƕe)��}�ʲ��pg\Ur���0��������Q�� W?
@\}�,����a���R�`X�l�Z\���*�]I �Ps���~o{�q\�()e����C�ﾪKM�t���q�"e��P�6a~�g���EL����bЉxUpiSp-���̼�����2e�._}���@����]��� бj/��G
O��Xo$xW��d�6Va�n��kQp�)��0���Oez���%��f��:��������,c�c&}�;X�m����~����i����⡨Ȕ#q�j��1P#
y�!���1�q����V�K՛z������9���0h�<&w6؈q��@�x�>Ƙ��K���u��a�o�1捿O>�	�sV��roS V�a7����q�8>�nO'�e���U�,7�3&��sd<`�=��'<�I.icG=V�3�|�<V��1�vx*7� F�q6� "kH�C�j.PS�,τ��A�9 X��x��|W�>8 t��b��&1��]��ԆK'ni�G��
���dy�����.�3,t�9ܠl���3���/��٪�r�d'����}jn-ƣ����v��3�Q���ہ�S0:�D?~�o��O!�؝&0�c�����7HB1�!���4qc���;(ȫl6�g7�.�Q�C�u�%c�U��<}̘�C��$�1u�!�s?PA/C�c֩=��1\���
-��+���=�CP�%���2g~����O��o��/3���1�2�o�u��8e�&o�P�1��,*ߚ����E0%ːk�2�Os�Z%���cE�8-���G1�߶OO%�s��F��{��֖�卿�|J��CUc�C�,����w��������,JQF}�8�ZU7`$�"G�i��@����)ä2�Z�'F�R�[��\0��kvG��[a (�a�3�B
�r���g�K�����c,:�"L��㌧�u}C��B�������vaH���E(���-���$���}��s�� �+�]���X�U�A7�1�0���9�vȞ��qR��D���&-�<�f�����8�h�x����e�}���w![��m2cizX�V*g�%6l2b ��H�;'���AbZ?������Q>`�I��c�0�g;�q��@�u�a�p9�"&0������0��ܘ�I�0�X�?�	�0~����g��y�� k]�t���wĹEz��X�;�ٌ��XjiG�{�8��D'��tR���O�3tϮ :a�,��F��.�F|�3��|n��"�Aݢ�d���L�Άm6Crݵ�Sr�a�n�
�`*Y�&��A{[���nh��D�S��ۊ�69��ӳ���k7�o.u2����N�`d���uL�w�9�~����Z�B�vcd?z�
]�=�|�-w�K y�c���xqi�Q|�-�i�ńi��|�Y�,�x��(N͋F�O��>�>�Z�	\cG:����0SG�˳	:'#����5���{���2;:���"JN��4��Ѱ'�����c���&��"z*���`���)���q�^�l���ڑ�=b����P�`��،�&��4�7�ܬ��W�0�rd�M��S�����{�I^��4Jy+ll��I���S�F�J������y�:����!8*�F�������Sb���!�D�l;obL��|lϫ�)u�ox�+�H�B�S��E)�zgj�O�"�g�CW%7�[�;�ۊ�+\;H�D���I�n���$���m����=�r���8)�Xq�z�5��q0�<J �e��E+eNe����̞�]Hd�7�Fו""��(�x�oT0�v�_�h��h�����{�~.	���p�tGD�����f����TS���o��=�]}!"�n ���1C�;��qG���sg�&z��m(���~@r�s�n��fo?:���)�,ɟM����f��=��0��M�Tqע�`�&�\FDe)�����0X���6D���>c�^��N�{�p�>V��v�������P5�    �3�.֪�}]Z����4M���9x/�=�{	�@X�w4I�&���W&�u��qC����4n�-1j����;����"@�)�.ۯ��W��Wn�������;��9}7����qkH�q���$���v@�4�W�V�����C�~t�,Nܫ����̳8Y��G�N���X8`Ӎ�@���7Ʌ�9�ףQ{1���M�HO�8u�9�b�L�8]a���9�����t0/���Z~������@����� ;in������I�q��g�����;E^Y����°6~������=�P-;¤qU���u����؀k�Z�|h��Qм�z�tę��5,�7|���1�}9=E��?	�x�<F�e�O��4ŀB�N�(���p��u�;��7�4\�h8e�N��D&h��Ӽ�+��7̻�l߈����UTy<.<c:���6�꾾��l���n�����|�%�j���6�S�r ��XoF�'�Jw]�C�f�YmɄ��$zL:5�E����ƛ���^���ؗa���0 j'���֐�/��?�Ƥ��x�*+Ct{��y/7���gBq(�zr����e0��o�ǃ}�L����o�D*o������~�z��Pm�������:��4e��o�gӔ#侀I�=�<�c���s��N�k����ї��M��/���N�8���0�r�+SCa�r�/�%*Hp��ްq����F�?��<���ɵ��l��U�lug.8B�S�\cɠ��u�)���������]I�i�Q.ОseR�)G]�R�އ�OS���:u�u��:��Y��G����s'�lz�@ܵ�Ŧuc^��,z�PM�;O�#%���׶��T7��~ݡ����o\��(���+S��7�l�?u�r�h�Nv�{���k��7��ޫ]v	(kC�)��e����i��sP��1���:[�5�Cf�2v��zo�9�!7�F��L����1t�Ɗa3��v+�85�9���˽��9K�j6u�橙k�m7�%�@R'rh�=  ��M�$_p��.�|vn��n??G��9�<u�C rƶ��:O��"�M���:zR`�ȿ�҂q\��e��s�׻��F0�,�a�7Ӗ���1�bP,��]�*]�o7D����ؚU/x
}~��t��� �{��w���$n��)P�8(�x�� 6�mh�m�c���K�9L��F��K���+�H$gѰ����̄1��{n�.7�h0z�a|�
/��8�0��a��c��csSƩ6�s��ɲ�����ǭ��6�a�ڊ
=/P:�H;Sdў�)�Ptکu~�t� �[���tg��<G֯���:�c�CAb	��	�l,�͆5]��	�2�k���G�j1���P۩0�yި+4f*�c�	����ؽ�1��7�0$5c��
c�Y�q|3x��W�eI���\�;U��>�8z.h��;�ْ�$��wf4�P6�Y錣�-T�=�}��4�(k )��ѭZβ$p���8*P�� ��1WtO_���7���= c7��łL3����dg6y~����q�4�Tfc�V�C!���I�;J�ʘ%��P�&J�_�b������XN8W� ���$��?-��m�HW�������q���V�nX"CSt�`�0��E5�f�4��p����V�2WZB,��F��hn}�%�~:�O�H]��i�^�@)I�@�V~�:`���5�5Udx`���?���L�,�zJ�
��?}�<�2��,��"�H��Qe@w�wCW�Y������a�{���ns3@i>p"�U�����! �|���7����l� ��h�����]ݒ�oz���7�e�0��r1ـP"w��Б�^̍�o�����`;i�c�)Y���a&->�_ﾊz�8��I&ؚ�
���,_hR�ܖ�k��%���w
�aj���h�5���0���>���}�D�㽌��L@�Xn��i&�m��0	�l�闠�CU��T@n���������g���W@E��'g���w� t_*`�������*��H_��8�6%e ��ז�. S�-o�-�A�V�cC�������[5�ZR@n��pK#��9p�ڙ(��cKi�<�4�f�	�f��f���?��+�֤���_�A��ol��ڟ*����?x-c��$�8���;Փ�0�CSnt�J���?�X��B���Y*Q��M#za7d!��D\c�G�R�Z�����4K%z9�dn	'RX�=�&���\�Hb��k���+H3QE���z�0���ߔuJ�R�6�2V�*!��%�R�R��4��A�4�(?����`��f���Il@��!��t�q����g��D2b�,S앆���|(,�˗�5`j@%�6o��Uin��������ޘ
N�Zu�y"J�E뤦n�C�<�ud8XpV0��E��R���}�FN%6&�R��J�)��3R���aa(ѣ��)ѣ�hS�=�mz�7 ݘr�_Z|@&�?�� BKT���%�L�@,ڍQ�2�8�2��^����2��Go,�L"�:H�f(�+�SY3	O��?6���D��U���l&�+�����L��]��U�L	;�Y�zz�`_�j��j�|&Q'�_	��~K����;���v�$>)�=�7J<Q׻������	h���t�L�SZ���� 91�V$q+-[����jG&q.a҃;��Ң=mͷ�,*MK$�,��c4(a, <�	�d�?ߥ��^U�F�f�v�\ӑ��=�:�A~�I<D�a_%˲�oЎ�0l)G�&�u::m�x������?4����&��L�e
"�g���d��k\Ꚛ�o��M5�Y&q0-��Ke�P�jc���Y� ���Q��e��_nL�7�a�Ѽ� �z��Ο����MBud,qK����X@��|�BI0�ϰ�U�UC@�YX�<�����b<J?}J���5];��:YSc�̢����I|�s�j�����^Q�������p�(�g9��i6���[6�m*q���jFS���@��^&��c{��M%���E�{*��9�)ɕ�����>p*fSI�@�5S3��"���e!>��^l#;�
(P�%��V"	����K|��Um�7�a`}���X���U���z�ץ�Lx��Y��Qr���[�l(82���}���(��Xr���1�:�	��|�%`%�@�C��
��}��w����:]N��.���Na�
{���]�a�L𙹛`���t#��urt�����d���nxR��N�&���f[5��/}WL|N�z}W���5��s+���'d�Ҝ��e�mKb�lв���õ���պ� r��)��B��"�����U�߃���;����)�r�����+o�p��7�'�ꓕѣb�<Z��TlJE ��wFH,&���~�w_6$�Im6e0������fC' ˾�>���<�i�x7g�ʻ��e���b֘O^�*�e��jأ
�7��QxC,�����I9P�[����a�`[P�~B��'O��m՘�a_*,�D��p���ړ.��X.��ܗ��ާ�0Y��X�K��@4�mߘٍX4��-~��ޢsV�� ��f��l=T���t|��������հ� g}�
޲% ��|�0�&<���>�h`�*�,(��u�Rbqisn1��������0�S�o-L� ��NC߃yI�$�-��$ZbXߙ�C��uɒ�Ţ�{̍I�X��x���t��yk��X�~��n�"F�=�=<�t��t��r��
��2+Ǔ��ˣڟ�p3_�bOe�����_�<0Z
 �Uܶm�i������Ns.���A���c׳O���CEz4��F�d��4İV	�C�Qa<��t��TD3y�1���U������ �^8��<ڪЀ���N@퉘�	�_
�����#`G\�V�V? ��U�S,��y���b�O�������J��6���<�w��:��֥�O���cqVL��ե�    �X4f����_HE�y\Ӥ 2Y:(�vG�D�)ka�Ɇ�#��(X?���}K��><�v�hT����AKR�3��[�@%�!�ִ��ci�T�^�n���[L����`��>�*L7�k�)��13b1S�ueNɘ5��R�{���Y�Z9+��
F�?I�.�x�&������i����%�0��վ��:XJ*xZ�b���F�*x��.�P̌��	o���l�<�G_By^�6�A鮰��<;	�"�?Uam�Ȅ��
�a�y42��_LYJ��R
��̯wfZ�u��y�� �u(iJcњ�fϣV����͘I�
��>��<�]�:p����G�WA�xz�R���%�S ���YtD=�M� @���༾7��/���]�����ݔ$|&<����ۙ9 �CJ� �`_G��qz��"7��<����S&<
^;�q����� 
���G� x��/U���&��F�Ont��xǄP�n�z�cB1I2yl�D�ӥ���y����C��Z��ŀ�_G�}<_ʮ���d�ұ���`m�Ʉ�Z���e2aͅ �!z7�؞��� jʚ�m_�w�ܛ2�h�Kw��߿D|e�P�w	�|��	edc�UU�PgW^ |)/nw��w�s��$]��^�(o�0qx�x��#��B�'��ݫrzs���	����!Xl�K�$��hNڔ'Q�r_�?\xBY�y���[��NyW���s���6�y.�#�Wp,��᧼�{꿶2�vʻy�X� ���m�)Ĭd�%��W�9kVX9�Ln��7�wck��'�t��-&|ӴxBl5�Up�yb��Z4� B��_�*L�BKh��)�mm��'5+t��0�m���?iY&�Ѐ/���!�GS�c2�&S`4�(��sy���� ]����G/5����*´m\�2�	E	��J0�����R�å�`׵�@��߹ s/��H�M�_��i~�������c ����<YR`�Z�se<�"���)�U�G��ԣ��X�uY��!�a�9�
 u�b��jk����U�kY�xƒ��w�g<�,�s��i�qQ�j��k��!�E��J�MYk�(��d����ſPk�ؑ%x��8����@uhb3��B@���Q����n�:gڃ"�{2?ĤpG%#]Y�;c��ᝪ���m�<�ty���\1�n���;"�,>�(��M�nϠ�[UWo(#e�"����rNe����Ƭ���^�=M3G��z�X��A��Aw�3�3ء�x>��
W-c����<ZV�1��Rm*�c�c��H����d��s�����L�X �F�V�{8LKk����q�Z3�ln0�U[)�a>����1㋜�B��z �9��mW��p�3��\k;=� s[�����q������	c9~�cm��	cn�����+YR�W ��X�L
����ň�e�G2�}it�vD1vs�O>�j�rd���wM�#����	uB��4����2�a0�G��6.�Ȩ+�1�f�4��{�J�q��S���rit�d\��c�rx�S�^Uoޘqt
x�G��q���H�sű�Y�E��T�]��a�3!������I�Q��6E:f"��$S�1�ts�v���Lek�t�ƌ� ��gu��0�Y���rf������t�X����Um۾�L�1D��,9GF��ӟ�)O�u�Xio�F�SZ!���0�3���:[B1�E�Ci8b)4��j�ӆ�G��1�F�g���jt�ŢR��~�3��G��>L�
p�x���!��>�ת�=��8�
��)��&�j�5Fxz~0)�⎱���P��yx�(f.�h��f�"��_��i��a� l�,��!
�O���_m׳a_��PZ8����.���S���x��Ǖ�H�Yp���?q9j�c�`	�N��(�:��� ��A���&�Z;�._KsO6�X�b�	q�Y
���9w����f���3T	�̌�z��ؖ_�U>O6p�s��I�6�`�s�re}9���o��	��ѯ_����:7��Y����yT:��A8> ���z�������Zg�n����%ԑ��V�����+��Z]1�%���<Ay�٫�<g�!,��tT X�/��DY�������!�`�s��r������'V/?�7M���\���Fn����)%�8���M�J���u�ʋ5��=�qu�&�I��Mk�
��v���h�zZw�'��?�:���o�$yH�f3����� �\� �A�U�d�I�v�kL��;����V,�ؘ� 7� ޔ6�.�mI)b����/��d�E^����}��]�%nx�zqSb��.�*]� �D�O���+��p+�&��>Sg`<ܓ�`���<���NR��qf���{�`��}pM>q��W���{���+�i�rz�/��b c_��M�	�E����������$Ќ�Yc�f������so�c�Ov��5�Ȁ��T�	g2b��
ô�{XĢmz��Y��ic�óO�ׯ7�����혹0�l��r�:��Ap�Xضh9n�zF�{,u�y�,C|Ġ�;[l5׉�h�a��Ɯ��qBW�M���!e���®�vQl;�X�f8�=NYǵ#w��X�����B�9�ݰ5��}E��:���8Y7�g��A#�ԅ�-�q|v�t���M��|��a(M�A4������j��w�L��'�H�������72c���iK��9�E��M�����l9�F�r܂��C����I��`6�x/k�S��m�y{��zxG_9S�4��-�`� �g-gP��G���9��qe�$�j ��(u�i,2��fs
#�_�����p�k���ő���&:�$:lo	�`��M�ی9g`�`��!�q���n-3�[0i��Y��r�7�Ę�:Y�x.pQ��Kn�Q�C[�Dq ��!���ba�/3N��HǄ'���l�&:4&����x���F��ꁻ��������c�ͤf�M�ӷ�}Gqq�3cl���4�0�c���}r�l���1���!�u���:`(�|�n��}�Q�WU]�G������cj(��<�)G=��̅�$�h��UR���K9z9��jo����`��Q�h��Q��TM9�ղ�T�{�A�y/�dL9��_'�S�J��fu�1�{�Jg����I�Q��K�\R�F�8�z����6G������X��Y�A+��!\��������4Gi�޵?�g��������9j8�)a�2�d�����i,)G���ͼө@�l���6�N����݀����r ���1�ö(�$�H�ۡè��ϴ�\yA�0������� �v"�Ԇ����.] �@���h��dg�����A3����ܴ7��go^h��أ(Uj�dK5�'��bʯ�
�<L��C`�2>��p�O��,X/\��U�)����ZZ�b�E��>�a?Mo"�����W��="���]��I(���:��o*�M2����jd�&�ȽN;4�(si��L\��	��cM$[�c��\X�%y���]��2S�WX�+�hLκ�C����d�W��_�����5��3�UuY��۳m�����Nh%�8�$�g;.6�9�>�����r���?�AO|�.��px`L����L��Eα�Y�/�0��W;3���n�"��Z1�(���y��&�
�zr�]� W��K{~s΍Cp�@"�_����,Kb��J0�:��V�,;S]l�s|�]�t�����N5ԕ��EX9^p��7���蕱��[�c���S��E���+�ꆣ"��w��{l���Kd8/!��0{j�<&�-��@�(8z1m�	>⏦z-�S�b�`+�1̹��5B���uѡ# �*c��'	��n�~� >0��DD8�� ��� ы���c��A�Fx�	� �
C�lLS�	�@�A�3^n�Tʑ��P+ɀ]zL
�r�&���d�o7��kXIRt���x���1�)G��xK�0��]�S    �l�g,�c����#��Φ
��q�]��z��U��Mҁ{{]m��|/9�;�h�9��/$G�A���Yd�&i��oc?���w
����YRϻ�
��uc(K����Ѕ7u� 0K)օ*��~�0,�yi�ai_�0% �p�����h�ƽf4�?�?���ځ8����rQ���9��+�vI��bʲn�A%`���:`��_�0z��8���.�D��Y�#u�y_��O�������� �>��
��Ѭ��c
���sd��̒l�Ű�St=�s[C�f�ݯ��cν͢�90�q/�cN�3�w۩ӎr�ظ=�t}7�İ���vv�ô#��8op���7թ'S 2��῟�@�{ݏ�4�N0�Y�0�S-1	�Z���R.�gݖ���T�c�q�)��Yn��\��� ���j���7��7�s���31_ y�
ϧ�3?��}�(b�/�餪�i.��FQ2�i��� ��o����@4��3�w����?�g
,����F���{�,N��j$�M�����F��p�u]b:�MOD���@��QJǃ�V���(�.< ���o�J�Q�,�-�-#�QR����(�6����R#��LG�%�RoZ@L1z�	:
0Z���j#�9�E[վ|����=��s�9PLƨ�bHtp_Z�d��͑�:V���	?�-�*��<�1W���h�=y���R�:�ij�ѯ�~�z�g�5j�U�"��ڼ�fI��"���m� "�HX�ƶ��b�f��wé���:�JTh�n�^L���W_%�::M���~8����9������4ΤL6��A� ��C��^���L�ǲvu�i\��i�/��i\�4��oJ����qi�*aU��G���C%�����B+��c��^B�/�sA)��=�M��ӍX���F�7�������C�Jg@a59Μ��A�h����q8�忙��H]�x���Ж�Z�0 �}"���%�U��fѱ5�&=i��Q�e31��L�ˤ/m��5�ԧO�K���H^"e�Q9��:3�<*,.
�M�Rt�PA5<�g���p�l��+��b<g@d���JN��Nt'N擦,�ڗQ�4����t �bPNl�k�!�����61w��e��]ypm�Y\j��
P����,JgK��-���,������c�4F
ȿ=A�8Gѐ�Fx�a�ə3\�ƴT��q�z�L���Ms�Q�a$��M��q��7��q	x;��1l�=?Ů�1Aө����"c�~���4���d�ۢL�"
��u��I;���7��qk�� ".
�&���q[I������at�]I���]٘�ś~��T�We.-�J��g�Ӗ�!���Q���AA�ة��A1�|�cF����aFTowX�!G�u�2 �b��8��,��UG3	P��Q�m�����|m6����C�ߗ�uh��m�ܴ�{8�ږ1B)���+�iM�i�`^z0^=�,s��AR�ww��8�3��LAL�0N���5-�.����"n�]i���"���]�m7��q�t�6��C���2��Ҏ���Xn�����W�	��&�^������H��^���= D7�/��?-&ѧ��3�(��� `�YC����{����8�
�oC����o��  *��^\>紈+t�Æi'ƿE��MY><k<����!)��{>�Di�z�NU�\��g���7}�f�Y�ߟi�:�X�� O�L<$��Kτa��m����u8�KO�z��h����D0�f �Kc_f�9�������9���O���Hc���~;��M�a�k{�C�����fb,��̷�D�-j=tgs��,��o�-���W����y����f8`r��(�6�+?�d��Nfk�:8�QТ��?%��������� �/X�(d]a��C��Q�����z	aEt��Fm�tb_%��<8G,B�Q6_Pv}��5�c�|P��S����'�.��D_���|�5�3!���>ܟYtK�z��N�,�)swh���>~+�H��y�]�O�C�(��dlT��U��\��udb��=�W��_eD��5v7$H��阊`� K}�w���Y��T}8��� mCaHX�j�"FQB�)���[D� +�®P�.���J��eD ة�o8���Pw1��k��>�T:h�������<I>�s��+l����������
����=�aS5-�\����>�;�&��+#�{�"X�?x?R��־�h]ɟm�?�
%+]�AqU�B����Y�EYvG�NT�-yy ���.x��(
�ܪUk?0�:QP�׷F#�Z]�	������I���r W�m|�Z�Dt�@�(�7�c�!@��/�[(��(�_��Y���GU�U=�=ŕl������(��< m;7��xj��H�@ĵ���w��s�85��OK������
���	��f���ee�p��6���߁��~_�A����n��{���ԧ��#LlV����9֦�K���|�"��+���Ӊ�2 ��	Ԯ/��)E�͘��߽��4Js��<������+ 	�]Q��E��!:���8�x�ef���4�5�r�U��7j�X�0v�}����޹��OO��p;l7pR��d�=������
���M�a)X���ɝ����u��晩�mc����Ϣ�݅���4�n:p3�=�ɺG&������Y="�k*�`�Ggb��GG�� ��ƍ�n��@ �^k���4>��#��݇"JQ����kY�)�Fl���a�8�kv�+y4�9��;��s������G�ӌf�Ǹ�7�	�8�+
@�-N��<:B�G�U<|��ơ;BD����,,s|�``�R��q����@���ˮ8d�md�NBN���
�i�>�����^G;;�rL��^9�e�߆���gj�0��8�\����nI�yw���l��4�v��8k��B�"�4>NRv|@�q����H��l�o7�����P����98%���k���ͯw�<����� r̔� WK��y�mP���<���'���~���hH��|��q{�/	hlt�:#y�W���ƍal��O�٘�ąfu:��ǽ#.��:��ރ��m���..F�_��!��*oj�qsfњ��8:~�s4�4nȀ*F��CHtñ,̫����`�GJ 2~���`��{O�9�Uv�j}ɪ�uȣ@M�A���>k���p�ԝ�F��k�۸��\�����K�5��L|(�G?9l�ʎ9�"{�w�s.�K�נȕ���K��><SӸrz��0,��E�{5ˊ����xO�$���z��}M>'o?0��"��x�$t�^tuF[�J`�/m9�0A�3��:3ҐA]�X��XcY\z}�)lvS���>_A���Cn��5�Geq�߲�ͱ��>l�єޏ�ŝw���8P�
&إ� ѣ���f4�]�m����q���ft\:.���[i��E�M��,�I�q=}h���W�=A�g��M^�{&����cng>�t�?�]���ǝj���������?�+�aO24�;�J �U�MEgS\��M�ӊ,b8�t��<2���1㲮y��3�ݝ:e��6Y��b��GG���w"�_�������dƈ��'{�]�� S՟`�+ΰ߰�r�x��|��:F�ah/a��M������=��Q
����F�w�����Z.�v���ɭi>L���Lbd9@�l�����On�3�/��X�����[.*�\�vqA~,{����ϭW�@�+g�	Tv���?��k7w�M�׶W�.���7>2������:�͈��T�� &K�h�ח�'E d�V�)�ӭTBub" !Q=�#�g�A�d����3�Y�9lO�b����|QN�2��lf���T$�]���*�K�¬Q(���CD p��D��Q�{�r�X�8%o(r�Ə���i���]k���B0�8&�d��q���0����$�$;��좺�8�I���.��x '�/;��    �;u�G�e�Mc�=5ِ���ʮt�M)���/��V�,G��B�`�ՠC��F�b��A���L�xS�1==�U�\6\E\�}/ƐN1�:")��kbdF�͐�ᱝ�<�*X���ٳ���%Jc��iu8���]�Q��(����[X���FV�m�F������/�"/�y/"Ki�B}�F1�M�Cvj�$�"B��PDG���2�7DdԔ�XY�0��a�ed�^'Q��-��.x���BGy2��x�۔��z��+��O��{C��7���G�!F]�2�������+�0��ZɈ�c�0�SLjWH��)>>�KeB�/:�{�3���F;�Aw�o��g�⡤��4��zo�_�������"D��1}��b1#�l�v���FF��F�U��G�s6��$�ac)(�X���/ip������P��2/Mc�IP���@iSI�C_�)D�3��}�f���7>�%M�ȷ���N�|5y4),�>?��j��!�4&jvC��%�(RÓ����a���_I��}΋1�F�c�����Ϋ4�RD�eA1�� ED�[�]؛��7~,��1F�!�x��W�c'o��,a@��Ζ�n�f�V:���Ӱ���qx���[|l�[k�;8`ı�C�@c>;f������q��|��պj��ѯu�H��t�*쾢�X<@D�kbxH�eG�� ����(�Qw�F���Eƻ��I�
1H�f�����ft��񑝷�U02��טfcH{���/��Վq�R���_��;�j���t��}�{(Ә��֖Ч�/��^��l���I:94�)b��08�2��2:������3�hp�����Ww�f�z4}3S�?R��Q�Y��G�Kkힹ�b��yj��,���D�G��i�iS�^��fldw��TG�tG�u�M ���/�ԧ.�a; �O���k��|��F�d1�m���W��Ճ�W�r��v��jT�,�w?]u(�#���htLeŀX�	�c�vX4�G6t���a'�<����a����b~��d=��O��ekK���s�i�Y��0?t��Y̷�4~�����y�/�m��#sb����P�3u�ʈ)���6Tb�"�2W���b_W��?�0=�Og1�Q����li����=��k��8OB��J׀� �üz-z�E�M���߫%�����1�����`���j;8r��Ȉ֗������*�04z������ �~	4�<��W�}��1�����-Lp_����W�1ĥ�_X���~8�j ��"�"|$:o�@��}�{���	�T��� ���H��S���(�c��8b�ӶA��m�"�ͥ+����pW�E�YO�`�����i����$ޕ��R'*�֌�^R5e�N��?����/8_�m�
;JK�N��)��ɊJ��И����F����$�2�E�����N�ix
2����������H\2�J���Z�%���h���iN ���Z�1e�"�k���;�X3փ�kˀ�����FO_s1��^�z/�8�\�=@����4�q`�ʊF�,�ƪ���F'�q�Ъn�In�q�H��W�Ǳ��%���3��1!s�F�c� �4�P��^���w�N�qu�j��x�`;d9u`��Ȓڛ��q�!@DE��q�"a���t��1�:���yƱk�PK�n0t��@���O�]�A'��[���0�u��O�ƹ��M3lw�s�Ō�
��\0��fK^=����`�;��O�h�/	bx J9J�k]�x�P���|`���H��T�#�T��Ƒ���DP������YG�ߣՏ0.͆�9q����pwf_6bQ�)��?�',��gX/���J�'�C���L�B��F�6�~�Y�+X�0)/â}Q���7eo��wۙ����ۘ�0�������s�3e�����P�S0��1�5��q�O��^ 9��%�$�n�q� T�|��˽Ņ��z������h=�=)���=��x1ߖ1@�ݡ�x!����s*W��5z���4�KV�H������0��;����K�G.�N��M��Z�p2	�V�b��_�	c8ZV� Q5	�72�7�w�d�fXh*�@��k�=���u��]iޘ�MU���h�`���khO&>:?�p�+G���:��Sx�Х�c�2�u�Z�W�^�z�x�5epcMq��we����fk�E����3Fz�%���?���Cc�ߔAH�j�:g����CQ�<���D1��Z�?88eP�W,z�Ҏ2,�����H�S���RCb�p$ه8>�}p��/	u������bt[NG�)G�Y��?�%�e)G�!�1���6l0z�P��}!��U�����8	ڥq��z6��O��ګ�,M�/���4S�(L�
�����N�Ű��U�G�: ���i�h�a`��P��~74	�����m���Q��h|ƒJMu��Î�O>"4�Y��A;�ց}���7���sdV�����	�C�qj��l8��J�W�]�CqK6�"�^�����՝����!U�ؽ:Q0��q/�҂��"�>0��H%-�{���%c��k_u:���	��u�lu̘�CY���9���e�͐����l���s�h-f�0�:����h��b%Bl��4<�0��1X�	��Qvզ<��֚*]�W0V�!.��yXl<��>#d���	c�?����{��p�"PϨ�;s<����Ʊ�t>�?�#Ô�7q�Y�12���@�sTr4���3cL��^<�+3ebf� 3����sf�3��E�T��W����X�=8�6���_�4�m��݄e�e|�^^(��8�3�kKo��Y�9��1���2���`�F����,�C듂2��
�lz�Vf�36��\K��h- ZS���J��ѯ1SK�0�{���S�-��e����7m���IV�c��sk��s���4Ђe�sG�=�p0:�λ0Y�y��@+;��iw���dn���⌄\Ǉd�+����mY�ѰW���x'w;�};�8��Z���4������߬�A��4��A-�.樎�����N 0��"�$�8�^c�e�.f��-�a��% ���hʤ5�q�txث"%!��;x#����t�js�(��E�!�(A������7���*w5�����=�X���^�^p ��#�e�Sh�p����q�"��T�@�_V�@���D7A��+�ȫ����o1�pl�Ƭp�m	��k-&�_����w�q�b`���*x͒[�nӜ�������5^�;������M?�a����E��V�4y+�(N��0�`�ݜJ���_�c�f�8�b��W���C�F�m�31��TB#d��h�b�X2��a��^0@����,q��5��$,&ȠKBF�몴��r�O]�3l'�_ڭ�&�9 &�z�N��E h���{Y\�UۊR�X�1��Z#96��	�+���f t� 
�75�9�E�j�#�.���q@W�0~�|��E�`���+7\$h �v�~cZ��&���m�{����q���U	�`��Wc_k��g�x��{�������� [�P�5��2�k�c��-I��qu�����Nt
��w�ygiX��\��i�����F���r������b,�-Q~��y�@� ��Qz�0�̮�4�d�RB9��E���X�r�Xè��X�%�b+�թ·t�K��)1c(�5��I&y���ҔB�3�f����Z��ٴ�<�+VW�^ߕ��ٯC׮������m=�@�}��6YʱBlWt�4�R�c��O��9�m�r���h#R{%] m���^�yzǪ1��-�(J_)<ٰN���'���w�3�=::{⾺�G�Ϩ�tX9!���f_���ը ���J���W�ؚgq�2�jo�?.S�
�j:���[	��M��<������
��ڬ��5X,}�59zq�qH�3��fq��A�9��q8j�����<y�0��f��{�8uM�s�k�ŝ�4gY    �F���䊪Ͷ� �qѱT͐\Q�����]iʡ���������y�+{�c�� l=�l�Aܛ��<��$����!�y\0-Ԧz���B�oy\Q7V�~�v8(�,� %'��M\=�Vng%2r���� QJ[���/�+�6rxx���6o:�d��#���{���?���]
��/`M����Y0>��������N6���lO�T8���&�e��v��1x�R�՛�4�<`8A;���Е�+jp��g<]�KA�ڡ=�������D՛�d�����U�����9x��|�yPutU���+����̱(��C.Cߠ�⨫�c!��|1��n�����|���y����a�Tu��.�?}l�D��nޅ�̃{R�v��\�w�
���b5Ʋ�����2�O,�����AS!����H��p*�R�{"\| (AB^��Q7�!I0
6|N�,��m>�uW�|3�<`>��Q�-d�W��}�T�gd�}yJ`H�������JB�32���\ɀ�6��s`�;ݎ!<�w�@Hn�R�_Vg�>�B�I�W�T������gz�����{u>�c��V�Fn�]�^�&|�w0tlg��o�.�?�?N-�ȕ����ӄq9���pY�=u�*|�����0�C�Bn��_�#�l�d]r��lH�B�lH#�[�#.���Qc��=�"��B����&�#^LK�R)w?��T���S��B��j ���\���B;2�[І^�ހŌ��ð���A���#�
O��4�Kf!}Ⱥ:�.Bl�£��(<ᗅ��(f��ˣ��˲�;4z��MHVmG�d&$�`{�pQt?ڛJu��_��g�BF�=m��F}�i����\Ꙩ���t�,�y��w��FbG�3�%���p�6�?z���=H�~��un�?����#�0bN�M�A�7>AJϻ�w9��7�����5=`��Vw4��&�3�i�F�kSvmK؜����ֿT�
1�}�7K,��jچ>��u��tj��b���^`E݆��T0���Kr�9R5X��HV��eB��{}_�h!��$|�����[/�����|�+x$�
`R�+�n(F0�|�T����M?fa"\H�.��X]Iʡ&�Tdk���'�t�
���ɽO��*r�/����c��y���'�/����� ���E�q"�w�n�A�����s_�ۣ;1S��(f����g�R�6%�!��]L��kG-$���}�Db\X��f�_W�4*q�wX�PH,��&���#����2>@�+&R���h$un�q��p�~ߩޟ��H��wڇ&ɪ�uo`!ޖ�wJ�H;��o�N���46��{P<eOm�q6��6���y
�R�懹�,o),���4�nt�������(NHrt�h�@*����l��O�����6z���`U���O[��;� -T��"ҫ�����X�,e!��iM;:�J�'�ý�*�E��*�9�'�/�J����XH��R�I���kN�D,�1LA�C�@�xZo`�3t�b�r���o"[_<߹�R!>��䚂D�O�;�@�Ao`��>4�:�T{0$�r��'`�6�K��/�#�]��^�~�j�����l���"w��{=u��7O����c'Fk��s�vn��0\]�['<�Up*J�?�u�ґ�h|�&7N���N9�ґ`�kU5�>Y?�ڶ&�`η@g�Z�z�k}l�()�xw�ܧ6�X=�*�k���ܗTZ���l~|�Lf��z�]I��4\ݠ}P//��j�J�����c�˲;i���h�#�F�F�QQ�M3��K�j�"0�o�@�B��g�t,��\'���s��u�x��e[�TrX�˦Ro�`N`&᱗�^�W ,�����t��� �P�Q�<6	�=�r�<&ߓ{�X�6���tJr�Ç��,��,jA��ԇ�	��. �l�<e#h$P4�Ts���B���ɿ��$�xYK]ĩ��tR�0���ٶ�Sp}�_T�����Ʀ�)���G]�	k�3!k���'_�����ɬ,;�h�y��'R�R�H�ۑ�1){X�	�NUZM������=^��O�r�!�7��
)6d�"��f>q��ܫ��|��0l���M�KZ���d���l������l�,/����:�����A}�����u6|�v�0#�f�I�O�V����o�w�����q��3.u�X&WcR��]�2:H��$?z(MGY�07�Tͭ������p�h�J0��H��������1��ҕvV֭��QͥK��n�l����֓+E�q:�*�v��fc�"0�5���n����5�R4�Y_II�`�������9ˊ�6f��'lܼ�?Tcc_�31�*��<����[]e0�3��Ju�+}���&���3ߴr��`l.��6Mj��`m�Y-�2?p�.0��{D�@Ҕ+!�
$�!Y�"�-pw QU��7Y���̎t����O��x��ρU�(���V��"��q���:���y͑'��ك��V�"�r��I͹��r�l�V�K<#k]ʩ;��1��ְ��k�\�b�N��\=�����F�����l�j`k���3aWmC=�\�h�s����
���i��j��K_���_K���]X�s���_�����ur�}�Fc��B�IW ��z0�eY����B���jk�7�8�W]uVN},I%q2��!��P7�s��eXiDbS;Y�s5���`n��2G�� �^���ǪIU�$=�Y�S����R��s�<���<����h�;S�,�j���~-��6�LrF?l���m	W��	ZQ�I�s������Y50�0���prFB�UͰ���C�9� ;�T��[_Hbt2&�9Q#�;�)1������$�	�;���CW�z%:cu�K�e7��yQ�,�T��[���oWL����!���YW��DS���eٙ�+�	��)�ܶ ������e�QO�L0c�>�>�o_*0��,r�'�ъ	-n�&qB�(��q��b��H?�_�ɨ�zqQ׀��}z�����P� ��A�*��=��?�$KSܪ�(.-����ul!�q�����=���I��a�x!�`���I�+&�A�,Ц��(�	ᒋ�k<�N�/$�ke2�B��a6$L�]�g�Nec�v&�Ku�6�3��I"���`���G��Ǔ+��X"�����'��! �љUկP�,k�%��l�ۨ��<b1��K�C��Н�)��>�Ê��/���L!�<`	��8�S_��<��i�:w-����gPJ0N�\����>eY���o y�,K�a�3�s	|�5���#k�$!\��]�yG�B����64/��`��'��PȰ&�?��@}�����kx�Cn����`�u����j����W��¿�j7��.��r���Y��IZ-�ʏ���� ��E�z[�=����AH��ޝ��:<��<�,XΛj��ҭ1$��ջ��@�ݴ�o൯��	a����U����S�`����:<[m�忓kP��ZxV-��~jɷ�y6塤O�w��3�E3��J�����H&.����be�^WX��2�6M��>]�A�G�Y�W]��ư�'r����%Xѧr����m���ڵM��R��~�� ֤p$7ɟ���6����$\��QW��.kZ|�~�~�察�9�G�>o �O\c3�Y:����1V)���9wt�M�o����S��g�R���ä���|�3Ie\�?]�C��F���fӗ�Z1<K�}m�}ۘw���֮���
)�I�8I���Ϋx�CG+�]�V�p�~Q�d�s���a��Ϙ�v��/R�We7�yOE��T�Ǫ��W�D�R�TC��R�E(�;dq!��"���>P~��`�L�������nTD�׻�|.ͦ�"b�K(m�:�0HK�/1b;{�`"b{�Cl:&�*���a��h��HHm�<�0f�9�h�*1聶7�?ٟ��g�Ŧ�ho���,l&����	��    ��L����u�dUsz3ў�t��x��,� 7eM��Mp�s�����BX� �>0�D�l�0��O�+7Cc)3��k �tlaE���3b8�h�[�$�����N0G
�E$�l;:��,�j|iӳ�B(Z0u��s����/�W�2�>�&c.P�C���j.�B�C@%ܣNh���5��4��OSpeb�vl,��t�+S̤Ǣ�[a�,��>�g^8�w����C��}�̹V�U:5�{����~�vv�'����ztU�E�y�AI�ŗ�t"3�L�fGF�ѭ�~~���1l����ɧ?���������"�%K���ݶ{�-�2'ƛ����g���^����h��F&V�uɩK� _���^��D�_����0�^r�Zljrqd�/�Ymg�;d�/�򗋭��N�R�k��jɮ0��(c�́�w̭V&��u�W�(]�߸k>l7+��i'#�OX�cU��ĳ%ld+���nؔ�^��d��M��ko�����;|2��|c&N<5���s4M�-��3��P������իn|�X��M��Ƹ�Ce2s�L�Lc4�0{�g�a��PE�XL����_1�Ԩ���>�P��.��6��t䆙W�K����\��o6`�l������(:���ҽ���abB���7��D��]�LtH�:6�h��b;�"Pt��>�+��d}S�@��B?
�=b$�%R�?Ewr�<�&���0����2�w���\&	Ves��&�����e� ���^w��(�d���?��9:�2� �qc����_��̵�NY@�̭�Sg<X�̭r��2��u� ���b>�#&{U�G�-s+,P��̖@6�ܗ�D�c�'Z�0{�~���Rv���4�k��5�ı汐�TZU����J�*W@:+d�}���B�����k!�>�_6A�ģN�t�.��|:SŚ�XvCP������^�����՞J/�U�nus��{��k�uߕ�ψ`�dG?������[����������ljL�cȳ�X+�|"A$�"�<���.������π]ث�:�D z���5V�S2٧��qx��> >�K`u��s1�e,��g�=Ѩ���!��ct�+2�(j�3�$2|�!�T��cOZ�WІ�c�X�p�+P5?�$]6 {���g\�#�G�=^��UP8�CS=���_��d�Kw)
N�����[d�V? ��uǺ�o���~��<��������BL��>�����s���PX�մr��"�p�>/�o�F�)��iOb^-:@�CO�r9H��I�l^�}�?�?Ge3`y���D<�Ƕ�[*��ז��ND�S��9��X��v%��T�����7.!E���^!��S9V{C��I�!���0rl�"cꁧТ9ϻa�֪!l!::w�hi�������NO!�^�YFݯ�A�c��b��o�`ѻW��ݧ��:�1���k*{5�M��듅߮��P�;���z��'�Uu4�):�:tџ��H��aW{&�]T��S�br�tAZJ�
�	m�8mD������)Q��z�-U�C��!R3�WR���k�l���^��y��m�nMY�<�]�]��1�,R���E�6�S�Ú�+Ua��Q-��7mx�&;]�L��������/«&zax.}��x�\�B�ʬ�G�SU/��)�_;��R�G�6�t�F����h��T��߻��<�et-1��>V�9ϱ���B�Hۘ�׊T*�#���*�����eJZr�-V �F��K�f���.⠠V}�ò�\�M`�J+��I1B��ʊ���]u:)�{1y��Q�3��d<#����1�B��,��]�\�5:S��s���E�ک�X�1*[�Ƶt����Lqs~�X��H����A�=�z9j��=;��E��j��c�i�kVo���ޡ�r��"z�|���"v d�.b�é�VC�E�)T�'"�dK�t>�ؿ��&$J�����ZeX�:s��|���Z3��Fcz��{r�\��>�����/��~��$m�"��6���Z)���W���%"^\-�K������e�J��ni��G���rӔ��:�oP�S��3�5h�~"��Am��ʕɮ�:<��Lf�`�zT
��eN���U�![�8��}�^!
�?��f#�����\&���d� \�k�GJ�ȳT�����g5�'������O�]$�l�v ��RC�٩L��ƽs���z��6棣.���-��U|���V?��!�E��̄<�$wf�s ��[?��^.$�ln�@���\�Ɍ�E��:8���@\�J�;����ߐ�o����RC���_=�:��6�,d�-:�U5U�S?a,c��r8wzrӵ�:t��0�1���� >z �[��˅��N�Õ���`�=Q[.������ �\���W�s�`���\Ƶ�<��Þ��W��hA h��.��To�zB.�Q$�x!��&����)����F�
��?�;��������A��f�.�ۜ�#���IC��2�tp`�{*i���	����,k옰�,���y������K���.?|����� �7�e>�z	iVƪ�{o�g�ŉ��e�;e��W���5���o����/8/�����6Y%�3A]�k�E�zxzj�K����Ӝ��K����N`�J�Dnˏ�ة�@m�[�;��P�JW������=y+���@W hD����a�c�g]���W/Oz�x����X5ۓ`������$�ǲ�`�,3�.��{l�Ó�?'_��ߥ8�=��Ы��a���f;���Ϡ/�E�j�/�.���ؗ��M�v�@�v�X�q� $u��#Й�`X2�,������7ݛ���J�/y���C��q��΁��u���sX���wOI���:���}	p^���]��X�<�D�����U\Wm[� &h����}��q}�q��Go��*�����I���r�z՛ё�V,K���:�O	��D�}�}����E�  ��1% �(��jg`XV0D��P�`C�����1Y�O aKH�=K��=��wUm���@�Q��H�P���=�M�k����v�� Eӝv���T���f$�+�-����<�A��`���s���t@�ժc�^@�}�]ϥ�XJ&�ޖ��P�m
�1��Y{#6�BDoG�b���	�7��o	�c���瓯���/�nE���/�m�]a��.�f�ԃ�:��Iw��gul���З	Q��җR�ITV�>H~ '��,��H�{"D�Ԛ��6����O��3�Bu2���(غţ�r�O��n�~O�nddX���kj�k���s��%`~w�2�����j������R�����W�w_�6� ��4˵��4�F}Sog:������e맲�w�>��Sw"Y
�ߴ���#Ӑ���6$N5�:{g�E{��-�-���q�=��hu
��v�/Mۓ>*D׻fs�;�BS;�����Q�zQ��{����;���_偲�ex��j�m�7MC{��x��ͯ�w��D�n�u�������F$�(���ܓ�F�]^��.��c48�ݛ��G��$���o��K~�l����o���V�2����(������Uo@�؍�Wn�?&�7MW��v�n;�NJ6q�ԧ¤�"$�ml��d��_H0X��i�u��	�t�X�S��$�[����� ��U���A��b�*|H��U'�Q��/�d�� O�z��$2�ϓ�䁚�L����ig�Qh�����M���_��Gq,���4pF�4���w�^s����l}wâxQ������J*�(�
*0h�j�B%�7���V�`��3Q�v�%����*�+W�W.#y|3%U���$��ᡝ	���Q�Y�|����S]dD8��q��C[��۵�r�����7$��2M�/uzڝ�L�L��ۢ�6�݆㰦���[;��T�R<�(��럻ɣ6x�d�#���p���j�T}����N�    �wA�ec:LmM	�t���9�����&,�KHקɷfW'�"/���Wb���^�E�Vq��^F�dQ0r���=��PC*I�^ř���)�{�E0����j����|6�kO��o��)���_�d�ZA
hת���S�C!~H� �d�]�5�iMIBz�W�|����w��T.*21�}$�R&��${�F�~0�A��di���)	��B�E1ДA
��R?���mh�n���E�lԭ`f�Ca��Ar�3'!��h�F[rCE�#5�����v��DP�(���5f�fNB�s��~:;b	��0���1�4���3u8��2�Ew<���	)�����&L����^�j�u��U����	�!��V�G������_�n��K���q��D��Bĳ�RF�E�k;P�`��q���i��'x�&{٢�j�T�8�6�JP�}�S΂��T/���j����л�|n��QH؝�G�Ew��>�W�ݻv�j���+��aZ��l����D[TE5������}U�A�e	\2�UuP��2��jUh'i�����.#-��6/��a��S����]2�p��sq(N�s_����JM��8V_5X���	\���\^�6*�y	EW�0E�R��w��β݂4����5eZC�� �4�\�`?<�� �ւ��^K��SQ���4����9���|nN���o�}G�x��ۛ0A���v���3wH��W����A�_%�_��� Q0��~;ς��J��>:�C^߃V�oa�]W)���N�OZh�J�������^3�DY�i8�Z��l�>]ٟ�dc".o��7-n���[�ٯ��Z=�{������;��@Z(��|�M��{��H���6�j����A�_��x~�>�uZ:���;�*�
u�,x�q�Y0^d���l��r��qK�CDb�͡9?�^Y>}�a,��`{}i��e�+��p� ??盗��v��O�{J��B�o,� ~	�H*�5�L� ��a<�5]p3�.L����х���h��p��T��`�����%$� c/����,�:a���2� �=����x��q���m�v繣A�ah�!�(!�-��ё����jgⵗ� �#\�(�-1���#��p��%t&H��t��,������yh�}��1�Q��� �q�hW���4N+>�Z�Z���CKpanu������'+m�"a8q�^1�ԹM���2z,U��0m�b�2�_�I�r=�A^�C�'z�4#�DV�6�34���֋�Zɺ_/�&z]����M�5Y�H��w�6��3��:4ӦƜ�N��r�ۉ�1�(|�P����tt�~?v�}׎ ��5'����;����Z�t�LF�lj��zѲ����t��M�努�7&?U���~�pj-
{S.sE�P3�E����� a��z���ܔ9��S(�{�7�`ȍ�g,w��H��~����d�f*�k�s�N=���8�i0ٽ��3}1k2jp��^u�\ss�����I�	�6J�ku
]��p�OZ���@�yf�:�O������hMO������.�kx�c	D�M��c˺9���~.�����L"(�֓��Vo���{�6zH-�:A�TYN�-���������斝�������u�K'��hrg"���d��׶y8�J�h[T[�>.t�*��hd�c�?�����vì�	ҫ��pJ}³�ɅԘ��5�N�Ro4[��U����`�G��))
����/g�������n��fS1�M�9�T�P
�[��jdj�2��qhg�����S	�?��`4U9���2
�hC�{�dk�R�h�_F���Y^60�Ȝ��`X"�&/���n6����Bu�WGr�]Fg��{�� +.�����{bS0yy���S���r��h�C+.�����lZ�]U8ELI=hC(R85i��v�F��*�_�����Q�hL � ��U�^���O;��`����M���;���}����k��Q�n��3��6N dzu�e�P�%^��Nܚ
f[����G�̃�P�@����`2�h��΃z����3P�o(�I���6�`֌V���`B��$��b�_����gˮ๫)с���;�i�n�3�`X���VGRt��y0��usb�F=n�v{i��x4N��a� /�[�w�p��_��!��j{����t���T���l0�~�����;����@��f�ϫY�i70
⩽j�Q~�Ò{1E��#�|��Mj^T�����)�Pr�k��䟓����ٴ�P���0�2���жy{�b.��*]�Y�Y��=݇��V��`�a�>=�#�wZL�����.�h�i ��� ��A1�/Pe�����㰐��:vz�lQX#��-U�GYМ�2��}T�$1>�Z);�1X��h ���2��Ԫ�J:
W�6	�op�P� :l_4�'��Xd1�A��ؒ���(D��dnh�O-��a/��)��A�����G�?1�b`C�p���+����?�����������Wv$��#Z�1���O[@�&z��Q�3�`�b�殫��a�OZK��Z!LX�2(C�d&�pq��J��>F@OLm��}'���K�o�L���	�
�R+�s-�T�%~o,x7W��)]5�?�p��U-��e�Z�D�<@#2?�E��~W��E��D^p�,��f�m��Ltal��Z�*w��1�Wq��z�}cb�ʶ{QV�S��_��%xz�5�=jGU�(�7
(�h�_WifjSR�;�����"�[N~831��|� TmJ{i�G�L}	��!�#��Y�efj��#�
M��c��9j��Bf
�q�Br���`�3�=���0>��	�-�{�s\��ď7��;Wɒ�����p�h�����K<JC?�k��S�ބ00��#�<C &�ӜZ�ϙ��r*C��W_�p ��<K�86{5���_����5�j�MxB�R���c�����sx[|p�~���TfJ��5vU}ֲ���'Y+:�.A?��QOzKi��XTGP�!��ө��G=��,om[nT~&\�a��Ձ�2�E~�ƣ��m��^8(����]^N�5}e	
�!�H��F��������j���X<��j��>�qX�z�N���24�xj3jN��ˀį���6��"�Uq2=dP�M��H���<����$�S�*�d�;�	"ܿ��~*B�̡�C��_>7�z�B�u���r>��	`���?1o��)Z{�oh�f>"�\���ᒎ�+���7]�׏�:{�_Z��'!��d��#
x��W��j��Es�\Vt%��"�DO��#����"�����v����&Z:�ma�^ES����r;��ܾ~�P��#S�����%4�U�E�44������t�-*�w?���H�������Ǳ�����d�Z��D3zq��}�7��lY�~{3� �L�*��|~uWl����Ե��?.#8�xN��n���j���\/N�P�}�#޿�AC"�)68�[{��"�/v�B�r�ү��ψ;��Yx~��U��6�}������ِ�&��]����&�z�jTە����w�#�h�����/�	��fP �q��vo?�[���P����A;��c����9�z��/���Tq����Ɯew��(�'$��1���,&��?{sk�~�c{'#I�l_S~�*V�7�q��d&���Ҕ88�Q2�ǔ���Jr"Q}`;�gr�,��܉:6����/0Q|���>t���4��_�}��TѮ{ƥ���r�v.L��M Ȩ=�!�����N�KP��i����>m!u[e!aݺ;���1�p	hC�>]aC�=��跇�Kr�w�f���5%�2{~����	_s��4=3f����Q���i&_�����`@̰�8��gP&��������^6,��v�̮��z�7c�����de�ĳ04Y2?�M�p��,���5������[3;[Y"�[ϊ�s���h�,������"c��    �c���ţ�N��{�e�-ǌ��l��~�|n�,�1-������%�"�3c^�C�di�x�om/s��'h! (�l�Z�_��q�%��t<[�s�N���*� �~/���G����E�/<_��5�_%����+L���@l�}�mS�aC������^�4{��p���Y�f���/抋o �n�|D���í���k]��2�t�bpsf���HESt���|�
J��1J���}����L�v�V4�����TN��x�����6yi�:f^�A��"�����5<�\�x@'W�?}d�l�&�Vz�����(e�߻���H?�`�h3�"�,�����h��އ�ы��]g�~6$� q֝�O�ٱA�(��u]���^�M�]��~$��7&P�(T�0{���S��~6|�z�����S��.d%~,;�F�?�_.�A�0J���#\�3��k�u�+
jD��=�s�u��_�&^�����8�5�ϭU�0x�M��a�_Ez��޼i?H��3��]C�����.�ր�YuҼ�I�A2Y��)��![g�F3n�)�8_�S4��Ƹ�K������Cn��+�p�o!�ٍ5�Es$,[o��J3���Q�5��1:G���s�����ܖ��3�ڝ�����4L����L��w&���z�wz5��jx��C�e{�	?�z)����3r���:��0�1?��Χ����!�I)Y��q̄�MuHBF`8G�J<�i�&��}Z�=b�?�LS���m9�W�>���i��g��Ɲ�:Jg�8���T=��s@��\���y�E�J[;e'��\|����(�ᮠK�G��|��!f���}��9 w�<�a�^�6�3�����c�q3fN�����b��\��(��v�r�Kn��R�2�2y�bh��̑�O�TJC�lW�-~Q���,A=��l]�۳��^�����o��%�<�E�� �K
q��yÝ��z�Ţ����;Гz�]f�����u����ȉs� ����L;71s�`��f�*H��-�JL\�g�-�dp(��6	�T~	��Sl�i!/�CkͶ|��5�Tg��D��g��%��I,�z�mc^���[w��k�%'2U���"/�ik�Q��S�R��8��Sa�k��H��_z汝�R/�q��Jv� ��G���������O�wx&=Ĕ{�9�l$ϻ�裭�4d����6Ԑ�핏<jGn�5�k��������Cg�b[f	��_�{k{'@:sF�pK��NV4L�������u�p�����jLp �s�dN=I��থ���lEs�6��z�A^�w�����+�����B�sO��h��4O�#��{��v�8�������ߋ��zI��{'��;�F��O���9�֖���R[eT��~%v���vzn�~=�pn�t�'��՟IY����`4~15����/��_#$�X�:����w���28�;{���υq�Ȅsv�LL�`��nO�"YA(�D1�IY/Z��RA�R�ėh����m�@F�qj���ok�L�+D��0�����/�ˢ��%�l���i�o`�y����ǅؙrb�Ĕ���|��#�\��flsR�f*�$q���Z��ɐH�K.j���ؓ��-9g��~���JUO�ZUš��EL&��-7�~s�!Rfi��h����8�9I���{;̄m=v��|�f�gdoYg�W�]"��7��v_Up~ƭ�y�S��`����$���/	Ǝ��T%H�d��{Ü)
u����	�.FM���e�r��m�ǅ���BdI��q�H	S8V��v	����d~�iՆ�}�|L���`��sg�V�ւ[�.g�+���s�~��|o�gYNI�m[k-�u�̙E��0g���X,�F�iޙ4LZ��.�h�Xܹ�3g���/�?;,vL׽F<��|��~KF�!}�O2�3�x,����z�8.��f��pw�d�\sW.�
�+����p��"����v�.L����j���k.U�y����o��`ag�����n#�:)c��pf�57��V٧�%�L|XA+����W�?q�>��2g3Ch�¯�j�o�m��!�0��N���������"�>e�}F��?���tj�%��{}����|*�+���fO.�(�vq>�ѫ�E�a�i렙�,�rK�6��\����ߗ;���T>r,�E�84�?|�ҝ�#��m	�*��1�>o!��,�����.�-�	��+��Q��/�!1cN��faI��Q��flT�s:���?GVs�, O�d?�����m��+dy����(xs&� 7�J1�P9 �#��0���ܖ�GӜ��;�Ó֮��'@ti�z��1ע{ƾN}�lK\Js���Y3J��;QU������T�-F��M��i�|�9s~��+W��f�J�����	�x6A��2�PH�¡]��t�s�z����S��%X�z��tcc'ِ�.�ܝb�W١�	.�%��g,��B�(~rF��].�������k��ؘJmqi[�23����!<��ߖ�Wx� 6%ſ\<۔��=~qh;�쑙J�6�xc�2���o6Z��o���(t6�G`��v���3ƍ�ap����Û��}(g�FX|�U'�m?�Ѻ�G�8�D�9[�.3�����T���t��ށ��d��R�=5����HT`���Tu~�"���w�T��gҡ��a�H�C���d	iSc�_'_���AG�p�=�oS�vS��oG�x�e��هh�G��Hja5��Ghh�G~f�42%��ʣ�!9�@Y���B�_bT.j�y�x��d����_�/�-.�KȰ	[fJC{7Oe�|��i���'�O�L]h�#4�y��\Q��+�:�Z۾Ж͠�ײv�:�Ͱ�wv^S��3H~�y�>����O�΅0���P^е�~c��+3e���sW�=.��?}��<'~}Q�7���&��ॡ`.�_��Դ(��_���AM��Q�^�%�]/���X��@�><d1u�]��mփ۲�R�[��@�:��K	Z���lk��|�A�>6�S�8I#Ϫ���������8Q���T�f��}s6��/�Kht2��H8%|��1S�:��v���23L�k�9���m��]�mQ�ځ�Ͱے�����>S������Y7/�˽>|Ǚ ˡF�1�y���F����8/����V���=;�c݉�9�Z�6kG%���Ӄ3V�����\���i����5pW�2�GA?��K��q����G�����&�`���r+��د��٢����ί(�=����Q�y�(��A���D0��B:����9���7�oL��hsk�L�]o1�˝�0�{�9朵2�_ hQ�Σʾ)eǇ~��|N���`��܇~G����Q�O;<���g�6*�/blj{�0����`�ގ<l��{F�V�m+�WE=3u_���iwh��=������E��'�k�x�%��A�B�?o&�о#��G� ͻH{rH�T-A{����O��ǚ?���
x�@�3����{�^#y��F�C�FE�$c�*�ǓM��"��5u���2��#w`�y7e��P�s/vW����kѺ2	����;uԫ�Ga������h�C����"�^1x��Ѧ����x��b��A��,�"�����?�NއU�n�挬�1$\��?x�}��{{���n2/�V]�G����~����ɓ�����`	�#����y�m��$h��'	0 ѶJ������d���o|w�S���Z���{}�6g�P��c��o�ۨ�(e�ʋ>�prّ�E~~�'x���q�#T%So�P?������4����UӬ�����}�ݖ=+b��zP�gJ����׾��v&�A� ����x�B�d� �8p鮍��]k���;x�7�L����]���g�&՛��8c{Q��g��?|�B(�FFL3��qF������W��t]:���Q:M��-J\�_��E�>/��d�ҩ�i1��    �5�D�ge����	������fn@���W�Iƈª�̦Bb����}��Qo��s�Gg.h���~�~S�Ia*��H�8���i(�}��ci�g1�w5���If���������h�tE>읚��>��yφԿ*����-��j�T���
���#�X�td�z1��{к���h�ۈ����8ǁ���l'g1�XKL�E�*�������`���Y,E%���a{++�2W%�k�<����Ȃ!��J��@�}�g�ZP��X���uKWU?0{p��b�����*�ʁ#�!m�=Sy�8b��3�=�`e*���f���x��ʎ!�B�#�\ق�1�n�B_il����ڭ�S5�&+���N6�)��>[a��W�(�NL�2�I0�ȿ��`��-�F4&��c�C�/YwF��?Z���=�8���q�m*�o2Ż�|	�U�8$S�6��wų�-��'S������ǣ�d�wzEx��.��Wa\f)�Io=�[R	A���Yl;u�?�R��/�/�db���]W�?�5�+FP�b��AO?���6ݔy�ϟ
�T/��@�;��CYY�@H�E���"�{7�v��T���WB�ޕ�+�@"@OP��y@����B���Z�	O����@27т��	6{���Qc2�%Oj[Z�;��,��Ӯ0��7ݨ��1:�����H ����C����z�ا�4\��kQ� �k�j���i$���j�����X ���X��߅�ұ�U��x�p��םvn���Z�;(�H�L�)���F�%���l�J�7G�K�K��L{P5yщ)����	�l���nc����/�}��l2ML���sy�4��*a
S���V�� ��J"`��FzSZ_`�j�D�.O�y_	&�(ʺ.��K<6{u��[R�ֆ�$ש`}.mE��v�f�����}����ذ�����ٛ�N��m�^�	Yk�E+�=�ϩ@J��!������E�o���$���z�D�h?y)^ ��C�t�E����YXnZ{ �Lg	�~>z%����B2h�U�kw�%��DbRc������%4���7p���iz������0i�٧+���L�����D*j0��df5f&�Uo�d^?hW�'�W]�J8�R�O��� Z���sT�|���^&P�ku,w�iG�����~.����5�x{���-��ݏp�ew��4����l�jaM$��s��N���L:v.`��N=�v@�}�1�/���.�������G�����f+����ɥO��l�=���+���Zi��,l0 ��h�]K�6�l~(_�ݔ��T(���g[�XԽ�W��ڃ���_�V���!�M�X��e�#�^&P�VL�E�(��$�,����}�k;g)E���8���]�o���.���n�j�>q	���O�� �$q0�EɌ$�0�:8�5�$�Mo�(�B�AOԗ4�$q.p��ek�E���m�~;6�5P��"L�$zI��2"I�
Ra6�ػ����"��X��R�VڴWE��Ҫ|�h��������D��Ҫir#�"Y�;'"��V��I�$��������6RLz�!Y>�3�D�dH���,	0A�����rG����h�DA)�1��H��sz�D�ꪪ$��p5�ɭ��RN�@�_S��H���m��/`��W34ڛ�Z](!�U��%	�UB_�4��@'�$r� ��n�����w�"I�lQ�eK*B�Pz�5'z�D!����$�$v��M��,���4е
��H8����rOx�o��Y��$Z�MQ�_�}e�ኼ�7�H�8���I���!���@��hR	�rh�FÑĳp���.6ITkq8Y��`-����Yph�/`�fK�$����S�X�D�0֍���I"R��a?h-#qzk� �@��E>PÒX�1�\P'�����)Iȩ�P�������r�����,�Dz�$�����$ܴ�k;���m�Vl�0�9l����Z=��`�]���Cs��!�d׫L�%a$��Y#I	jA�n�3QA/�'�c�m_M(R�m��$1�����C�HRZ*(�DF�$�g�o���@Kf�}[@O{k�^$廲*NZ�'�O/��n�G��VV�H�K��SYM%�0-�αL _qψ%�%UͤL�X����
�~}-!�X�Kּ�yw,�$�k�p%Wh,I��5mǔٰ��� *}���So*����%1+R`�${4�S�$n�ζR(�NJ9�D��T�$�X���Ģ�,h�ms4bY�

ܑ�KV+g�Ēp�`/P��H$|oZ��bI��Z��0}#N�$��xCJ,���`�=�aǒ���h���7K�p�CkI��_��J��y��~E�M�z�&�DI��S{����B��25	�8���Z?���BH�XgRS��8�X�#�$J��6�&�S[��"!a�I�2�g�^����Aʈ���/��K��L-�zь�5۲�+-��^
sn$�#���)&7pKK�1=�J��m[��)�P��8�R�Q��4��T�j�1d��}��Q����

̚�S�i�����D��\8s�x�˿���.S�1�|w2'��JT-��������ߙ�^x���Xv��ro'J�5���JN��fD/rb��,�R�7;��+���Xt�T�"c	,�;��\���Q��+;"����'w�i��T�'��x$ɧ�����7�>:��d$��h�~n/Mg�B���Ki������R��GЗ��~v)o2�E^N��=CY�WHV�Lt'ˤ2]D.7����j�V���{~ [�H��]�iq���r���,�R1ӇI$_�d�Hh��;u��ә�ϲ�Cw1;,�sQ��r�x��ر��Lta��R�eD�
����VN�h����GI�VH��4g��� PZ$���Lt��h-%��x1vO_,9|�����+��TB[/z�����[G�	��B�|�$��-�N$���g��<��\)��W,iNI���}&��IȮ��l*�P 	PU=)ك:U�`��4)B'	��i1$�	����t��~����Bd�����Y�&�X���߱%�����sI��/s;��$���;�dK��"X����h�Ltg��ή~I��x�ɔ�䍭t *Q��uI=l�7��	�7���y���%O/*S�k&��Ԃ�;@: �H���:�8�L�����O���b��zړ|GJ��w��rG�GoddwPY�	T�]��S���L�o���1}��MM\�e6�q�RN�(�9���{�z�x!i&J;�W�T�g&�9�-��BrT�-S�"ˉ���T/	%F�#����:AduAV��"������H���{{�4%�>�|yq"1�~i<��E�;=��V��@{l�*�L�5�(����p�)ၞ.���V��^��l�ՙ(�U�%�� I_]�nH�(��h@�
�%U�Q�ܔkދ�Wo�g�͒D�֎_t���H9H�����M�dہJ�/��;YX�@"�{�辷�}��O*I[5��vz����e	��Z���Jt�_"q���p^n�z��7��:���ꕋR]���f���{��j-=Ir�Z���3Qr�6�_m���(3�^�. ˋ-�e.ˋ�����7���Rcת�@&�{�(����2E�ދ����X(7L�@��1��E�K�E�h��Ѿ�C�\[j*W�n&ʠ��S��'���.�v��Qn .��u1���Vm���9�6�
�^�F������ !�I�n?k��:ަY���^ռ4�&��_�gI�qm/#����<���¾�o�pmI�KGj;Vfp	�������e�XNnlmP!-�W���/�_N'�����^ёzg�a�B��zyO�I���3\o=�)0�R╭ ����&�0c�΃J��,��ߨ�Vڸ:;	эv���ɯ2�ۅd�� �U(�����M?�>t�A��y��!�_�i�p���k����?�R�-�F�|{kN�]�l��*@tc��R�f    �HP��@[u�~J�ऴ��7���h�
���q�<O��i*!�)���cѾ�M�7�@Q�N����c��|���� �~�6��̖�F�B���J�@�}=��cC������xX�~��J�p,mHF���'/p�;�����P܃�3>D&�/��@&qE�K��lIX��%8;�.o��[V�D$͡��,I��q��S�M�28�^�2��*��2"2j���Kfp��`��kV��b�a�n{*ϖ�װ��T�>�r0�T�E�(U����Z��¦Yfp(|�����
�&�B�;	��	��z����H�f��5��!�b��x[���+�{�[���N$ds}���H4
t?<h��,d(�u�t��В��^M�;[�Y��U���928��,T~��It��閱mh�R�<�6u	}��B2ŷ��b��gP2��g����� ����7�`��JY�i�̉��qK���"����TK�����*�|-�ӎ�ѣ���6��+��}�&t��%1�$�=��z!�n&����S=6�/��v�L���S����L���]�m�'������]��cC���|#�I��^!�f�h,�R���������r��$�I��������U��4��/��e�Id�<*���A]H��I��3(&�g�vL2>����RS��3�<����(j75f/rH���*Av��,#�9g���ə���wMW�;�3)�j��o��E{���H��7Y?�h� ���F/��0�hR�������_�ǁ���~��S���+r�>�$����*+l� �U��'}"���ӲJc�$��z^�WK(��%ϧ(���<���,���\0?;؝�8�D0?�iY�2�$X�	��+��4�p����YdeCM�����Mf��3�Ʈ��|�x�<ui��3H�2�ܘک:R��tWm��3v�4=-)	Zs�|Ӛ�X�̗���՝"A�\NZUWQ�iT~�cgg(��3��A��H���={��g�B�<�(!߉������U��gr���S��f�\�}� R����b���l�]�d�-�y�w����z<Z �7���� ��M윛�J�E�@�c]���n՟�@Z#���>0��#�dD��.� A�}�u6"�Z>i�&ܢ���?�ZnQ�.L3�9�b�d��.wV�$��7�D��n�w�����-x�3G���a(�ry?�U���N���R/@p��e�o�0��U>��h�
i����ȓ��,�d;�)����#-�3��t��<�bK����m����{��"S(kE;���	��-��N2���CӀv�S��9����@cG��i��>��C����7���^{�a	w���'����ؤ��(z;��G�m�hws��7�U���Dm����Ok��(_^��z	k����h��&�a$DѪʅ��������3?�BIX��q�O��AI�Y�Db�c�ϖ���3?+�!�W~k���eS$ږ��02�_���ǬO��v�m���$�$��o���"kyѪ#E�c1oX��ZW�)�8xcd׈��P@	�-4�ܐ('����7��H>.�N\�KX��;6�9@�>��U2I�� ���{�d%	���jP�~����?�On�¥c��e#8�
�fB�!�[q\��T���J4���iO!��A�M-�u���\]�?��G�L�(��i�E�N	g��|3�/�=z�c�I�߻>Ճ	�䬽O=3QS9��ˀO>x�$�l���x	>K�U5�_p��Q ��7����ص=����[H1������o9��T�'��	Z��?�C����s1�t*�_n���`.����Ķ8��s9y�*��N$+��ނp�ؐE�$de]��7O#�hC�FO��"�1$��l������K�V����&���>���q\I�;-�9�Ӡ��e�`�?���еM#��c�S�$�z�C�"���{$Y.V�y@3пNL�^�E���}��2H��V�*6����d��Ie��ܡ4���2W8$fA�x}�y|��	�_d+�j�x�����:3)�X�߻���-�C���IY�ll �%2�O(�;y� U*2�T���b/�N">?���r���:�U��7$]�.[uNE��-�ߡ=�_̰�:E�D�=�ތ[��a%$�f*�I~��uB�H��Jm6�	롇��˳�c?؀��`��ϯ���j�T�60��X�YF���ig1ݺ�����5��n����kбuY�i:��H�8И�D'ݘ`��Ji�>�;ש�
���Z�0s(M%�y�4�""pS̮��C����%�H�+�wQ�#�(�$��V?��L}���h:��S��{*��Y���g�s�)S/5YW��8wd6;��� �����o�6�=���#HQ�MQmwT�SS�6(�5ہ=0Y8E�զ�{�L"B��5ݙ+dN�2�A�n�d�Y&����d������3�L�~�~ۈO��m�j �&�0��c;�Y���*�u|3�m:p���������sð���4���(�����W��|2�RG��L���BKU�c�fqY�rK�i@Iޙ�6{JJ� �Vg�?�Z��_hUG�|b9L�3�P��C�����C�%<�3��?�ϼ����P���^�neB���Y�v®%���9@��pµd�51��E~�k�GK��	f�B�@�j2]�m&
��P���<d����ԛ3��V=�?��?�[��g�����t�X�^v'�@y���v� )���H�km�b8'D6�[�rM�L�4��x�h{�R<��_�_�p���*�$RQH�^l��NZ2�!�U۝ޠ�˨��t`�``?����c�h	͆��P8��z�:�=a���s�'PO6Lq;y�|���:�5� ��3S~,���w'�s�yǐ���5�:�3��M?q_�����FqлnS�BX��X,�.�ݷ]�޵Ϳ�=Y�QB?j�zS���t�n-�@��Rq�dU��ӻuE�w�t���B�RsR�:�)�0'[�h8�Eo�|��%D�R�AP����i4����)n�V�3�ϻ����[�H���?nѦR5MہC�N�ڗ���H�-o���[2���ܜNM=�������������ԋ�0`T^X���۳��6����g�3�$��Z�KI�EeW����1e��&�EWp̬������#4f��e�h����|p@�D���1o�^fEOˮFD�&��v�]�~�nv0�#׊���_����8��L[b4�T�}W�����~�[_^�M 4KW�Y�{�3�ЦP.dQ �#��^�oe��S�H�tֽ�3�X�X�����c���\�K����Q)#67o*��Q����_>9�]�P0�M��*�@��P簿��/;� \`���?�����fg���	�}���D�À?lN����)ci��m��ޅ �m���|h�;:�AM�\ђ�bV�a�Eh�3�ĔճPж���ꦬF�ǰ^���m�s�r˺�Y(�������S����` v�N��tGPN�׊Rj �A����	��S�M���^�PyS�3��tʚ���`Z��jHk4�>�%vn��_w�#'�Q�Ψ޳�i�&�[��6�v���j���*�0#5�v�� �WOpX�)P�Y�l��z�,
�ͩܚA&�V`)�1��.�Rr"Y�Rm6�z#�aU�c֌iNå3��o`�r&�8�ށ�U�m&�6��*�B)���쎝�a�O^!6��'�+�]J����'͡ɏꛄ]r�.�$��
&��_^
k�$	�n�s_���N�re��dv�?�ޝw/N�$,�ȥ����o+�5cQ�����54��@+h�ey�֎)4HHy�l˺�_��~	6�3��1Pn���@ni�@�y��J{n��_kU慝ؔ_F����PP�[�zV6�5�2*��뷪�ג�:�6#SIaS����Ec-�r�Z�����g��c-��'�Z�0K����'j�M�m6󋩹���P�6�ǧ;�n�Ԅ�ؤ7��Й�    �v��&h\�y���2 �E�T��͐̿#-�6�z�*�����,��f��1)y~v�-�ۦ�m=cx�8v������:^��gEґ]������3�C7mU�;Z�s�;ε��hxqxdケVj��L>�am���m�\sL��no7�y
8���ߚ�T�6$�?���N�K�ѥ�6j;s�.k����<g�'�p,[�y��mg�L�=e�L�|�)�/;-�Gz"ǡ�v'�#��p6f���
��?�:��-=�ӥΊ7Ȕ���}�֖��`"6� FB���Sve,��0��U�C�M���\3�-���_ye�;؍Z���q5���mi?z�7�M�ġ@P�7��fSP� �6~��)Ȃ+�i�?�t�bĆ#�KP����M�u뽵�"�Xh�A�zS�n����Ҏ�֍����$~ܰt�:T2��F#4f:,W���X��]�<����U>�l>2�9���b�T���/�,)�.0��&v����[U?�O��܈� �ـ�u���k�r=}�i@�qR{D��8M�˺b��`e5�@����9mF;��A���g�Y��s�ъ�B*�\1�+��,	���~�VR�7��+�����E mz��e_\��$�	P�{��P�)�� ,�ɉ��#��
�Z��/L��\PC��l��U��]$�4�ыWH�Ep���5�B�!i�� �\ �C�,;��A2*}r6f އ��(�*��OB�j����Bjtn���((��J}8��,�,��/�-ɂ�z�?��I_1y���4M��Eķ�6�q}FA�C��3T�9���0�6�v�8
ʭ�Z�-߬��?��������8�8(���?��qP^�
�Ϙ��A}�����2{׸�Xo��g n�Hz^O���eB�/�g�Vx��Uڱ:��>ѫ��S�;PWV��A��������mO͞xl�rv�$(v���q���Оz�q6��g����`��̜$(�H���D+��*o����)�$���5��$����]��H����A����v
~x����8J�6�ۂ�b�7yW�ni-�A�y�n�d����]��Ӡ`%Be��%����J�/S�E!���������w�1���W�w�`����n���L�rNpd�Ϟ��)�E[�6SSc��i�'Bj��pܔ�h)`�l���mg?<�hӴ��,���'���8up�Y����	�UYO/2k��vd��
R[/����Vt� _�j�;S�����k_qv3�'��q&�	���K�z���>��`ѴH<m1�'f
��5�D�^���d��d!��EA;�6���F���Z,��$.��K����Y�E�5�:8�Zvi�_�񗪶n�_�M�SH�b�N�� u�U$�@�ʴ?�R�A�Z���2�@]H��cR�~|מ����$?�/�[�iP�mi��K���?���Tj�fh6�K�N�x��%�%*��&s�������'�ֲ�*4�(���j�$�ZT���!����;I8:�T�$��S�����TKu	��3=?�IA�l��s��
�y���D�DT���KD�z�L[@Y��ܮm^ޮځ˒��17P��Ŭ�L�$�Yu[Zɒ@�Q�;Zህi��b�.p=�[���Q�GEgq�(f�\�I��Y�D�c7d$��e%�x�:9� 6�R�U"��rl'�B��H�A��=uM��o�9Z���#_�ܮ�$�i�m���?�'u*�d�&<j����M�
sƋL7e�w�DD��w�
3ɴkc��*��/47���
h�>��/a(�A��n=��Z��{m��F��)��Դ��0r�o�iD�ȗ�����-��#�bt��mP���P����"��p��������s�v��&0_��DFp/��ib\;7�؀�?�MM�)�v0�^���{wZ�,�L�}Q���gUX8
���7h[ы�*��#��B`�.�:Q�%�4�� e�Е�HOf�"˶r�f��T���h�3� ��|�z�I�z�ɾ���p}���&��b7�	7W.+$��W�̼2���X�H�;g�􌒪�� 02���X�WUP.���W?Ƨ��z	��ƅ�\=�;}JfI͐ ��=9j���ɣ��F[RB��B@j����U�l�Z�Z����	}㳨�z�s�צqfd�|Z#�$� r�Ɛnd G߿���x�n��� �V�o�J�:�r"�	��<\��_$�y��׊�#>uOˤ��we�yM)~�p����� �}"�ݻ���{���
H9��`ӢMGʣ�&�t`F6�@t��h/H�ą�}����R ���>[�j� 'i��Z{� �M���c���P�4l%��n����:���e�!_��(��R;����댵��<`wNS�~׌� 
���b@3V��;��4���ُ��Ϧ��S����7����n��최z�q^��.F���n؟������{*^
����D�k	�w8�ڢ��eX!�7U֓�U���	I!��p05����� �!&�-'��h_.߃v�+w� z���H��M}(j��D4�,*!�k�qӘBwR:<��G>_��|窦�P"L���]t^H� !ړ=ӭT8�Ɓ�I���=g��: t�Ig��R4�������0	���bS���S�
��X1x�~�R�v�ZLД�����A�09+ם�r�87�5��qW� ќ!¸AiJ�47��0��Ou��_>�`1����8s���h(����gG�T���U�k����5݋Rb苃�`��q?B6����DϏ��!h�ڔ�B��8��m�E�i��#N����*�!J�-�r?(�pN�5|���{N�?C��ڈm��`˽��=��Q`y\�9�;7�����	|�ѫ��KI)o1@M+��Y�R�-�> N��/l �1��	���8Pqr�l�
:
8Y�O/p8Vw��n͒ݨM����Ĵ#��4���h��\�������y.Jb<���ʾ�[mw�UeM �-�%B���V%|ay�-���v2����5 ��ه+/ae�k��S�	k�tZ�z� ��"�7��jkug±�'�3mK�~4�H�r��c��z��xi2L����:PT�bR��P�j�g|r�j��H�)b]���D������|)Zu*_���,���z/���q�K��R��-�{�^Dw�/��w]ĺ(���qP52�X �{��F��<Ꟊ)��~g�X�^S�#��T��OQ�'8�t@�z �6v�h'wMw�Ib����i�.��C@�fzs���:��U3JY8��B�ıƻ��fYĚ����NA �O�^�����;uشC4���N�B��#Ak	/�?
Ot㈵�My�5P��:Y����DD��%!���L֓ۮ~���[W�9g���N�5��J��Ҝ���*HCX�/_�.ğ7��'����q���g�q8��=c�YHF8��M~�i%y���M �ĝ	l��񏈪�טdC �V��\uu	��p��v����e���_0e���j��hm���7��Q�]��+�ۻ 	�A�#�ӊf���a�������8b�ە�*�Ʃ�Uc��ӂ��U�\7��X��V�}t-b�]�{K���L���<o���i�/m�#´S�A��8bm\���\g\(G�y��ç������T��S�;9դ�Rn桰��q+�u,��`����ٍ�[p�.���ͯ��[lM���̯̭[FA�h��|,�܊����L,ӽ�Ի��U?����5�T�}��>�Y��#�/���j36p���f�2���n��E��O��ڴ���k��<!�;�3�[��G���R�ǭ{U���h���i�1鷪����mN'8�Sa�7=��􋁯8n�m�:C.����kF����w�D��eբ���_�[#Ǣ9 �UU��Ğv��e��+0�?�1|��V�h	��&]���@�n?�K�@����	h}��9Q���49�;�6crj��&p�"�R;    ��u�C�i?o�p����k�"3$��.�`��+8��۫�0���8��L�?';_ǯﰜ�ݖqR�c�-�DZD_q�d1�qO��
^�#3���,(l~������9>�hr�G0�?�fm�}sWۙ�_��~�Y�}C~��
��?$��Д��r���:O�]������O��R�Ln�i T_?"��,���{��`���w��4�b��6�AЉz�
#�}�@؟�>�bC��!�`f��`�<龙|*�i�?�n<5�G0��\*�?����rbjm{,��k���b|����� ��>'��rD}�{T�ȀJ �����\�b��%�<��p>���=e:���O�SN�͑�)7�p��������0��4w��˯��#v��h��f�|.�qc�~��FU�ۂ�	�f-*�	�rj���[�6���h�U�i��f�'�m���6��N�Oeo�f�T��i�6rS����&k��t`����[-0j������1����������ɩ�+��"��}"'�L���ɴ�]�]{�����z���H2��7�g�gRR2�w�/��G��[oB?(��Q;= /5�;?����s��a'���[]Dsۼ�."X��bI�JKa[[eq�G'��|��b�ʺ皐ʜ�����@��1	�"�%�^��W�\f5�Z��?��!8�)�������.�:�B��<Y����8�W�/D�(k�����k�w�Q@{�:�b|��7��AoP{0����\�ABM
��8R8����S8����V9p4(�=޽C�R�_��j@Z�����)�����j�#����86����OἝ�j�{gߟ����4�E䠤�(Ҵ"�g��0�jd�±;;Ѫ�ݓ��<CpV�q_�U����Ջx`6n1L����@����G2�Mۿ"ayh�m0~^����lR8�7�L����J���$��>���y��˜��Q�
�W;,�������_�߾y�C���i����qn�(�N)�4�����*��}Յ�y���\)��~��qɭ�/��I�\ۦ�.tꍜ,�@�:<PjS
g��^(�.�� h/�sW���c
���1n�y�p��u�P�5��Tv+�d�<��VN���.򽁥��[R��N\����� T
�w�A9�t��S&)Ϥ�T�� 9������H�܀� T�9�ZV��W+O)4���P�2��s���dᭀ
��pD�?ޫ��6sQ���W��=���xF�@k	��,zzu�j�F[5����p�˯��4�,f��"�f<�~gP��Q-V�I�f����`���6N
�����y>��j���1�+��aV�tyM�?�����Rǲ�	�x��3�e#$ڞM�p�[��z˩:{
��^�SV%\��ۧ������^������B��9�Н^����
��1�WgB�?��ͮ(�9��$L�1��\�N�qG�֜�)��{G0n�ܪg=g��	�}K�����X�e��ݣ���) }gh9���T�W��ۣI;�K�Dz>�����p<�Z��"�6h�!���=��z����Ӏ�cT�DF�<G�=���!��/^ O��k�.�!�s�ÒB{J<�p�������j8���ު!u�iט&ir`U����U���_
*HX�?��+�[�\�8^��i3�%����Ö��6�kO@vC$oV��k�r�J�MmwPr��ʨ��f�qh�����&��^Źj�!�/���%C�k��B�k�$By��������2��,$UҦ �v�-�^��=OJ�@��\SRZ��2j���ޓB�v��~�r�����g��\�߅�A{����V.����@{����M3�s�ϠU�'������W��c���M�xbYm��y�Z�`�
�ݸ�u)��	y����Ё��>~8�z��.b��v�����V_�>��U���Y���=i��@���*�ˮ�2�N�$<�!	M��ե�q |-��U��E��M|�~��i��Y_uOP�(��yP��C3����=>��?T�܀^&VB���'ĺLV��>�W;�Pf��:�������;������gVo���z�BFC��x����n�lL|��fP��G(�����2���C�E��~�*���y��`��N=��`
i>�-pƇg��7}�T�v���ў�$"�W��^A�{�%�$�۶�M
2|��� Rh��k�ڪ�,��GH`�{�����n~M@70�8�[#�B�~������~U���O���+Ȓ	�a�Yo ���2����]��p0��T�:p#�BF�X|�BmTn�@��h�m��7\X��8K
}�a��Ai��h�9౏ICիt�H�M֓�����
��RhY�sʴS�v�V�õ��T�>_��T��>sq��m��d�3���E����VN ߴ����\N���o��;4jY�0�~b��Plp�!���/)�3���ǜ�ra��'^�{�Jk�A[ ߹ae���R��I��ػ��Z�4��= ���N"�A�'���{�5�������ǟ���WT�0X
} <��#I|&�^����9$>|W{��`q^�������ɜ���x����p��]�b��\��Z���}ø!��D�� q��2�-�V���_5�mR�Pe�G���,$zT�Z�R1N͇��{����d�Պ���(�%�n��K��Mrg��_���u�`'��;�T2�M�J�<�I�ٸ5<c���He��r�W�m<�[}�<mVxP7jS���nVa rt��x����B�zK�$�fKou�W��"�^�]�U�gp���A}9��)+�}��f̦����5�<�Ɂ�!��u9}��[2��maV�G���_'�����U+H�ߎ=�^[C'��03U��:Ǚ��1��ABfm�����?� ���y4�,��|x�^��M�Tt��IO{�����7;�;;�xp�3&�}�;�r��/s�13���8�E�ef
����5�:��拻�?6�x+�w�j��{�ǜj����1ā�#{qڰ��fn�>�kj��aշg��j��z=�poH8.���΂f�d֌���m�S��L1d|2�?�l�U���8�U�m����-,�L��TMWY���鞙*jmw���r8�c�ϽEq�����'�6kv��6�st
����~���J��r+pi��
;Rn�6f-���U���eS�HA0��X7�6�GU�	s8fp��?�G��<�
�q����X͘�MB��%1�T=�ն��&!�(V��<�kb������ɟ1���`rgpG��֪�(A%�ɺ4�[gk?/@T1����Ngo�j뽡'>�b���lgk��o��t`�/�|���O�A9���=R��Z�Ͼ�=�ܻa d�iS��r��w��{���� 4����˨!a��LU?f�APϪfk�;�`
x�1�[�[k�A�h�7�I��1SP*�@�A�+���5�F��F���&��+[ @$���ϊ�qߗ�ϝ��
7�g;>$�{�����y��v:l66�4|�"��7�&hݞ��5/�7&��E�G���ܡX���M�녘�$�s����$Gj;�/6���32���+z�ﺺ<��Hc��_���ǎbN�~S�gp��Yߵ����#��8%��gͽ��~\qT.�{f.2pV��n�k�ߗ����7-�`Jq�&�6����랙�l̤r��rM�����Naf&���;�����]D`o�Q���Дԟ�L��(��u��橯ϛ��軚R��Hc�tQ5��������վ������ �b��f�	��k�,d�O،��lg�Ee��� ���P�'���Mjxm�&`�k�D_��I���}"�?~o��/�Y�x�<�4纫J�e���S�+��YC;�U����ϻ��>L����v����L��~V�.�?3M"<��j���݂��a��g- ��V�͠1���p�h�O��^�"b7�����    �)D����whŉ_��ު7��W�T}��qeUh3�J�d| lQ�!����ʾ���o��׳&�t��^F�y�,���j҇y�6����V��Mu��ٶCLxu��srS26��²���S,�vB1/N���3x�e/�l�k��Ǌ�I��|͠�P�(�{�.�@����L���\�
u/��2����d2i��6�#¹�p�yYN�Y[`���x�m�7�2w0Q�ۮ�N�6��͚�N����0�ؑpAh�c�JPA�̄G���h�gͮ�ǘĜJ(�BeV��=�ӻZ��v�p��8L��T�G>`}iɺ(���>̤��vΈ���nó="�L\��۾�w�St��i�5��ɔ6E������c�z�JC�Vgm�3�)���ܚZ;�,���������us���b�,��&֭�������������lE!���e��L��4�ga�A�a�j��Fd�K�b�(�k-�kl>Ek���=�^بEWZ�K�ef1�U�h$���;���J]T[����;i�R���������YʶxQ��-Pѻ��aC�T�Bp#�b�пC�&6D�y�Ev�ـ� Xs���{)�#oskkdM���^��ms<�ӥ@��)Fc��=)ՠT��d�^J
�	)��?������_4[���M{^)Zo��a����I)�J��"Z�����J���օ`p�p��#C`,��6��4d����XDB�D)��Q�����`��Cg���}��K)��%�3��^�D�uu^�M:�.��C
.t&H)�ۯ굟E��d4��[Wa��f�1��RB�K==�u1�ZO�;ҳ�!4zF����,jS1Й`�?�78H$��?����'+�N�4��;�u	kؔ�3��O�)-�K'��o��V�[#Sv��3�}��"��ZQY��@ X/b��A۳���F���N[�IPp�<��Ռ<M�-�ڔy�t�����v�`N�M����S`���5T_�e���=����}�����+N��c��RiQܢ�+��+�~,�dA�1���R�Dk�z`���2S ͭhS��;l�.K�����'7v	.�V3�8�,�io��tʮ�%ݵ�r�w�wa�T�h!�m�HD���mw�e�m*�N�i��5A�q�7�`F��=�.�RqP+�5z�ӈ�U�G ��ǟ^ �!�1]��<�����Rq�!�u"�8F9�"0��{-)$�~��������`!��r���Ӯ�N�L���N��М�\�)u<�@��!���=fWh=�1\�r¶�*�-~(��k2�B��n�ܼ/4��~�bn��>��q�ܲ�P ��܆�"]{M86�˳v
�Q&kp�`e'�p���-�V�C}�߾���yA<�T<k��/��-�ݕ;����6e��XVjS��x�ڼz�Û��dQ' V:S�;(ʮ!�D���;��or� ��eS;g5����X9JYs�3p�+]����k���`nm�7͸9�Z?�,������4�f��'r����6=Q��!����rk�Č������pP�#3��}���:Ԩ�3^�*23V!�ҩ6 Ym���|,Z;�7O�#d}5�9'L+���{��<靣7��|\�d�Ŝ����Ys~�֦ˈ�y`ץS�s֟i���@n�����9o�h����n����yͱgm���Z������%@Y��yQ�����"�_�q�k�� 9�����k�?z���m��Ϋ�':^$�${KG!��]��{s8b����BHE�� zA.c����t���DaQQ ��7f�ʣ@ȧ&5���M�Z�>b�́ʇ��j�^r;DN �#�I�z�X��N��]S��.���X��ǀ�Ϫ�=6b��&xR����,߈�ΖM�l-��u��7{o��6�������U��Kj8*��l1����!�("�@��YO��Ǆ3�zs���o�$��۬�/d�[�v��ʄ���Y�w���,kŔ�ޛ͸e]�qhL�9�W>fm��4h�Qξ�M(�?4Ch��yh4�nۍ�j�����+�G��A��8P�+�Mo��׆%���G38v��mbc���N�iВ\e�m��Õ��i�2d��c�.\�44���+�7��b5��^��!Id�c�[����v�TF���?�\wȬn���%U]ַQ��\+t�sx j��B`\���h���%J����9Tゖ�gT$f%%��O��B��B��~nP��4j�וĸ�
}@W��K�0+���4h�.��A��iК�����s�{�?�A{�c�hN�d?�T���1h�l�<*j�5��yɩ|Z���yё 4R<P
n)���<#h>S�
{�;H�&����1�w7�o4����F��R��&��9�g<�����V�e�a����ވA�˷��L�������U�q�y\8�F8.7[P��:�����z����m4a-u5��s�ofth`�]k���)OY�fy��<t<}ˠ1O��4�o�c���1O�9�m�����2k�����h�B��%��;�M��]Qfz���;
�4�`����>u@h4����[�X�������xo<�_p�/��X��AL�s�zF!�->�2��W9�0xί�&�1�{8G�^1 Bd����D�� ��ge��~�����v���ۦ��%���4���R��ȃ���qO�%����0e�
��+�3��Ӷ�5C�&�h�(~���GƑ�.��N��Xt'�WBÕ!��Am�si����n��.��2��2�)1_�u?�^��Y��i�a�I�h�ǀlZ�Š��Ԥ�8T��&?`!&�Ճұݷ5��
tWQQ�R/à��f��0询��O��Aȥ3��aз�*�[�	�Cs��uCgc<44����,�3 5 h̐��Kt6}�qo~�M�A�Θqà�	A�{��Nj!��p�6�%�A�MiEV�]3w�t��'/��f^5|ľ%'���A_�*35)�qЕߐ�.k=4����h��q8Z���������U�����%�8(VW�U��AѵR/��/�1������8(�~�𣙩��s�f�e�rѰgk���E
��?����G�Q�?��A���Ls-���C�k�UI�AIt�������Ld�4�����`O�?l[��KN�����Y��w��Ի���E��6T�(+�wy�t�&W{q��>ls%���پ(�;E��׿��Wn�(��?�g��R����}��`��J]UY �Md��Wɷ��.�s	&[7�1�|�E���\$#����\��PW9t�ۺ-O���i[p���U�*Ԣ�y��M�;GI|��Q$�6x����M�L���46���U�*J��o�ֶPӓ	�+"͛j��e�tTm.�h��T�ϧ�x.N�du9�� {߮[�r�/Q�� _�ل���-��qȧuvP�����w����Y���)*%uǞ����š�^n� �k���>m���p��kd	+�M0��<g�d�d�_^��P7��w�2Vwhs�7���{�r>簔����*#o�����>��l��Yl�s�V!�z/�u�)�F�����������w���b�Wϗ�bH�?*�����q[mG�,�K���R z(����:;4����n�~��ޓ �j�l�V,8�[����)�S����r+�!��*�q<	 ��!7�ndO���@�����P���|��Ɛ�<H�Ei�Z��2���;Z���aeH� ���h+�S��Ai�n��0��8� ��k�X]R���nEg"�z�}�(�mzM�j�!��iy�1��Xo��J�e}�'��/�>k��yw��yԖ1�C.���ju����
5�G2���B�7�A5���}��=Z/Ǉ~W*�D�'�a��E�y�<�)
�¿��a0im,<�k�����)����W!Փ6�`������te���q��*���$)Q�_^±���-��D���ܘ�WF�oO'o�����<(=zv�*��JaiY    ����"�?���-��'�8F6l���ГN�(�O�Q��͑���9 4�� ����	t7oP�|��~P�E�-�
8�=&TL�Lv_�u�r��
ã�9�x~i)����*7�gg��>c��"��\a��Ô~Z�ۍ?���7�өP�S�}P���7�k��F��U��b�\{�(8x���qiP�3{�|�;yȟ�=�_s�3Jcʏyֈ�:��q���/� ��J�8�͓�s��Wd�HGcr*��r��g���@	v�����%��~.rm��&z������i���;N��v�v��?3�sF��eݴ���o��;;�Sl�:�D���{a���6d�ꐨ+v=�ÑԦ?<��������9a��
�7yL�\{�D԰t�U��G;&�|�+�Ο>y��MQ�y�˥�c�c��v���j�]�+iP��ˍ��{��"(�o�wf,,�+4S��}~����-��i�a��d�ܓ���T��j��y|,Y�P�O�tgzf�垲�q�dݡ8��43Xu����V�N��)���m�jO3#Vys���W. ��n��K/b������{�W����)��E�T�4k���h��\)iU�5U�cZƉ����(yڲE�u�M�#�h��J�x��	�+y��Gjx�ڵ�V|01�<�k})���n������p���-[r�\���:��-���aS�7�g3��VAZ�("��i��J1���Xa���F��?��_�ɿ|f:r����s�;����Q��u���
R~��až�Y�(�n)U{kΌ�L�1/I�eq0
��z��(rh{�Nq�d���Ã���֓���VS�s����)NPړ������t��F!"��Z4��7�Zp�U�"�����B�骳�FaW�y����� D�R����V/�4�~g��g7��+俧�!�4
o͢,������>e�1i1�Ԣ��&�qp���lFS��-����B���|(�΋r�3�q���*h4:��/]�1ֺ���G�X_�� ��VOO�i��H�0姨H�����ff�
�����a���V0�[�AIv����P��\x�a WA,��q��j�cϖHG��&��#*p�97��|[<�y�#��s�V��1�����ȗ��1?�'�
-G]��Y�H'7��0�)�q�'��Y��g�4���2�h�N�Jg���_Ȁi
lX(I��8ӕ�u�����A�.��F� /�^���A.�r+���YQ��:N�0��K���a�5�Hy��}�Ԃl�J!|_������@�������ɰ�����AJ=�4�ː��+N��ņ��=c�`�Eѷ�;	��+[^�G�!A��fe�q�	��v׮a��?���.����F����=�	����#�3�[��œ�_��Ȫ>m[�Gz���$b�Q�:�4z��ƿt����5uk5��R���Gl13�m�0�:����RV�5 �a���[��OG7ޕk�V�F�f1Ȁ:w�������Lí|��4~��7��1�N�7��kH��k;�,6廡�zU����*⋈0�=��ԕ�2��ֿ�9I4>�L+�)��(���O+(�����9g�$!�F�ы�e
� ����)��h���# t�V�Jr��q[�����Sx'��p�L�*�=�-��G�pzpT�mY}x������g���h�Ɇ���o�ܐ�'�؃n��b��k�$��Z�Mخ��0�w���� w�yP����N?h"����t_;{�ԫw���pl�?����r~�0jވ�bÛ��}�	� �tE�h����%�ώNn׵ ��pH���i���-=��;WF��pe����z�u�Ss�y�<lh� �|�5<~U��k�=�5M�|8诞ߘk�5&��&�F�T\1r�X�h��j3���
��e�|�FZ	�NWt2�C�i\�H��_�?>XN>��/��ۈ�V������1�Sݳoʊ����C�p��{�[){��FN�����m�l���������{��UU@}�̦�Е��,.�^Ԍu�V"Yi��O��;)�/����zh��<4yF~tW�"Z4�dHۊ:��'4o��m�,j��<�����($`�(ڠ�Z%~��A�8�s��C�7�����s��J.Ri7J%�$)N����y�-���	�=W�z���,m���gppr��$Ϛ���a�',��%���0a�J�ɢ������W�X��u�*3�3�Tٹ����"֒��2W�a/��yκg�/*K풤��ч|� ��EP��(��s�P��8����� ��!��v�X�/�P�>׿w�E����u���`�U�9�c��{ثVM�I>���Ao�]~�~ڤ��p�%�a+�:���@�P��dg�S��w�u�K�D�&}'Y�/;�1I�)ؘ��V[�)�0z�����|���IT�E�(Y�h^�dW��������"~(ޱ�5�O:)P�R{�R�B
B�/�,Iu�]yŐ�s�&?Y>�=Ѓw0�"�P�np4;�;EԞ�Qm4qC�2?_U"�1�B��/]݁���28�_�u�3 � ?^�i��b�䰱��Hi�G���F��E��=�B�vm^u|ӽ�
�q)�b��V)���g�gP���S�!��X�ȺyD���6q{��!HT�G�b��`�f�$j�z�u]돒PA^��S~�6��Yf���R>�")kJ=�t&-���8�����O�~�X(���k���������hs�j#"���56�|�ܢ����@�l����N�l�G�%k��Iv�6�~��(_b&�3D&9g�N�Gp~>�{����x�e×�/K�$����"N���ӹ����N�܇"�����Z+U�")��՗�H������ݸW��p�Z�t�AY�hM 9��U�!|l���.��X�g-I�"����>p8��!��.��%��Dd����x��v޷ ��v:E2J�~o�`�) �Y�Y��@���gk�
�6�\�p	;�:�@b�}�"O�"��g��4)d$E��%�k��9;L%��
'���*���X��DS�Ee�������_�G��{��M�ZfbE�"w�"&O�y{(ra��փ��C�V;<������u�$���f�k(a���V(l��"د>Ȝ&ɐJ�ݴ�Y.[��	6��'�'%��2����*�"����*9IF�p(�K�Y%�P�,�D>�g�V{̇C��@@��p����|���"��N��ID�m�=K%B⑔&�9"�"ב�áTF<�9*`�Φ_M $Ǽy��p(�kj�BG����L�G4
(��{a��I�����8;��\�b�NTK�#	#�����м1�ɍ�5���5�a��d��2�v��H� �A����@6���1��3{@����r�B���� b�;n�}7�﯌E�f_%���6+�53�z�Gh|��:P���]\�d�F��*;]��e�1$�R�����]�:9`*;��;������?Eu������E�������%��w�<�!�%�a�ȌA� ��qp"ՂQ���
F8#�B0�9h�忨;���43���ڄ�p*P�?D�����W�ɶ�l����՞NJe7�hYҬA�U}� ��b���5��hd^��X���]p�5���5^T�%�`g4
�՟��w��#�XTLk����<&8q4����"{@Q�:3C�1��'��=�S�{G��4җ�'�7����G=�:3�.HF�DW���o?� �_3���O.�r���0�w��h4��*�Р��7+���]�Q[���-jp��>�(�	nܱ�#��1�ǵ�ּ�T736�?0��J{�ワƯ��|c�i�u�	�O�2�׮�?t���CW��嵿;h
k<��jݛ�&�M`>6y�+������o���&{RF@�,�[cX x�i��02��4��;����9a��Q \����*�6����%�E��*�c�Ֆ�f����f"�uvF;��n�y�����    �ܴ�I\�8��q $�l�ZX>PF_X�8�9F��;�S~j�B��;|+�\.�����>+ۓ�7f4g��>���������E��i���i����տ�w	J�;���=0��*�|GL5��qCEAԝ"�xe�Qe�x6�3��ɭQC�8�
�1p��{��)bQU��GL�%�VWfh��e6�X��Z��8���P��Gm�Jn<.��a��|�X(��&���ـ2\��=�Ķ)l˝&1C|�)��b�{����P��F�EǪM�r�v���К���=&MA���K��'�2�~�)�#�x~��zf�ŮAeT&�	����UKD{��X��6��5�F�n]W���w���oc��T}��uu\���t�T�ӛW�[l���H(��b���эw�s�����Z�CmR'����
Һ���e��/��~ȗx)mt�c����1�c�CnĀ�uJ,>,2�v5:�g��b�kn¡�cF�l|��B���u�%�: pT;��-@]3<����i9o�����R�C1I1��	�>Cs�^v*L"�G�@���ɻ�~�XM#�&�����5�Dt�[{�C�7��eY�͝��i~_�8�&t�dv��P|�Z��M"��;��Ub0�:��á�+�m��-�Z�wy�}���"h-����X��g#�3����↽���M�Y�����^!4Ϩqjpԓ�]��YI�')��KW�I��!oxtD.�LO�s6�B��b��F�;��DL�{%�
h336���}/�ۂ4v5L"~���vÃ��y�0_����UL�y�d�I>M��E��і&i��l���;īy��I��#ʬ쮻W����4�2r����o���pq�6ׄ������Op0��-{�]��q�fe��u�e�&��9�1_��>�ٍ8�n�I�z� ͆c�cS�q���ȥ�U����v�����>;*���m��Ԟ�s8����oo�Z�Lm���Ճ'��q��z�ݯ�[����#r ��Ѽw�1=p����>a�=�
3��0cz��bM5<���s)��aQ����[���W$|���i�5�n3��̧�]i�]��N��i��s�|Q2�A��ai�fg��UWU}��_�XL6<T�}��ys�4X���9los���tMg&��$fR&S
b�W�JL.��ܤ��;I���.j'zn��,�ѽ�7�?��~�O�nJو��,�.xp0H�J����p�V�sq�C�D|�#����� ��Q�^g�O"f�n����0�YtN8&�0�|������<�[�l�qW��j[�%4(@�ϐuA�$�k4Y��FZt�,�����T����yX~�s�T3�yxA���I�Y�u^��xw�����
�5���Â��:�fت3ML��iěao�X��ƌHg=���48�[VV�I)'�B�8 ����Mql�.�&�+3ں��~��S�cw��히D!��L�/@Pb�\�)�0�������:*�F�����@���
�������t�U;��"�Z[�¾58�h�i�8ݚPӁ$��9T�x��G���uvE[:�9sJ&����"E���kѿFxK9�W�pӞ
9�1?_��W8^�"J�kst8�o6n���žG�hv�N���f��?���H�D���Dܡ��ru�il��~�M��t@���oMf�1l�|r##�	��G��fPE>{d8�x�G��A7M%��D�f/|j���nn��)\r��0�۫���m��(������-4Y.�8����R��I�4��>�r���Hx�_@����~�%@a����Z�7$��{ `�%�mq�cxd*�;;�b��������Ŭ�vTwgu���_�y�8�'F
5�N�s�v�O�Ob"����_p(6��l��i�1mz���P�%kW�sƅlܥ�N��/�������T�g��#�� z�񳈢� ���䟜y���݀�Y,i���焕�B��YD;E�,�:ywc�h�J��$Dg��p�UJ3�R�!e!w/_�NP�ǉ�gr��Մ��ph�]y)
[f�d��X�TB�.] o�R�|%����(ny�On�k%�q�$�ȓº�gD�^��Z!��i�H���-�٦�/����:#�ݙA�I|��y4�<���H�J}a��8n9�Y5žE=�=�xW�Mm��/yt�,^��䷻p]�pf�$�gA������K��'şzu��I)mԤX3���8�6�e���M�)����d˽�2�@#$Pj���#�%��-}�VA�]En�9�9�FT:���9��ݾ��A��/&�����5���A��-�9�c�����3�2��?ː�(��j������X����%��`��Jp�������`܋o�_�O�S������S�������:�&p.��U��u��������܃N̟Sݳ�e��y6Q��ӖJf�uD�B[���ʞ��Ys�Q�	Nk6�YQr������u���"��Ǭ8m_v'�S)�}�8K�Ѿ6ޓ9RRb��j�$v����obl�t�ǧBҀǦ�����4h��(a<:�h�0@��olG��kp,w��)X�&�6�ƐDg�:oιY�4J�GJ3�3��/JG��`١�8�g>
��;�x���KI��L�S�ޡ�`�2�������w���Ӹ`!��WEcW�J�E�DWΘ�/���u�ød}�R
���|17��т%T��L���}KA�3�E(��Y�'Dw�}�C>=��I����FQ�HeH�Y<GA������YF)�8Q=g���|(�;��2��C��T��Oz��Ғ�mu �5�Еl�յ�:?��\;N��H��+q��!��J���(N�8Z��qD���ձ�������O�fh,�\��w8�]���;�����F�0�v0���L�?QA�LK\ԡ�Vk5ձ@��H0�o��\T�;���.؛̺��T;T�HX�G�(�D� ����i�H:������y~�>8k�0]Cy�J�Q�3^m���*�)e���b�>^��q �l��;�=��YxH�^��D)�4Fc�W2\����I�<E��~�o��q����'qQ��")���M0����ؕ�ۯ��t�����i�*W�q��M���4Nf(g$�L���pk�0wjY��di���d� �Ǚ`�Z�%�����C�c^�R���d'�y>�˜�\	ìZ@|)���g�	TH�QgX�,�1P��FW�
�!S��+�h�������e]�� �0v͉�&z����j�ϫ0�
aii*d�������@ϣn���5��@�Q��L�t:�6+7������b�N��5����ȭKy%u!�����PU�+����6+t1���R*+���;�;�5�u�hA��E�J����n�� �2X�,�d�Y�
�����VW_�8h�W6�&��@m���Q�qFI���m� q�
�1t� ��:�T:�����]�x:S�G�z�6<�B��2� D�[EA�8�d�H��rb9���` .:���yv����$1<*t�q2�}���m�N�e:\_�����ؙ��Q���ց�g�y��>�P[\��9'��)r�v�� o��@���Y��l���~bF��<R0�v���c�l2��n���fL�4��ʯm��?��B�a��sD,�-֊%���7���M��` ;���B�� �ī��T�p��~͐ښ��x\δ��@,�	�~��K� ���$��m~��&2E\�j0h������=b:�O#j!�>�ᴌ�ކ���`��Xm�R]7.�@�2�V��	�=�x�(tqں�% �ķ�GE0����a�D���պ�� 0Cߒ��_�H��y� ��L��0-�z��	��"�'���7<��� #�z��6��H��7)d�Q�8�'96����wBK�h�@��4Hc"��� X��ޢO)�|���-HI�dp*D�k�#�ە����^ޙ_�    ,W�/�U�@�,�Jъ����M'b�� n]e\����L���H�B��_���W��l�)>��}���Y��I6YO�l�� pX���{��ǈ�&#��~2�']`j�3�S��R�W�v��c뇂^ˣ��@o��S��i-�r������I��xnO��>k��V����Z���D'�c��s�[L'�wp{l=R�/k�9H���^x��y�&j��\Q��!d�!$�����+9�45��3��keJ��ң�� ��9ף.ȵ�K��sAE�W!�(#_h�X*8���S(3��;����}�υ5 "�j,qN��̚b�+�
a�Y�=�7x��h�}E1���XL����%?�^56 ������|N�l�g:�:a7E*8���#4c�L���Ϩ�V�/�Zq[�fI{:<\`0R, {5f����Q:14����ae6E}0�fPK68w�9'A����J�Z��ή8F_��Y���ZOP]���I��S�������[�&Q?̗�WQ%���HH�OLϚE>D��U�v��������xV��Vüht�|W�X�ʛ��E������+�������u�	H��~r���!���\}H�<n:��{d�oɇ��MO$�GtQ���N�)#!;�ܖI:2Xk.�o=��PZ�I@�M�_���(��3�(�J�4����8��T�~���q�Cr�Б� ���a[oxi$>��}h)�(a���J�D��Y�*@�S���S�Vhڣ���o�=�H���	`���w7�P�>yT�cW*\�G
��9��N24�q/$p�,��3���¡�*�U�RK��!"Y�29[2�?�G%s���u� #HZ��);�|+W�w�9�J�P�f!"~q�38[H�oP�b%y"�B�מKaR`k�	��J�߳�^�m����{y/)
��6DɽCŃӓ��m�k�����8��V(��	J�s�U��q-G܅�w#�AI@tY��Ce(pXݷā��H\V�����E�3Ou�6�~�P�R��;N:���t�C�וͭ���bKq(��GP��RaL<Y\�#e��i0�cp����b|��jY�Sw��>@ָy��ѭ��CA���8��
�#N���>CS�5)B��sG	�b����W(
���:}p�a����'�s*�qF��g�_֔n�����u��wO�BW��F섕�
��U�9jRDQ�{�`@a�vY��a� �� �����i%��.��� ����T�[ez�lvú���+H|CS|_�)R�I�3����@q�+o����Օ?��J��������HR�(,����CA���j�d�I�6�E�q�6#�(���֡>�^��H`h����'Odlh:�\�����H`5܃p�B�t���tp(-*za�U���޴~lI1׺�H`����R���fS+SQ�=hv�.�OРs�O�Ym��F�uVbCԵ������?l��V�o�ǧ���kCFq�㴥�1� W�x"��ŧ�k���w��Q*�O�������<���w�(|�cuq$:B?#b�#G�d񻢓Z0��/�֯UL|�hE���q��g�`9��u��n)��u2�z6���̧'J�W%0\T䖗�1.��{�>=P�,VMQQ��]3Y~s�)EA�()7m�Ihih�g�Ȝ^:�Q���O��*"�G�͢��7z��� ��?_�iO���5���b(�(�8+���n������}[�v©�q�La��`xt���,�Yx���a���W���:E2Wd�J�#9}mOo%(�鳳�R������Llm��7a�n����78qh�y�x8b]=��sT��Q,�>W� 0ݱ�����<jqL��Ei͕�=��|�0Jv��1��[
e4�]c�u���=�QA�]�!�ayȈx-�9=:n�5�i��=�����`M)	�,g$��׺������Z����;9�GXkrI�/���R��ɿ��@q�A���$K���n�%B~Y�'�o�� -���;���q{j/����2?��>A�i��-��b�z���Q�L�Rt���쩣��5�^W�'��TuD���F�zUG0
�4n&�?�5� �$+�uB�i�T|��L�n��BFSYQ�t8�q�5�2��jS�Hc��i'"h����T�v�2FӸ6�Z�žf'�T�:��7U�ua{<`�I�� �O��מ�i\���FW���(�ݚ���-���ǜΡ���AFQ�חb]x�r*�Q뾈G�ݕ�
� q�t����Y���-��`�FS�����s�D�ݘ��I%��D)��q���ށN(���pQ� ��C���i\�]�T|��,��*=�Ϸ�Q�4��~Y#+ͪLӸ.K���* qE֛iFDi毌ߩ^H\�m�����#D=j�#��LǮF	D��P���u8�����xQ}F�y��U��I	�p�� H�.�]-U�1��#A�:Muvp�O׮��8�z�ה}���jA k�	PV;Ԛzت�$��-*q\4n��Т!���1�ɴR�PA���	�!���{7Q̈1�fq��x�uqJD��Y���.b��̹F_n;K�g��(�$pԏ��3���ͪ(��OvB���[.݌���;8�����mi� �$p<�Af�]Fut�h.�k��i.`RIO�-ן5�c�jK%�*CFsI�^�֤���qfs__.d�:)=���vA5<�5B}�4+84�W{�4��ٚ蔀����ξ����􆣦���P�$��ʶ��y[ץ�v��C�o���_��}��CV���}���뻐}ݟ�u._'�S�����>7Af��W���H���@W=��Ʈr(%��o�#+>�*u��'Zj#������{%���tp\�����<����a.�V������r�W	h�ѣ7�mQ���&:��=�5Ǫ�n�ǽV�l�L��t1Q(�t����n\�&�8E8ڗ�^!OYˎ#��-������7���,�n�ٴG������Y?VXy��Լ;[�o�;�NOYE:oo�@?�ܣ�y��j�OM�I�uuI�y�[A�ߊl厂������M���Y�$Qܡ���;����r�pQ�s x/��X�;S˙���(ŕ�Ҡk}+Lq�\mŦ����7����^��!*����'�d�񒼪���� t��'���n3zmE��1��R���.���_ ���*�h��*�^�q����ٽ��{���� }z�������O��L$��R�e��.�w�W?�=gq���:������X#ɸ��G�,\���DuC�v��\��*P��#��k�>觖j�	e:�i�-�=m�Lz'��7�O�ɽ�&੠��pT���^���*7���z���y�A2���u�[���ӥH����E?��|h9���c��j��������|��S^���on�L����ˏá��n^\)�<�N���O�B�R��׎���:me?�����O�/>l�jC1K��m�P ��F|�}Fz�&LX���﷭mޞ��;���-��g���~����u��*�����>������oN�Nng���]�����7�P|������i?O��܅0}�U1�3��cFrA��^[]�� ����3q�k�xz�]	�fOO��ⓗ�
����Kk��^�-��2;D��JP6S0��5�~�\�w�R�"�G�ù�����~H��p����`t��kߥ\&������^z�z��㋗�ŵ�PV���{1��5�QdC(����̟�~�MҪ�I���,S^�礁(�̎�vm?��M��ߣAt/)��3���xY�e]i�Pm�^�jќ���?H{��v�ŉ:�B������"m�s-�xj��@ړ�gN��=�}�!����ظE�%�D*����\h�����H����ӑ����Z��T�!j�O�a.���Yړ�o�JCշ)
7��P�6��X�1����ծe:�Q7��R$4�­v̩;��((,���݋����S0��ڽ���������R�����&sZr��Z�;���i�/�Tr/x]    B�d?O���w5�g0����l�%�DQS�ߥ��`�c����!Ɩf�����ź9���9}���>�m�b�ݓ�3>yt7�٪�ǚd����i϶�dƳ;@��%5�\����*�ʧ׾�lq�|�X�q^]��_���T	��ܰ����T������۬,��w2F�qsA�J�jv{N�y������n�S��?�L��c>�DQ0��_@�vn�i?^co�!����n�7wr<��h��=1���ZP�p6��O�G�������~K��ӆ��o�`���s�Fc�O��7�ת���� 9O?�3�a����U^��V��S�
�q7/�/�G�`�'�=���S�yz/rB�~�4�O��-���3��V������/m��Y��6#�7�g���L��%Ȩ	��_�"g̳�v�^�y�6&�ｈ���g5|�K/R̚5���1�`֏�=R�M���>	O%��Oy�f�΄�@���R/���c��V�J�GYT�x姢&$JF� ������=A��Q�)�!�558���栻I���*������R䀖[�+���aݺh�;��q���Ȁ �M���ʀ�8�J�u#)N�E;g��D��K�v�J)���I���&��;�e��}�Ce9�� E�HqG�<_`�������ԙ`$k���J�h�B!�F��(�Џ�r�lY���#��_���H���}F-k�H��="����d$�vG&��G���J�>H0k�.摺#ƿ��}�L�0����)+����@��BC*Y����HjC�F��K,X��\ױcM�zFA�&�J*Y���s%X�e��M����h'��ˎe�L��򛆊2�
���@���5U��r@�^[)�`�ZJ��י!�Z���Xh���Wx(ck���R�G��p1��PB����' ށ̸��J�@0q{��EbŶNns%D�D�`o$�J�W�p�P@�m� �"��X�`
�����dӟ�`Q�䎎R%~�%���I�JL��@.i�I#Y�� �KF"�4�cq6�t$�Awb�n����`tFW��wᵅ���?�-�'%�\��H��p��^X#	�G`WA�	j�`����-�$;E�;�w���>E���Iv�}��E*�Ѐ@��Q}F��K���Qy�!؅��P�I"G~?����������wH��܈�Q*���\��p�Q*���q.&�z	�ׇ<qPS�?V@E���Cnj),Rj�	�b�%�9�Ēg��%"��sf�0&�F�4JHuw�P���L!3 $��7�}��Yg�I�Ÿ��>�!ģ�G���c	��h���� 	�S�=��$f"N�wz�S�L烺�BRI�J	�0�ƻx0����il��H�a�"�%���O�f�EaQ��y*��5
���x3���?7(��?�G�L�/	��6D��a��[�+⓷T�{��ߒ�K];�^A��n�>��gt����G�'��_J�cO����GLn܅�Usf������QH�
���0�>��#	kC�ƶ
;��(>��{����C�ǩ�^)!f˟�Ɖ��/�����?s�&�zi|G�캞R?�Hi�G�K�Iq��Ps_݆0\""u4� �%1��3��*�M�����d Q�!�uW����8� �ݸ2�4N7x΁ds'+J�X��h�$ B��s�D��݊�oK��g���Ao�!�1>�������@ʤ
��	�(��f�ʲ��Q�[��fuӔ�4-�?�蔈�iʅ����@�P_�>/��ǥ8yL
!�����������*FEI�);CM=����TɃ��f� �5e^Q;��ZƇo��Q����(kC�S�P��pgn�[�f&�u8�����?�0���cQ�̶s~:�9�]�?�{��V-�^�8��@|�`�ʽ��.�������
T��^�4���*�;�$z1����H��lT�S���� ��~��5&���/v����,�(��YYRb5k���� Q�J�T���+�:�ӏZ|߯������#O�GG��Fw�$ʖ��=�F�yQ�t���(ΐ��f����\XL/�s���Ɉ�^�X<o[
,�j�rr8%؃�!\2b�bj�i��1�Qd����_���7�X�b�#o�O߀t+�~�
�)�����C������U���8��rN.��=��>�S�Ĉ����Rڃ��_��I���E?�#:���h�� %�/�i�(Q��"��T9����z.
؃�taoߤ39�S��l�{����P��4Ŧ��s������������.����]qd:�����~�9��5��.�p,g؏2;B�w���R�'��̽�d7�pr�]	� 6�0�!qu�����*��]�L��=ș{���Y/ϨIpc$e������-������{��-x�w�G
f0��I�p<�����n��8��#=w��.FD�}m	���x�8�S�e��?��7�
8G�s���M�xr���붸q���Q��{tqJ5\��&w��RQ����:B���$�Z��=�'�9{�L9.	�}}�59������>v;��I!����:zƓ�y��!�cۘ��O�%�EZ��}�Qh:��t)��D���:���L~��[N�O&O���
#r��0gݤ�'�4V� u�睝6�~Vt\X?�$n"S\>:�4f�DG�iQ�a��2aZ���G
ե�
��[!�O�=�'_�5�I���i��f��},e����2���$�ⴿuǜ���\CM�8�z(&�����C�U+�M�h���Ou���{�Y=X�{�.'/i��S1��k�KEa�7��E/������7�@������uEC�)�d]: q�Ձ�P��3�Ɗ-$���]��P=J^�>,�{�>��s�}6<��*Z�<���/�c�ל�8DޫL���a!��f�XV��U��Vk>�>>���d�g}�N��]�r�����օ�@��!�\u\���|ǒ���`Nd{@�s1���T�G7�'w~��+�ּ�XU#�ɾ����xN��	�q$U�4FA|����L?/0m���0�*n�M`�GN�}��/!6-�����s���e�[�;BQ��d%��o�'�@�y�-C��#�B&�%���%X]�=7#���~��GH����w>y!w��pf���q�b�5Yhq��+a@�U1��"�e������F��>����+�UW7b�f��+�d�f4�m���1*�u��v<��`��d�Ji��e�2۴\�g��;�J�|(�>�3J���`����K���(�M.��u��p�[8���2w���ζ,��Q�b�wf)�bF��Fi���e`�?G�Q�\��)�	n�1ƒS��F� ������� ���A�t�x]� B.�(o������ʠ��`L�(1)�;~6��Z���8�&Xg^W����$s��F��.��~:k��G~%��4"����f��z��f��$<<BO� iT���
����n��MG7�k�e�?���g�����V��nH'���kN,����Qọ#�c�|����JØ^�sB��#�X욬3��ȚQ������ƻ�{�;G�<<�����{e�$��ٛ�"U���..(�Ys�aL�ݩe�+��Q5"�<�2�	��]���`��_e{6>��0�tS�Q&�aL8vFø��qgi��cb1��.O=��f� !����@L�-�.�c��e<�����\AOBEV�sE f\u��FØ����]
F��
���"(R�G�a�%Xq5����w��F#�X(�E5��G�b�Xip0�I�)h�sh���hL'W޵�+M����4�8̲�s�����mm͝�X��d�`h4���.�5�F�!��"Y�υ>�Mbf��8�P�@l��D}���uK�k�S:ܜ�F���Q�}4��և-�-8醣�OM����\X1�]��Ex��&~�p:f~^�٩19��xR���H��5Bp� Th�k��Nb��f�{lc�t��2�O��B:�4���7�k    1�GQ�=���d#�^[��]*���5L_��F:ϻ��a�xi�h�����b�e}����<E ��\L��,�Tt����9E��N��1ek{�~�i� EH�|ӨG���ޔM��;4�;t*�i^���w��pN�7�4&�VP\5�Lcr�챎�sJ����m�u�\�����n�CM��'�ޕ��t4�����֋&�����C��$Mc
�Ge�"�҇DVE8rvD�a�ϫ���\�����_�@������~j���h�[�k}�߅�ׯ����S��p}�i6R���:!��?�c
����϶E�B��
�t��^��6�T
��S��j����FL$�t��s{��t�2>�(�PR%+�W��W��P{�X�t��\�T6��|2a��W9
sɟJ�3��1 |�(��k��
�p��u�w��[��5��HM����%w��{�oyM�$~#�2�怒�E]%������]�U��=��g���u����>����$J�.�r0�z�����,4�z�����>��񻰓�3T��d��4>�����$H������q�zw
��Eap��\	���}�5E�BX��0��b��ワ&��u��X����⠅z��mD<l, ���>W�ޒoeqn�ǣ��d����
m���%�x.]����n2������ �3I�^��++_{����s�5��ͱ��)��!z�9��np�9!��kQ�G�m�4���q5~>&] ����N�ćm���iQm|�Ơ���3���F�L��.ծf�4��� y@�;���h�MvT�_���s�B��-����5����ZC�Ե��tF��9���<�B�caS���J@�"�6y_g�Z Uҝ*x91������
"�N�a�)�׊�b�X��6s.�[�\�#�%�B7^�� ��"���|{<����X_�x�i�-6�jo�S��R�4�9o>S�(�_j0ZcY��und�h�拢�&r&6�b�u^��h��U6��o��|���b��D�_�Nw�����\T�� ),M��xa�\�2v]�Y���a�Љ���s(����f�a���Ub���*��f�K&P��U���s<�*��=���^
��녌��(���Em8N\bʸ�n\�eFٰ�ΫDX���th�ˠ],i�I"8�})1N��lK��4��W6o}<3`*���0́��R�
otpa��ߚ#v��0�},� ���	�x� ��?"�`/30b:���1�u�?��
���Ʀσ�v�?o��>�f{ܣ
�yTp�W���ڄ��Ӱ���˚'1�[�f�&��I{���6��p����[|��S^r���,��6��7�)��X�R�F�������5�#Kt���y�&�j���������%��@r�=h��w����w�����Ͷ9R�o
'��o5A���y��I��e#u�6Z��T��p<o�VZ2�d+x���>��� ��s!�j��:EH')uk�Ā7��F�]�mZ%X����~����Ϩ�K&�曣�1t���Dg��/�e�\��NRnBeQu��@�OPݒ%�8�6=���&0��dO%\�EGP�ē�<)���#�'a�B�V(Sl�	j���6�%أb1�iF��B NkMӶ	,T!��9�&���̨�TVj���\���b����L;�e���Ǐ6�Q��/]��EP���'yc�J�[n�A1��J4���t��R$��y(ܔ+�L��eL��/���� w�UH^�	� �����.�����
ƭn.�-�Q��ll��z�?�M]�����{�d��@�S|Ԫ�������!A��Fn*�iyw��]*E���P�[j `���ppk��oЭTL�����?+�W�!��y�'�B����.�-%d3\2�բ'�*5I56K��"���l��	Ÿ'��b#K�7C!�s��k�����m�S�i���*��Y��EI>�=Q�����3�9���P�8V�f�C!�|@�-�H;�2��%���d0�*~Y��s$���*��BK%TG�n܅� H9A�q����| n�F�%��i��R�J�� \��ٯGW�DA���6���H����x�'��� 8����A������>XH�8���/���1S-^(oRw�b���oK+uڬ��jam�>N���
��>��V�ԁ��d��P� ��3s�n��N��& �>��6���c�T���b"$�;:2q���%˚qj�p����p������H}�2�+Gj!��Ө)��PbG�뿦PRaeP�g4n���/��T��1�qZHv����&�8�(e��-�T*�k�3NHu�����pB�{�OMQz՝THrwTw%{����R�)�z~�)��]z�Ք�D��T��_ʷ�/��T,$�@RU�7���1?_���gf�D�reΤ�4ר6y��SugS�п�$�[���i�����ƿ�,�چ/̈́|���_��/)$��tR��Q3)�@5ASzgk̅�瓒��}T��f��W��'yL;�E�;�LR��}e�"&ԕ��w�,r�q6Z�t|ީԱ�]�櫤�:�'��W�T��g�7�z��EnK@�O*��/Ν���T�HV��ͩ�3O5H���}�(��j�LR�s~����x�$��Z�y��q4�B�W��uO�xVC���3A��Fg���.��l�m���Z�IG��ׅ+^g�*��a�?�x���cA~H���~J��0���ZJ��k�x��p��g�u�Ȇ�݉g�E��ZV7�� ��PG;���q8���b���]�<t~c����9.��x�%E�mj�=�[��ӕ�����Ƥ7�W��v���T�H�D��)��ҫ��I��g������^_��[�!�_��q�{*��z��Z��j��$>Qkh��ap�j!�	��A&�^ǿr�al4׎��vol�I��{R��G�u�&Q��ɽ�>���k�D�{1�r��$%����� ���6�q�6O�9Nޣ�2�����įt���ɫ�્>b��0�i��/�@M'T�zY�t����7es3e�WU��E=�.Q���6m	���Wޘ~z�
���o���[�?S�:������o#���I����5"VL�%5<8�K� �<���.��z�8r�q��k��0�f�Ճ^L��5�$6��
��'�}���}&��QzXY�"r��5V�x$�6ԌOÊ,�%NeǺ���z]�t��W�'�H�E�;̂�m���QѮ��Wb�c7M#Y~���T���#�i�]�#
��p���O�I�^��d�y��;*���(�%�F��U��4l��]�s�]4�h���t%L�	kX�^j�$���
Ԃ�ڇ3�S��;sEg��a�����MO����U���[�w���GE(�}_����s��(,!�%%̩i��J��Xu��߆U����{;��#�g��{��Gj�Ɲ5����@��*�e5�)�6����4��;Y,�|!R����mEχ�֍!��XNF|+��`�A	�ц�3ܦ7�t���T���R��9���?�C��In� �I0ž��)lv����drg��K��V� ���yc��S'��Wju:�Ɂ���ұ�Ӂ�����/�e �M_�EE��N2��D��N'L2��$��1L���f�,�t ��;�붫=���4'}Kw�U)V�\�)2��WǓ	�2�����N�d��"���sϮ�"�A(��L���P�=�iB�Iy�v:"zb���(�R����2�S����$���n�|����nQ�D�%E�h��2�5Y�#S�P^���T����� �F"P_�~`Ȼ�§"�Yq���eQe>F�y���`�)��E�
%Z�OS�*���A;E����4Yc����$8��m/��t6�$��B#����=�,�J�p��K�C�<����Te���	� ��Q��{�L�޶U�2&�C�(��լ3���"Z{�&c,S��DЩ���2M��n�    ���Bu ��n��4�M�#���Q�J�,,�Ie3�n���$uI �fn:��U~Y�~,�t([�hp��� ���>���tC�6�,Ԋ�>L49�o�!p�;២�(��}��ӞUj�H�}_,v&pU�қεW'��i�A�
&�4*0�}�p۶j���a2��Eb��3�`2����:���<�a��2�g��캉찇r�'c"��Lv8�m���ߠb�Z/�k�u8�����j/���5V)���,��a#�^��ɶ�l����T�[�2�+�`�������(�#�*NE}(C�>����t-P��A/d�67�A���upLH����fS`��A늚��#�� �����""�W*�Y�G�(���X�k�FiJ�*��оS�����\~�}�#�F�[�uN���?�z���lX�Hf�)rڷ�a=���G����#���1�i�sJ��'�T���5-�>�R��R���d���<��Et�(m�cQ�}�n��«5z��y�Ln����������.���g�Id�6���J�
$�)����c�2���Xz�s`�s��l.<���*�J�pKJ*O&N������i"�@%��0�z���ɞt�C$/�}�q��{���4 �bT�)��ba<��ZI^'�z��Lo�c��Y�eL*��h�B(�������J�
�+�~�����=�
Zө����pP<t�q|�+"SZ���hf���5�2������G(��Q~٩�l���0��>�U ��e*s墍��T'�|�_~��N�@> ���˺89�������K�0	,��ik�p�%���Ŗ)�K]��}��F�/7��N��'sZ����cS��������~�j�����@6��d���]༳��L4v�Nf��e��A�
���w�u����}�H�V�e4�����S���?��J�����(P跡�K\���,���e����B(ȟk�*����~�}�uG�"�{��U|q�1���:�,�1�[�n�$�(�آ2(d���!ƨ���d����}����Y�5\����2L��Et#���D�o��s�Ld��*�1��
%� x{���c:��"ߑf-��D$�)��)s�*�9�}6�w*�Yo*�xD8X�"4��PB���|>p\;em&�I�����d:�ur�p���g?k�)~*3�y���5�	nO����:C9���7��k��!R4����m^=������^�z�|hO�@|y��9	��R��.�����T���~X#�{´��"��Ù�3��ǡ�M���?��2�0q@kP�`J�G54�R�����C�ȌEP�=&�!��^xUX�E���ƛz�6�Cc��{��F�(yy�6�Y�\ޔ;Z+�순d�a{2K�/�6��^���S�J����Iz�0pxs�s��x&3T���\� Sw����b��	Aۂ��3����"����F
3]N�V�Lvީ��$��R^��|ߘ�
5���_�m���3��+ͺ��(��ΙPo/���q�2�㩀�Y�F��5Ӊ,�	q��ͥL�D9��@d��:P�]y�Ŀ\�$�����A�g�G�?_��8����Ϲ@���s�
ٲ��Ҏ��|�����z�2��;���Dٹ*
��u.SQ��u��9U��T��K�2`.��FXbV�z��eڡ)|����L=D�yY�]��
e�"t���e���7�R?�%;�j.�tPC�A��1�����-�ן�����n2eR����qp�@�h�{2� �G�8�YhbQꦨ��>�&�'�˚�������^�ǜ��0��>5��hH\�C����=�	�>OOǺ�k��dj��U)<��1R*�>��4��WaN�� ^㱗b�Y�X��\�.�,�����(��\G]�~&LwT�-���rP�y��t�x�,��/0 �Z3a�=�ʸW<����%���-�X8�=5l&ͽ�Uv�ey�ۜ���^��g��/�-��p�΂���U��5M/*̈́�z(����3a�ޭ�%�)���	3��Ҙ�~<C��_�U�(�=����0IO�Ub&L�[�'�	�0��T�梧C��x�Ft� �I��0f�W�MZ�؍'��X(����<C���U�o���\,�,&��W%��.پ.�+
�/����dK��	s�p��	W��D��źEer]��e�� �K�O�:� �TfP��L��2����6�`�Y*������Vđ"T�g�������g1�\��:.���,D�;�����׊�s�~O�e.]J'D	`���޲�:u)�N'[�R�O��Sf�$s�#�^P�0n<��&L����|����UN�7������u2I'7��|���%=�ӆ���L>4�L�J<_
��XY��_O����'~�N	�Y��=��&�}��c<(3a.��g���=dԼ�=�3a:�&.(��O�fC�x#'��>P(aY��]+��4kʂ:��$��L!��N1����yфyJ��d���'p6�j�0Y��nۆ5��L�eU]��|J}��ue���W[�)��,F�L�$i=/��D�[~��
(��դA<<��2��i��V���D�R�[��� ��&�Jk
"��),_����}�F����?R`a�)'��wa�
��f�D&%�:��<IVZC���%���i���^}m�k������вh���	O��v�',��bm�a���ͦ02;��,>�.�6�'��>(����R�@"��)<���(S� ���G�P��ʾ]��w��B�9~�}��WD��@+�P*c�mmޱ�	kqiʼ�?Ά��R�)�T}�R%͑���\)#� ��������P�+Z=���tjlk5�>��/���3���i:\q&M�Q��-�����^-�N�^߼���MMS�˄f����H���28!G��T/��Z;)�}xW^�I2�J�|:F��c��=��Wo�J0��40F]>R*���΄������x(N�~s*��U�{0�o}9ֻz�-R�WX��m��F)Ji�y���2�}Q���X���y|���Y����SQ
D���|i��
��q�&��ܦ ��ά8ׂ��ep푗�&�8�i��#)%���P�zߑ�	aZ}���6r�`U����׵ ��Wb>�M�r�[]b.�Ѹ���!d_E��:g��2Q�i�ˌ��DF��~���$�S!J)����2��`B���V*�4E�Ӌ�TADmRx0�D�D��b�/�Z���nT ��j�e?��Ն;��ѥTr�8�����q�F1lv{2ZFV�2Mh.$�)JaAIA���tܱ6_'")�Z#E�)֛���h(п�Dˎ�[�+�Y�~7�"J���J�ML%_��z��kK "��
�t� &"��w�X��׉�v��/� �ٿS�߶hǁ��9��+��Y%�-$��A����v���NE���L-��|OE�_us����;]dDR��ڲĹ�u+��˯Nc������K�OU8훞��l�� ͸Z�Zm�T:�rF�6�jW�HҐ�h�P�gfιë��j2;3���+��̄�NӇ�B̄f2}�(M��U��Wɨ�V�-UEBi��+�h�W5���曋x��?e.�E�&�8�\&c��j
�̅�6*}�PVV�u���Dؗ&�
7�s�Z3�l4����[�wj�h�������T�<�Y)����y*�NVT0��bo(e�S�#�ȔI�5��u�ɂ2��9��_^~UiƑ�/�R�����"L�C�R#��N$��?�k�wC�ru��'��!�����lݠ�e֒ʖm��V=�w��T�GzCd.�K�Q~��f��Ⱦ��~_�[�,<�6|>;z�xƋ˯�?Q��>֘�es�9��z9�Dt�T1����������&�l���k,���j�i��9�q�w%�D6It����������d�qV��=��̌[l���w:M�n�2�d��⬈�sp!��+�@Ԝ�߯���Xs�?xW^�(���U�2N�|]T����'�    &*!Sl{�d�,+���n��9�^\�`O�ے+��(9rx>���/��yOa��3�+���u��6�2L��OT���dN1����0�J}��,������7�"��
%S��Z��3k��~Zo�1k��֙L�yO'lt�Ä�4�O�ifR�&��Hh�"r�x��2B��@���e.�V���E� ����ø����ċ��"ü�x����t'p�WW^{��@�w��?n�]�ϓ����P�4�����R���ڙ�@;
����������?}Jю�]Io�+Wn��p1|�Grg0�b�44��zd5C��F~@�ɊC]�����ܲ3�gkꆃAx�V��	����G4�#��/�F���ˊc'�������>��ͽǑ}�BZz��v	�|�c,�gwO��7भ�g�+^K�}`�DLYb�J(Uf��^'r5y�����0ۡ-�Mp$ &��%�ֆ�,�,�m�VVi��'�]�q���u�p����V� �a'�sv��H}����T{�t��3�7ٚWkdS+��������
�����*�#فP,�Rb۵����gt�^�~B�V��&�ZUi��1V𖏘��w�P��
:Zh��(~]��s�fo��v������w?||�K� f�>�ze �}٧VED8S�¶s�jvhK����&�ޑq"���W{���^C<ڎ,�|-N�2���;jK]���Ѩ�2�#6M뿭 �>+})+�Ec�n�i��b��8��-.����J�������Y)�H&����z�d��=\�?	����$��Hd��f�ə�p^���l���L��D"��JL$�fAu9�Ӱ�zKm���y�Ã����X���}U�<f�1�1�e�����o�:���S<+��Y+^Q���a�bMKɣV��g�]�.��l��ӨEX�&챮%��;#�$
y��־LpmmFyr�����>%�U�	�������˲�Z_RL����� 7z��KF�Y1y�_��>;u���������I�uo��Yu��yu��8�ps�)�����I|��i�V�ST�b̿��i;%��\Kn�����v����Ċ�5�OQ�Ļr��(�t������üI��z8*��ձ�+p�F��Qv�wa��>�Q<vp�.\��;Z���,� �7Ɋ5�LȲƁ4{�1G/�ʵO��75V�ÞҘ�#>�G߄��)�WT�e���s}܊��]v�V?�����m���fl����|jeF1�G�Y���m(f��j󡿦�������H'7��U���zoT�j��ì��3Oڣ�|�1��|�,�8�7�6��Ax��z�1���SS�Ho��<g� ��Ië�UQ	+�i^�ۼ�g�ch��F97@X�@'���ޥ��0�Py^�0�,Q�MG�N�Gan$��(>FI�{�=f	���#��ZI0Z���SWYB�ۗcG#j�� $c�m�s���L��HT��eF��&`C��Q�w�L?���Ƅ���� S� ���y�� ����rDe��XÂ�)Q.ٹ�g��(H�������08H�ˌ��N! a&�jvO+�pz��<:Ƌ���C\��LIP�>�f?�r�z���:}W�ʍۆ��"��,�7cd�����.�y�����P��I���#�?E
��}q�>
���~�Հ1���뺎�$�2v[�,��/^4ϵ�P���p=�.�.6�2c�}PNF��XY&���m�+*Gl댦ӌ�Td���F
��:���qX�����r��.x�y
DL��̅=@x	I\��
ۤ���wM�M���F4����~חY���Y	ǿcŒ��Fu��	a�n,2#s�O���ъ�h	y�X�$�����6�x�=��%�	���Oplg�
(*߄/$t0&L�+hUs� �5��G;k���=�jf��?P/�?�%wф�kN��{�y�h�}ƀ��K�9
Zq<SkF��7�n�7���5�H��b�vb.!����-�
����쳶���L�IHSv;���B�t���ﾽ�"��� �T���d$�D��2��2z,ԯ�Oh��	��ɚ��~��*X��JU���!A���h*_C��\�Ε�"A�0�`�E&ұ��۸�Ť|�m����Qz��4a�C���0<�	�ͅJo���W���/���	���,;n}���H@�Fo	��JB���ݥD����Z��-o�@ؑ������M��r�gwB%	��oO>�U#^T�}=3�(=R�jXR����7�^���ƛ�f�	bI�'Xf6�N`KR|F��x���	�aI�rg[?�d�&��>�׾��z֏���1tHt?0�����_A�F�S��z�T��eU΁
���k�#��	99�����o�Uc����P�	�,Ppf��b�㦮˰=����K%��b7}C״�%��e�1�H�7خ��H�7d?b���P�&Ut�:��P�%owk;0$
��$���pǓ't�/���P�
d��|n	@�X�e��m�Xe*�y��d��(D��&p��h����"���Y�v�k�5��F]��+�ç���M��X�'�)0�^�-��h���C��E��s��!In[�y~3V�E��#*�f�kP���9�fp���N7�-�! �����H��z��1�rX��h BHc�]?wo��>o�p��42	����<�iD��:Ǔ7�(��u���FD��m��A��B�_H����*��F⠳���d�9(��TiD�/Ⱦ�#��ݮ��?�촏��.����gj��zahpS�����J�V�,X<�{�xŦz���^�F�Nƚ}�XЮ�v��X��>f��.7�5�-�b��؀8h���f�Q]JW���h$[�i�kvj+D}+@�����%�<�%����L5ۖ��+(`�ܳ�.����R��z=����B&܏��`�L5�jFaO堗�w�	����%�mMi)D#���X<
'~a��!0TN�W�(� �=r>M�r�
w�	
��������o��R�6bN��o��飑��E�_�"R�P�	����iH��[g�$V�;�]��!�R.Ó3��4���8g�d��0���{*��Z׮..(W��4�t>Sr~s�GcSl�_�S��'��{� ���|���X�9?.�K���5T!�l�R��W����HR6go2���ٟ�]g����b+Q�.���$*�~9۶���&r�hM���V�"#�(	�u�̟=A�D,��n�?��"ӕl�+�)<\\�%jP��&?�ҋ[s�рG�0�'b��ʏ@��ֻ�����C��1��C�M����N�)��]������W�%8�3���(�g�<��0X��G1����>�y,�w���V���|�`����nvv�h̑(��Aq0P2�r��Zȡ}�^e�,��o�J!bͷ[~�7L�Y|��5VIV8:�lA�`ш@U�7G�`Ѽµ4�1�ˬ�'_e+3yEC^i��Dܷ쾑���+/�C�o|ͥ��P=ۋ4I�w�FgSw3�˒ekT*I�Dd��&R�>�?^P'��?��E������GM�E�}�4��-a��Y��H��Z�2�"a)g�	��7o�.!'Mr��Yw��MEg=
i� N���=�5��%�Q��XVh�cQ�q�q�)��}[������!�-?�� �qct���_IXg+����o��c�X��K���->l7}�eE3����C���g+�I�_۷���FY��f���*
-##Q���>>Ľ���l�S$�	��d��@�����F��&!�F�xЕ�H!��熃Q�^�
)��u����{�:�E�-���/���8t/�۾��;/�6���]���ְQY������tYG;���/<
���2T_��Uoo�/�/��:��{�0����_ؓq��ҵ�e/w�'[������yD�Yİ�-A3
̜��~"�C_]B�:������o���:XX�@�~[w�v����B�Ź^o⪺ �]��yٝ�~�
q�dM�SE�\�Fޟ1    ��%)��%7�yHP�Y�łp�w�^��Аv�j4���1'�s�9k������a��"�!;��:��M��\��!(ػIP
s���t��@�������|���a�^X����_9�S`X����yb���΂{�)�O�uPi�kԿ-�7u�5�Y�f�l4υT����98+���_�uv����.����~�kn?^lܿÉa[iZ�}������ej��ז2���%	Rt����<W��/��?�Q?[]��
]ُK�o�K5��z@�o؆��1#ُ�&��ɡm���G�g�4��w��'t37��xy��/^���-��K�R����n1TՁo<��P��pS����9b��0�'���v2�xү����	 �}���&��3�˲:�Wtp6oOo����?��%����y����Z�#qӿ�>q�������/��Ԓ�i>7�+��]��A�?���=���,�� }|ݹ;�f2�`?��:)���ͤ��{ΐ�v�'�f"(s}Z��d�yB�?%7����$q������(�m��)&���!8��J�u��@S���L�����k֒�f�?���Uy��T0��LX�T����T�Az�i�1·�$���-��lվ�ū���,^�� �p�~W��4�]���]K����jf��c��\\P��s	MUa� �UU1�ȗ0�ƇUM�O��f�]�f<�k��7::��?�K��q&�o���ahB�y�g��(���8���]�/�,#�|.�VN����«��ǚ�\w��R�e2�F�xq��\�����UU!���!E��v�k���+wa�/?_��[hȥ8����KT���\�\f�������z�b^2���*��hF��N8��C���׽�~�*7���ݸ阨n5�C����2p}��PqQ#����D��E[Ư��m(C�\x��>�"6�z7����+힙��[�fU~�IP<`�&�/�$��I��vZ�Lp�ܡ}��p3�ۄ�]@�kK�S��s���$~[F�A�62�^��� +����
��Y6����G��$|��I%���v@���l���ٜ
���֕���`ė�ke�f���G�.ӃͭA{yƗ5���L0�;Xt��}����Pc���7���s]e��0�����H��L0T?Q�"o��	����N�Q9��n[��4,�C�=��	��<���
�.�3v����S�b�f����UF
یꚥjb< �n�޻�V�l�-��$�����(�#1ܙ�~3&���H՛	�o����_�Kf$�c�giZ[�G�?#h6�̛�f�~�屮OJ?kάcɀ�+$��lc�Ygc)��#]@�޴oVÜ	���n��Ȫ�h����̅�R���r�	gH剾��`�|3�n�Yt}
8�<�Eڨ_<���G�%�1
ϸy���#S�|����o�ac/.>av���������[��E�OU���m4MwX�K��)JE�H  �a��n���sVD���Bt������������24�4G�Դ2�4t�kD�e�;�DM1��Ȋ��z���5`�vC�t�Se������y�a��w�r�BP����Kw�nO�;�X���+#�`��~y�f uԵ�M��6���I�Y�[S��C��o�T\<p�HP�)kd�GV�e��1�*#�a�iOwH��'�F,�����Du��HQ���&��#Mh���Yl��f�4��tʛ����Z��,��sai*�<��rh��V��D�2	}sOa��x9+J.�;��E����9
j�_]�@�E8�D!���=~�!�F�;�CAd��׈��p��loj�,M�=�D<�A���\|ǔ�;�L�g��Bn�Ĉ{�K��1����aՖ�$,�GV�ȸ:��a�mq��IOEr��-��m��6��u�µ�#��~��+�}d�'�����瀝}_\D#S �TG .E�s��9)�����(wO�O��fk��O��3�)���%qiA�E).xH�qN�R��e��}V}/�í��2:�Z�#HI:V�w��s�J�+�fEI��P�c�s�����9��u���l�Z{���}�0�o�wǙ�qqB��hNd����7��%T�A:��3�%ͺ��Դ���2�)2�1���S���#.���u`�9�<�(𬌸w4}��pvw���{����.x�u�N:��ͪ�YB��/�U�B���sΑ,}Ω��3��a.I��G�Z�B�s�"zN�En[�HNPa4��6��$27��(���dA����^�Q�~�x4���L���jeȯ%�h����?_�u�Q���X��F�9�`��:n��0�jæ�is�Y�Y��Hh��+�@f�{r3\�dQߝ�`E���;�K��%W��x�9������~�%����7�M�HQ4%��u�?U�U�`�ߪ¨H���a�odY����{�w��Ě뗂��Q:���&qk�@hYK����LA):6�;��C���ຳ��Ez��hqMC[���GY��
#��0������<;(�����ۥWэ�I<f��i���U����r\T�v��.c�|���U�Ū�D���^F�H��:?#�6Y$�f�ܜ��W~�N���g�c�5���u|Е!�h��������.�D��]0p��~�$I�d��s�8�b"�@��	.V��Kt�'����i_��Wu6�D��5��Y���PQ9��T�N��.��3\'�5.�O�ƽ}�ß�q9���?�d2o$O��dh�RH|�'PK���E:��x�q*/��(wIM6�
Y��>��7� �O�kc��?�Qŵ��K"IN��(�HD�����M��)�7��ϧ�%��φ�G0�3�v�����i�wOvJDyj�7	)�B6	$^���ûo/n]���x��b݆���%�h���^��iB7���=���܃-�YG֜Ne2b$�/�:�B�S�X<�.�� eѽ-s3�Mp�
�ҵ,���{��D�k��Nx�f��Q=�{�$��L\H�o��\2:aIn��{�t�2��G��x���њ$�%�=���&,�mb��Mr+>��z�(�g>�o��P�.	�ıvPq)�y1c&�@��t׺��s=L���z�l�}�_7�/~ʑ7�D����%��|&�o��a��"���~�󄏠�Ov�̥����L��)}2�s�n��͇^��	cM7b�6�de8_p:,O�k=_)0Bf�����@D�@�����[��&<��YA���~N�9j�*J��M��aW~g��M��a�?nj�N�L �R��e�N(M�p�+������%���ܩlmp�m�Cf��|��P��;4A�o�0�tw;�����	x�6s�v(O�һLn�th������9�n��%"Gݽt;���-�$����jEy�Y���&��n�ۄ�lŖa[�_��g�7�-5�ps�S	���{;���|<�9W��&|m��T ގD��q&�[.ٸlx�[8�#q����v��F�0�%�Ĕ��M"`���a�od��i�i����p�v����T��r�|���H� �¼7-c�7���l���O��2d|���K�o_8ak�?<R�/���(qxc�8��u|z3�E�4���_OIL�z2k����ۖE��)YQґ���/%	��<g�?B搒�1/Oג�[D_�����
GiB#�VmS���o����}r]Xl��*�5@�h�X�-�(H7WPDS� {຀o�|N�� 3�9JY�
���":,))�T�cql��W��FF$�u��h����e2�i���^sJ�$F��HE���i�yQ�����r|�>��1+^��l�,�<�ҥ;UC��S�8w����}�9�4�e�v�G(�n���z�=T�o�}Q�j�8\()��PqD���3 �}x�m��>�ձ����U3cIm��N��?��ơ�S�}��e����kƻ���+��=e����@�Z���m-���h(�0
,�w�/�wkd��m �3wW|z�/��z�"/��h�VM~�W0Q�Z�t�pT���    fu(P�N��b}�G���>�7j�|x{���r���F��G:o�Y\�-�^s�u�����Rڦ:�bݠ����NT%�����WQ4
����-�O~���S��P� ��_Mw���ke����,��S�v:[�>�V*��O�.>c��䒕�Mt:ܰǊ���"�����t����m#�mD��+6�S���JD����G�`P)�Is�ƨ�h���y ��k�ER�X����cn@��H���h���!����w����̕����OY$2�(�c���!�D�{趋.;;3
��o(�"Ŷ��>z�H4�%�vaC����W������j�gh+XS��C��G����5�)jhF��J�L"�m�r �짾y��^�� ��}ѷ��vkK��-�����Svx�a����p�Q����� �%��7�hֆ�fo?O��>m�u�O�]ץ!�=	�E�
^R*�8�8�c2��S���*k�b���ʛ�ou˒�P�X>�<�VeP�΋��^Hq\���vf;�f�h�7�w��qi3�E�,eRx��Q�b�(����U�r�*Jk�|�#?9�T�-rŊ�+(�T���>C�����Xáȍ�G�[U�T#�����xr=��Ȫ�h�D��)Є�}q�M_�s����)Q�(Eօ�O��e]N���__���2�nQbT�
�@="���|�~�3i'��B��?�� ��_�ӽN5s�n�@2Ō�0\�ɶ���˨=���a��`r��T��J/YCј��~
&�g�**>��Y��t�b��<q�>訖�8�nO�T��?�w�)v�K�)D����'T���{�oH&qu[�eP@��[e�����<�x�&��[f��J\���%G:�}GA��Ъ���)_l#f�ɮ�XZ��������7��=��H%�#��ucw��~�f4@�A�#Qj�QN|�c�_A��y_�y���@�1"T��kJ#���/{��؝1Rӟ��(T��ͣ��Gt�g������P��lFV<�����I7>\*Q}IV���C��jo�ÑNJo�Łъ�l�����NP����>���d�:jL���/i�ҏU�Z���{�P�����%q�i�w��֐(��hII�5�J����+�J* ��{���m������{�p���1�BoG5��,ކN�U�Ir��tg������݇����ј����ekfb���O��ʶ����M�F�D�w�XfHTz9`p�ll�8#��ۡ�Af^cG�p��FC���-�3�5vo���6�T L�Z�;Cc�~��3	�W��+��������g����hXfm~�
|C�U۫#D0M�'Oܮ���x���e_�������S�Pa.����Zd{��
�����!q4�H�0���J�r�F����)K�i�5F�|j�X���N�9\A�x�B~>P��H��#����1��
\��s����>��r�t�U�{'�������)7 �Dc%տ�~�FI�n^�C�V�Ju5��`WC�}�=�О2���w��2�R��D���[�8�����X�%<�^���*댩��૫�J��꺂�ڞ��z�:B�b��꽹�Ǽmq�x�ޤ�{��?*Ą���Jw�I�z��c۔�2��T��½1]1�ͺ8�!�ډ����?Si�]Ӛ�{0g�G�)��Ag.�:�~Ϋl�Z�^2K�>�hZ}����}��项�bck&�՚]ʼ���[V��-�`D=�?�Z����� c$n�h��v�w�P���8����t�]���(�Z�j(~��b��}��+�֛�k��=,<�Z$�Ի��k8�vʹ����/�����w9��?��q�l�݋]���w^�|l��Сv/��;u���� Ĝm�������?�n�e�*\��d��7��]kY�H�����V\6��������h�3B ��v6��9
����1����9�J��(磱���'F��/kw���ϼ2J�cޜ��x���3r��G��k��É7t�7Iol3�z�Z�CC��lFxD9&�2�U��k�/���1V3QÍ�Y|���{�Z#���.o���#>�ա}�Dj�VW�'����cq4��6�{�F������<��n�'��;�ot��,y�.)��=�"g�x��5�e�2�͇�E�}^A����v�W��z�d���N�v����?�z(�
��4ڽ�U�G�;oԛ+{{k�&e��7�ᠰ�:�r4�n0
�J�H�`�GJ�H�`R�D�bȴ[�ɨm���UL����V2�`�Z�9Qo��+{�'j�,+7��O���y'7���S��`�i.���ϕ��Z#����M�çj��v���}��F���;U��Ft."mn��g����:�e����21��9RF�Z^ ���L���E�4�X���/�aϴ����ů�L�U**[�X�L}B�*�O3���W�v-|�N�|O����>Ӯ j���{��x4�.(Ƽu��\����z(���G��2[�{:�F�����/�p\">��.Rf2�T�������чO��&������q	�f��Y��0���F�3��>I�GT"Ǝb�i��Ӧ>���{�39��
�������Q<�k}�	��[�Mu�K��*&h�c���ݷ]����W������u*�̏	B���������WO���FZ6�o���4 1S}l���v�Gh�8B����W��$'9hg�b7KުC�ަw�\�?�V��ѭ�b�� ;!rm?ẇf^�6l.:tXJ	����������;p,ٹ(�X��9������F����o%�35�,�x�~�)Z*7�fՎ2�ݒ��M��s"����ݹ׵}�L_t����y�!��~7����!*&76(����P3����g'Ce��z�q���u�V�4,�5ﵵ��FKp&&S<Q�[�ļ�ѿ����8e�eX9�'���co��7ސX����k��
�%}&��e{գI�9�^AR�v9J�EcYҍJ�2���`���~��?L���9��Fq��-Z/�!��ҏ����Q('(�T$����qA.%e�љV�,1A%�U�u&^Z0�bj
��#��lsi*a��!
n��6����QӐ��Kw��Qk୻/T�%���q���ʙ���_)v��/����l��������b�;,��r���~^E�+6���Iv�IAq�8���s~�wj"�i]�����O��giV�_�U���'��t�.p:��
1�/z�������J�B!�r�+��(�!1�"�hd�����w{�513u��l�`5wk����Ķ�\}��c�������|m1������s��C���s��X�n�q��/ר�^��~�.W��eT�be���7T'����Wv�533���bk�ɳ<4��C`��L�h{���z���b⼨ .�T�IXg��q��N�A,���U$��K���ĆV%ժ@��T�eI���BI�~��lo(��տ':�
�R�mǧU�$���{���>m�q��ɝ���"��>��!��3��ݡ��������I*l��hI��J(�N�QQ��t~��`N��{X�.�s�6��5���L�-���
�WP }%Z�~�j�)粭;�����1{^7�N�~_T�h<�)J�G߽
j�D�ч�����*l�@UJoc�d~�e�*�̧6z�ɇ����@��K4utuO���h��2�Gg��"Я"v3ӈ �>Tz���BCf{�j�{�N����^��J��j8WB ;�U@E��h�hH�,��]���fP��O݊ګ~�$��.��?����
�oH��8W%UY��ϱ�#�U�6w%�}�c�x��J���2j��O�#ͥWX��љ�U7��:f]:�bW�]���a���HbVfj����h�>oJI@q��Ci�+.<bx��O�+���L���f(�$�]ٝm�k�΄��殹��ӆ��y�������_*i�'#��[����,���U=���V������i�[7+�B���٩=���J���Bh�q�	��Lno>��ԉ`���j�,etsh    V�k	�$����������-�T��Sq$� �^�6p� `ꞌ��q"����<l��aO5:�҈�̵ �d<��+J��4�K�9P��z�q�%���%\�ɼ��u�T�R��η�g�!5��0���$#�¡]�yӨ�7�a�%��F
,����͎���Y����/H�f�۟P,�({MP0���rآ�d��4 ��(����l�ՃW�M�y�OE�1;�����3�m��Ux�H��iU��.)DI`N�a��F�-�1"sG�54M�J%��"�UEtO}���Vӑ�5�'���
"�d�۬-&��T9	�o�
ڒX=�G�C�6&���i�������r7��6D)����@վ�vB�x|:�E��V�T���dO�� ��Q�n�5T��S}vC�	aY�2�p����OXK�P��;�u�-5����f���Y�!��pR������Y�5,�k5�
�^��:�T$�ٰ�l��|���?��P�sE��(۴N'Vqg>�_�� ���?�탵����А�uv��8�J�7�\6��L>������`�0ׇ�U	Hr�l=ʞ	��:� -�m�@�3�3JJ�(*9l�~d���A���.���輫���G��U������??�y�SjW��%-.����(�U��]�Z�gj�l� E��L��bz3��1�[ B�N�H�'k��>,�y�_�!�hi��C	̴p|rb((V����$�A�7�D
H7��Y3��p�~r��[�&��2d�XE+��B�馣*k�H����\Ag��tx���V�!$��HE�2=m�Ґ��B�hI�H�6�ͱ2�S�����?��{U�~�7�T��k�2�O֬_x�M���?�����Wq����zkϝ� ���_YcB%�6�NI`mGVg>S�MY�:�O�"4[=;��y-�9M.�KEbXq�v	+:
4yi�?A��QgGӫ1,(%���j�;��D��i��w�4���T�{uth����ì��.�/�#�OQ�'_�`���T����3w�4T���lU�g�^t�Q�a0`��3�� �d�E����_�S#�*R�5?qO���xv�Y����L�ٖe���Mg�HDNL��"BM���axY@�׌�q
��8G�QE�n��q���D�C̓�k��X�ឯ�j<��]*<u��k���-zy���u�}(���m�^�UyM�gO���12d�	4�X�e����OxcW^�j�ƙ4�%�&NN��x�q�'(,�c�*��NQ�|�b�]�3e倍Y��(;��*%�9������1-��G����B)4%��{�Ⱦg�g���֍�=R��(�����5Fr�m�dh(�j{�6�V:�Voȁ��)�4��.g�8xb�cBt$p+���u���H
�� �錽�zJ�k5�y�Z�|�.ȶw�`w��ʂ`f��KGRהA䇯a�m�n;,Q�
�_�bJgh��|�sNM|�����
��,ԋ=�*y�z���F��#�Yu�4ί�"x@i�������Pu7?��n�j�������v�D�SQ<O�d\�Dn�%+H��>Q�f��V�@��N�6+\
�?��:ˮ������Ԏ��u4�3,sֻyo'�C�^7�:���X�p�9��#4����~|	;g ������g��J@�"j76�BGw��Џ	TQzV�!y���;�$u�G?�g���F��K?�]�+1�"[�l<�wz��L� ��*���D�C#�d$��VvȚ7#�s��|��Q{��?`�pMq)c`G�s�7}�sL��0#H!+`B8z�a
�q��eK)%�j���zsV��c�n��֎�Fr�.[��?�4[��+<��-���������MS���Ԁ�z8xmh�~o���o�kp�gj��cQd��x�K���*Ps��	-<�	������h���S�RT�c�W=ޕy3�q5�I�3��A��u#�EvB&N_덩�8��M�L!9j�:����9�~�Z߳�)W<q
Z�p���p)�e
�tݤ�A7��
E�x
?n�Z	�o�{'��&;�n���'��O5�f���$$]���`���EB��V��%ٓ$KR���=e~���5�g~�{���]ܷ

V3K^�&��/�BK�[�a�BBo)��E7�UG���m�
_
�X����u���O�h�ԙ�~яe^]��uO�����d��0���|�^�4�y�k��E�Hz�e~�D8�$7\j9��,�?�Hr��n�䢝�ӍV�
���o5Q�X���A.�%���V���l�,�f���K�2��_Z���ӑ(P��cW����,���^`���1��=��P��r�J�u�T��,ѤP�5赟-�媧Z-�Y��QDY[]&1�F��v�\���\�CC�R3Y,n+�����ˎ�s}�l�4��h�� 5H��ڵ��q;o���7���N!��e�Z��Y"7G��1ۺݑ����g0Gx�����F.G�~ٳ�Ҫ���w�|si����0��M=q�\���?.J�W@9����8qD{�����,��@����;�cXf߳��r�EC�HV5����ī+?���qy�.�LPV����3�'��?��\�@trJCS��Q�@��Tc��bn
O�cK� ����s�sl\���I5�i��A�<5Jȗ�"�<�vi��Ѿ#�y$
6��q����~#__�'굋�k7��H0�Dd�|��
D�oy�n�}���s���$�9(h�u��Od����Mi�����<1�P@�J�9p"K�X*��i�	̸�h���X�B��P��P����{@�T�C��<��	�G؁8w���؆���/N(I��9��{�c-����Ud��P.����˲�U=yE��L3��Tl}�����`�	���D��J
�VW��H�k��� D�%�vE!�n�RP�^� �)��	lUh�X���/���f�����~�̥~P �)�:Z1]T��%�@{�*�p9�;���(S��!;��-)�*x H�䮐�U���)�3����BSrD�اF�@��l�w�G\,��0���ygč�� �6:?���/�K:Å�R��o��h��*�K6���Y��.8.5���.�֯�$�v'E'����5ytisb��&x�xSP��5�چǤ�K/�$p�k���=�'���4�\��k�^-J�n��yd���>S�v�S���?���+��#��VG���*�~��d�[�S��Ʌ����I,���Kr��[����ɾ��DV���˦���7+�I�Fa��'����(��h0��S�q��HMyී�1'c�nY���>;SS䊇���<ϼ�j��̺V�@/}6��G�$����n=2�~�!��}(�'���B��0��=��EH4�󸽞" s��e�1�:
X*8pta�)4yV+��>F�Gv�i�;����7�S	�x�y�\T�yu��)"#���^:��KH${*�.�<�{k���h<��ʹD�v�\��I�m*�r�C�I�I�sUS襍iL#W�����J;��\�,B����n%���mrU
�2�:�Itv�Ef�JY�p(��m eZs�n�0C����b�-]�Ug�E�1?�9f�֗�cn�`{�ZP}*\�7J/- ݘ�e�p%�J��:�-c?mr�y����?�#��Z.�h���g��Z�v�B>�T|Na��ēB��9zo��������x��嚼�x��G�Xݍ#�n���s|������2��F����GSy����>���o������B7c�uE��50`q���P)����O�Xd-�2��"���?_`���/c��.3ۦ����㧜���F^u(�](&�#S6O�P�(e�9y
��uWp��x�����,��`s0[�^?aV���$��z�w�w����c��|Q�,̶xC ����Ӧ�E��CY��H/�%��ڲP a�e�ߖ�L��w��e)��^g]�,W��CT|w<�%+��U@������e�� ��t�$evQ�������▶�w��H����d�)T,$��    �F���n$��;�ެ!LYa���Hk門0Jr��4/�[��<[_����0��)mY�)A�����ˀj�a���Xn��)�9�ąj�H�w�C�4W;RB?���)���ȝ�J;����B*]�vݸ�g�̆'J�{�~b8�F��d�2���lm���l�V9�7�]�o��|u����5S`'�|��WP=�>/#� ���	� ��Z�Z-[�_`_:�����px�x������pO�m*���ךM��h��mnnm��M�A��X����kE9�;t���ㄍ����ڭ���!?�;Y�w��&w0�;��B!;.�itݿ5�A��\�Pj�*@�*�i����s���IH��*�
m �dan�ҾmB��s#պ3'�]�Ł���۫�"ک�a�.Z����X�r,�j{�},�-����*n(2��7{�e����.�Natp_�z<�m�z͡4<�2�h�����(V�����s�2d<��!��23�DV��I2PS�#[���$>��F�����(�2�m,l��l;��a�ԕ��,r|m`�s�������'	_P}��t�T�H�t	����~�%����_Αl<I"�D��\5�������@\dy8�Ў!j+ґ�)'�|��\rM����/ѿ]���^�La��t��$�p�r��4	K�x��s�-c�æjw!�9E�hܩеI˷V�)��N�SQP2��n�$���i�d���!��=a�����J�v$�7�\X\?KO���/()�M�,��<���.�4�ss[.�L��oj��y��M����N�<�U
4jp�ݎL�]kͫn��*

nl�vFB��64�����{=���*_�4FL[�/z<�ժ.�D�0��p��υS�&)ݩ	BC
j&�u��h��P�4X=�eִ���F������9;i:sj/�'Ы��ƛ0���Ot
��S`��IF
��f�c�Ȫ�}M�(�/
,�dD�:�,
�7u�+HB;2��nڝ��%���~ R�K1�S(>�5��%��,�\��8�y-��a�e�֞Y�\����X���.)H��U��A��Q�݅&k�j������ �HZ+�_l�x�&���뗀��N�LE '�����i��6���T��"������M���@�׳��6XQRh䷸�K����!,�s��=NF�lr�⚲��
�}f����g�)qO���, ;'�����K�S��p&�^�&���sB�=��bۺ��3Փp���l�o��`,D�;�'�s�HMI��+�{3�(���:B�o���fESD��P(��'�4��ּ{s����3N\d��Q�C��Q���&�,*�g���u��c2B�S�d,:әo���rj��H� qJKb<yj�>��v2q�j��\1��I@��&�jƾ8[�j�O7��/mI��d�ZN��`��̸h�If�O2��V2����/��ne�e�\rI칰����"��J`F��S����5�1ۮNM�1N`�c{�GR�>�yʦ��_w�%�把j8CF�T��5?�h~��7�˫�O-!�>zl�� f�z蹈�+�b����
�B֞G(S6W�
�T�S�/�̔B?e�����OT����L�mg�J�wF��k;����v�\�|�i���^����p�Z�S���?k�H��sa��٤/"pA�N�w6����ŋ�lFNI�Pͩ����/�~Ϛ<X��yŖ�9�3�;E}�2:�G>g��S��o�V���v�}l���l�M��CF!>���s�����!bUn��¸�s�z�X��l��X��p�㞨,T��r���뤨ټ��q;�[a6�s�!#CY\M"�d>���Tn�R�bQՠ^	�d��X ��Wi~g2��-q��,D���;�k��OG]l�(�����ȶ���]b
�١;��Q�9Ѯn���?85�g�I�n��K-�<��R#������}=�nX)�ή�S
���LOA�A�v��@�F�O��|��<���U7hgt:fx����Ƚ����K�4��b���y�gD+����4X��ޫ���q���Ffܴ�U�d�.(��5�r�� R��5$�d�Щ�h���=�K�hM��D'�|2�خ�mʪ�l�Bץ��QK�}��$���ٍf��T!s3>��{��m�x���1���[!+,�9�$���n!�'��P�������Nkgg�Ē��,{�+ہC��涵�¤g�2o�@�p{K����][��b�Y5x4�;^�?mjØ��я|ζ~� �?�N�삤� 6ަr?B݀���p�}4��";��1Q�r8F��i^�qO��8.���!��^�h�Rd�
ʇ@ŝ�W���Qq��%�*t��[A݄o���y�W�� ����{AȲ�0�Qл��c��ݍ���6����mpW���y��TE�����f� X�YhGucS��lP3�P�V�ʑ��ۜ���8�^�Ka �n
�B7�����C#֎cY��0I��P7�my
L�8���:A@s�8$�T���k릛�"d<R}:+�@�ڒ��]�xE�@����~ �5;�1	��ES�dN4��κ+a)K��s�D!�A�&5/�T�&
�H��a���� Ҝ
v���N�@�yb�`������Ď��*�.-��Ia�����ڦ�o�~�Bӎ��X�d�;O�~4.p9���	�LGwV��DIǟ��!	*��IoYMA��\����2�����4\�ݹ���������b^Ofn�)�2�73ME��=�:lU���#�`� >P>�r�_K� �jU��ؤ�zRI����w"�ꮈT^'�f~ �ĥ0S����.OXzxaK��'����,S9twq*�V��H�ۭJc��󧉊V6L�\INf�	��n<��[�^F�ygF�@_��@��d��6��1B���_YSoy;��]��i���\����1�!a��2��1�Z��+�g�����I��~ya��5�rb��TĆ�*��nQO'ՙx�c�g�J-R ]d��x��"� ��[}��)�ߪ�7���w�ca7��y�ʣ� ��99Y&y�㺥	�2
Y]���g&��g*������`w'j_�O�yS��%M�L%[��h~d�a�Ņ�Én2����^hN@[#��3.�YQ�]�}��z?"r��Ȩܷ��R�A/3�X�A����&ϼ<��׃��!�LA�d�L	�ª�Y�6�]�۾i^R��&S<��n_���ՠq��ޢ��BX2���6vI\K35��+u����otm�Y���G��ܛC�?���{�ʚ���t�o~��fC�/���s��&ݥJ���̉�2U>����l�ܐ��c���r��K��%�q�霁�u|E?A�4m$D%��һ��e튎OoF	�F��
�zAFZ��5f��M*	�S�qz#�D��d��IbH�s���0�Mݰ�w#^�H,#�)�|�Mv|���SSr:gua��ǨO'	KC��`�����-���i2On�B��w~�n�S�~�`�q���`f�Ӧ(��~�J<� ���0�s�N���gN��`+��/�� ������+A{ޑK�^�
�;��GݶH1p1�`�>%1|���2{ۢ�_YwB��`�(h+��TUsתЋ㦉�M֖��~;���OP�G�Y5�(O+�z���院2m�Zh|�!B_�K�@��MpJv�z9ǡ�á|�Rs`�<�H���`�N4!���`���K8+z��R���Q��L��I-֕tI!�4[SGJ<[E3^YĪq*��l�r�P��uF�z��[nY�,��{���Z��Y����K���%I�z��Q�~��]{��������<�*5��V�GJ6�p�2s��H6OTFZ�	SԠe覥*M�sc����}>7>�5�=���do|i%�Pp����1'nW:������+I����*��H�Ѥ^p3�~QqQ��;%�NHkc��K/KyWA�I<���{Aҧ�����9ĬOǲ `v�����z���<H�t�uE8�P�u�?DK+-^�m�    d�m���t,l�t�^��RD(2��3,¹�t8�l����K ��.��?��<^q��hg�|/���c����l�W�)����`^���)�SV9���CA�Չ�cYֻ��E���'�oF��2"��\����r��X��; �����v��ݔ�=A[���*0���K��(\�>��Ŗw�P6�#�ӟ%6��K�{x�g �9�P�[��V`h4/�T�~�;�^�bIx�!�tŕR�5U�d!`��CJn5�ĵ4k��®�n�$<k|��$�c�j�
$�Aqކ�D�6Q5�I)	h���?�|9��x&1��h��E:�a0�U�����e�����z��Ͻە&��}`pH�]�k@�1��:�$u3�����K�q;s!;DQ�-�7��+�,K�l֠���N�������+�W��J@�ƿeu�a6�)�~�Y�zA�.�h:��[�C�|#�D+vF�/5Ϧ��-��q�qj:R&����dU� ?qס �LdI���p�D�֝�����Z�ѺP9�w��(��l�8a߫��w���=�\�O�|�srtO��[?�U���t"��eߋ��f��M��s�
'��1�)8yΣP��D���]�f�@{Eԫ�I6���֡�d�#t�4FX9���D���%�m�6��%�a��:JCa9#�\��K�7�O]����PHA)g�� r�V��F��y˯P{셛��WV���w6s/�E����p�G��Cb�3ǹ�>���rɘ�J��61tsk���Ț��e_Ѱ%$h���_�ԡ��M����'��f�=C*#���^����rZB�'��/p$�9q�x�΃�������ɐ"��*�ꖡ+��t���6��R��m��?�L~�jG�>�ikuTmӾe
 i�Y,K�xEF=
�f��WUܳ?)����.��W�+���)p����O.$��9J�𲻐)t�5	0y��`2I];���e$_�����-[�&	����Ė>��V/}�A6�%ᨄѪ��J��j�	��pE�(���d�����_��g��`�=����ч'r�������Flj0t��R��-��#<��E)4����6���L�i��'b����4T*�@�V����2�b����E	q�.ɴ���d��A΄�@�4s��%�m�>	.�T�C
���5Ts�E��pǦ@
'���7����-s��+�	Z�?�Sf�
;��ؽ`#�"�7`���%e�W.�ˀ��Ʒ�m{���]��8Λ��O��`�7�s̳g��P<'x6	='���\.��[�A�G>l��#�HX�O�F4X�����F�]���"��̇K��B.�=J\ҍ6:UC�����`��D0EC�@���E[1;�ϰ'�n�9���D�����Ք�8B'{�'�T3<2R#���/�r�>�f��sI�-�1����޺x�7�aw�E�����z2�Hwܰ$�|ր����˓�ػҋ|��ng�%L��k%�'�ڇZ\|<U���z�����f��*ȵ�S)��){���A�ǚ�~�;Iୋ���K�>+V�d�ӆ�0��2���IW�#%�lm}��X�%�;�R��t��D�cs[b��c�����s����+�wN�)�a{�Af2�v����=c�Y>ÜK�
���k�9L4�r �X���R�x	�Z���gAB��Ѿf��%�������F���*�VDs��֍TT&��?R�=eM�eoD�}����sD$���h3*�d���}-����)8æ�&���IG�.I�L���6��q$���¦"�V>���*�����Fc���m0��+�m�+E:�^�I�w_ހ��h��VTـ���$��;��i5\D����z�0�uzH#�D��D�f���~��#a�yUWaND�����d(Mvx�pD)o��V	I�i;\ZB�Ƌl��N�D���;�t�H�-������Hn�D��)�U?ti_��×X�3�MX�ր%"��F��[�aSh�Q�G_�i"q�->b;���*��F�Ȩm�)ϧ�#�7G-}�鐥�K!u^@����{q��ɜ	�����es��z�(?���̱���@P�q�y��G�$˰S�e4"�&�a�Tj�K6a�\t���ܕ�QJ<�11�w&�Č唷l'K8��!NIF�S�=՝����ʭ-r���u�R��w�~q�-�Wiz�߄2�
Y�2q�n]%������^Gk/�a����@�[/4�h�
�F{�ר��KN�J�bF1X�2w���$2Ŭ}����9�ݮ�"���E��C=�[+$��^r����t|"(g,���Ob� ����k|uJ`���yQ�!�\5Tth�o����i�}J�T��E('�������3�`�-:.���͇E�h\l���xUx�Y�r�b4Ih�mؼ����h ���x����a��������J&Ӻ��~��k�� ��� ��9O�����Hn�2�O%��G*��gA�q�kT�L��S��"Tx��O�ʰ�׀�k�"��z��{�6G�8ځD�-l#$�l:�^P�x.�$J�P�9�E��MQ,M�@��h�g����g�rC��U e�;���)�:P�V��aE�Aa���I�K���h:&��]��0���-"�d
�3���8?I.r���������qB
.
"��w��r�
o/��W��O�VQ ��4���s���T�෥�Q���v`��g�����ͧ���:��ੁ7�x�Z'������y{$:T�=ז����+����ptǒ��ч8�`x��=�FZl�O�"�'-�i��D:4|ۮ�tb�"6�'Sɯ��(�]�RBu��$,g�paG�8�J� �E�@<(K�JK�V!�=��ና̕�&Z�RR����l�"��ƣF.����F2�"�@7Q�6Vs��A$�H�2�D[��ksӄ���Eq��$œ�
�T{P埢���xY��mg"C��	q��$9�=QT,BF�A�~�6r��X�S�rp,�:���坨	4�{�a.�(����D���<럋��T|��$��vk����?�gt��P"�~H���"���"����_���hR��Z��U����gR���5�#"�r���x�v��Z�JJ�fLT���u1x�d6�	���*��?+�fE�pوP�P����Y2�j�=;31�6ĺ�g�����y�f��.(�9��JR&n�(�s>��rJ�}�P� "�S���V�PJ<KƷb\��g�-�`1���b��=E�:1�b��2�3�C1^�6�u�ۡ�s)�s��;���,i/>n���`%�}ek�e�\pG����2�����Ne�9r�OǟWM~8$i~ͪ�����CIo��T�JE�q��H"�s71`as���c�y��9v"��o���}׋�c~��x�$Ŋ���@�����jyz>��$rb\���'ԥ����gE�R��Q��@*T�j���G�#)A��z�6Yt�7�7�`�`�W(ml��E^܎� JON�/���x��%1:�p1N������r�+(p;�����	h�{$bѶ���u|إ���[d��e�B�	h�nC��iC%X_���v,�PO�nM�7�4�hd�-�x�X������@�� 6$�
�c��͜�(0ϥ\���R2�"��!W�XP�^��NE�ET�ҡ{��W� �'Q'�ra����;4�6��Y�%��K�KΖ*9�r֬���������$0�]�{,����*�5�۶ht�y��|�X���Da�u��'3�d]\���<�{���0������%�sQ--��}k�̾B^�V2O=���C
�$�G Y�A�P����"��ő*�`#<�[�җqI��Һ�6)I�]`l	��&�#��Փ��9�حTg�BṠ�����ً�AH��(��B��h5�:n��(c�݄'Jŭ����Җ=��i|�C��$Z��ڐ2+Lȕ�Whn1��r�g)�S{:����{1�@�K�ܣ<�eSb5���R!��?�"�?��M�� ��cP����[ZXOO
�v��n�c    �|�{&�1pÑr���"\_6
�}T��`E5��ō����R�ڜ��k̦��q��k�@�^y�q���e�2Ұ�3��;o�JP,v,�9�i<��V��%�ɳxd0�(��٬L@U�P_�v�!��*J�;��,�m��v�}�'$I��:����zg[�,[�'�.���Lu:(01g�L�D���EEtnD<��H�?njsκ�'��ܴ�̂�A&�ys� ��c�-|������"�N������L�zvԞ�]+R����b�AB���9T�v�e��a�CA�m�B��ͯ�`��dvR������2���]�I�%ed8��XG������CJ�։��s�'<,Ѹ�H�r����as:�m�T]`ghMtw[�p��:�&kp�b�n�
�
W�+q��\F�[o8����.���uS%`�.�]���D��{�9ӄ����ى�6$�{G�&w��?C�,�Zf�9S�ah��c��M!���`"�l.������ىl��8O�(�*B'���;���s�*��.�"6.NfI�ta�1�A��(��\k�iC��H�>y�[�`.��b�$��!ׁ�3��"����\�n�m�,?"x�Cڸ;Y��D]m�"���/��PD/(��' ފ��0�FE�v�K�놗�m�i��em�W�3E+@������\��"UO$#?mh'7v���Ix�4&�1�e��>�m)c��B� D�6~EچL�:�bɠE�mu+��d//��Gmΐ!߄#��l;-ʢs���Puu{3�o����Ţ	���\�p�\���3)��l����h@ྻpF��E���О=� x;�!"Ϋ+"L�r����)5)�	��0h	iEH�Խ_I)nȖ����i�4X2���)*�H��m��KDK�e)YR&�I���o�2^�x�$r��2W)d����"���o}5@Le�b> W����J%�b��I�6{�u�Xd(s���c_�(��#�$2}�%�r��iK�e:���)��G;Do���2MT�``�$o�˫AܤTx��@��E:	IB~=f�F>E:~�;JlZ�^5�s��ŰRW�#	��pۧ�����Fm>1����]"�B����Z8/�<t m�Y�3Kq*��V�̶�q+b��vׄ���5����l�d��)�T��ke6Jj���-!��Gʑ�ܰ�/�X{6�3J�8&/Ż߇�JQ����&�C	�~>	d�X�%	���[˝©(�N��^Z�N�h�)�z!T�5��$�~Qڎշ�v��N������__��jG��YiD�StO�8*7��b]�b�~ܢ�X�*z
[{&�Bݱ�>"�,�E����0q;y�'hj4u�V?�o�$&l�`�x3���-�u�i�=�x�e�Y�7�W�4�D�2�~VA�LS}/�-�ST(�����f���2���tY#wȌD���4��r�4�T�v谉�8F���d�-*B��A��\	>�]�-��U ��^y�GNe]s'dF�M�3���l�"�o~��7�S=8��;�k.���(�]���6?#?жQ�D��o�6������q+�=���|� ��z�P�J�.�>�vL�S� ����6\�2�Hʻ TO���A��_~m�K�P��D���*�ypJx� ����_usL"Y��j���6�/�^�HD�$ݧ)���B�j�C�iZft��Fy� K�tQ�#s#���a���#TR��9gd�E''!Ce�� ��Qe-`�m]F�-t`���AG6����� �)2��l�\B`�I4쨅�j�$� �6L�Xĝ�<і+�'�0�q��F�! R*H����l���ʮ����f��������`=��6MQ� �u�6�H9P�d�`$��TEg�H�U���b��2?3Z��_)R��D9�9VT2.�^4�K�R��T��=���D0����6�b���&�l���c�mv�gH:����DP��
s��D'��/��w�m��S����w�	��^�B�j@7��
`�݌���%���6s{"�O1-;~%�$�2a�����3���TaI�;�Ũ�b�Iᥑ��,�b�7)�UX���yj��)0
p�^Z��ذҬî6J�g�M���Y	$�s�%g9��5MJ�8��]��L	,L�u�'q�*�bZ1�4��P$�\<=	[q����*�pۜ#����*6ei���7��8�BIe�zi�R%`F��BJ�����x,v���΢�w�$g��B-��;��Ȥ�r����b�tW��.s���+�r<T��Q�����@w����b[��|�@.N�\ 4e@vo$G{�����oȱ$A/[H8F$u��8���S,7�#ϩ�8J�)�eD#�4���^�[`������pI�^T(�҉W��c�`͋�bs���嬁���H�����,�H��wj�}�m���h�܉��(~T2P:+[\�x����_�v����΋���_]�r����uc������ʩX�ɐ��G��(�|���ɸK���с��^�S�� �?NZ˜ݶ�4�v�SSPX���.�HN�r�$j�͉�Z�2�}��^^ .(c�mm��c�KA��PHZ1z/)�˶�B�Ju�aM�����U�q3xf���I�+�\�0��EOu��ܠI.�(3�8Q"���������q��a�	�S}� ��k�-4�ztS/��� M؝��x>+��M	����-�`r�TdF�0*��m�U,��xS�d�xQjj y���-G�Y�ɞj�$h�Ȏ#��+�$���n����m�L�p��\�;������
fP}wo&V0�{���_�[�`��l��{3Jb�^>~�T������2<���H�1C�o
]7a�䎵�,���&�V���^��*�F�',Xl�g��z��Ц�H{̢�T�˜���)��E}�f`�C�N>[)K��a�?�<ĵεj��//�N6hq�A,Ϣ�G)��Hl�q�����_첒z��+��rX�D.֖QJ���]�[L,�K�vM�a	�h89u��yX�,K�(�ۻ�����Svo-)b�"�NV�� m�E
zj�m55"h�U��%�'�I���̠�8T	��u*��#e�%I&�OT��K%����>�f��-�NH���:����Ȓ�E�GD�|�W
O���ʚu'3Q�ȼ� ���E�CE_m����gd�1X��U}�*0��%��-v�E���j�U�'wm�[�Zi,�@iZę5~���^���Um�B�
	�z�dgΚ�n�}����h�|��@��Ũ�(��� ��>!7yv'�9�6�H�]�O��0�d��<�Y��	�����f��֊����)��r�n�%�SƎ|3�ɽ�l�-��HjErWz+������~$�Ä�"�����ި"�L)�W�ϓ�ܾ"��O#����9�#H��ʣ��,\�J�Xv�^,a�����/bs�#�Ir������S����C&�TM-�E�MLE�W6�$W��ߟU��BNZ��QD+"�s%��8(���[ɒeo�^A]�"6��jK}��:/��]4Y���-5Å��H�a6���b>%���Q;_C�)(�HA����I�F��~Tf�0+n��� ��pGY��w'�6��c�w��ڽ&"���L�6L�ˢ=o"�9c=J-� wq�<���o*79�J��kK��Ҟ&�2��Ec�ͶTE&>GS�+rWZ3#�n�߳��8�H���v%�������S!��fGjLfE-6��"����{��o�+��R��o�.p8�R�Ύ6��9�?W��m#"~AET����gMbl��*q�jG�J.ڃ���NI|Szv!��6-B;j���)�f�s7��>cC+����ra�uo'Q-�
��3'�޼#�@]�6�V���y�.W�۠R�)/+%��v���j}r�.�ArN<J�gi��$��2�i ־�Sk�5#E��F��x(us*آ��?���A�(0ү,�r0yh�����oM1�V��9X��TJ���d�v�JH��m�ā��&3��`$�̹�D|��`t��X�߿�uA
��[��X    ��A��Nũd/_�n���s�:���K�ٚ.��.'��X�뷲I�5ƝZ��x�&���G�����`�Gt�h5$�4�Y�	��=�)!�d�FM��t�7rf�
$�J���9%ngʽ�;�mә$���f��A@�,�T��od�it�X_�3�:"��"�ŷfW���*�����������zoل�&�*B�?�����fQ�g�T��	(b���S4E�J��%Dޠ���F3��4���'6�n�V�`|�D��j�FX�޿�x��v�n�h�l>�*����\L�����Vn՝SRWu4hU��x$דW�Ξ�2]QQT�j��
+�p_tt׋n&� ��2���+���R�u�$obm����Aq�1H&J��~�$��3 �[<�}ph[���� �v�S��H�Ψ� ��5�D,�YSy!J2FKy$���X3�s�i�CVl-o��$�Xf�h<Z[��ڽ<�H�d��/�
O���m��'�v����l�#���D��A��$+>�ٮ�	ɘ�j|Ǡq��?!��e  I�]����rkl8�,���j��;QM��TA��P�b���H��^
"x���_oUSLE�r1mM�UKo��\�P��grEZ��ó������ۈ�)5jqؘ$Z�>G�]m��L*�J�F�K;ѩ:���q�6b�׆�Z;�L*���hV��RI�����&��s�D}A�O8�R)S����Ey��X��X*7
�.b�Rm�E�/�L��qz�E��5�i<疒Ak��q@F�eb�Q�l�A��Fs_�]�@[�O�_�x��F��ߙ������m&[��9B*��C:����%����FsRSP�����C�$bj׀�~��F���/պ=������������\�07C3%�k�)�*Z�S�gF�%4"pJ+-����pLU
�X������=up��O��J؏Y�7ߋ�u�p#		��n�[a�e�j�Ws$���,�����S�V���[*s�"[a\�����ß697� r,"���N�P�I@T�`��![~�V@����+���}>�с������n��e6�j>Xҟ���5���vQ�)(y1���t��"�xT<���!wJ�9��������`��vqP�I��m
�f���+�0��V�]�KCi�M����d�J"����ý�V W�Ժ���6�YxE�;"��?VD��}8����J��S'G����ΰ�ķ�P�t�?)c׾m�]�(��Bl�38��O\D�a�C����ào>�_	?f*�Si����!�Y(�}�W������ìj��T$�Lg�mrKF�sj�9�Z�P6Jb�TG�_\	4J��Ǣ�*}�Q�0�1�HLf0�E����,�ztk�&%ڦ�%�m��T�t�̻)��0{.���//�p{y���˾ ���	#@2�D�X�;��~[��������B]A�|�<2��s鑂R`ÙdI,{���o�<k�
��� ��S!3���7Vm[��f�w�q,K�v[}(����L!�I[Q�qk��;k,K�|�[��|F��}�B���R�z+P�Ӊ?)|]�!o'��%�춱�=,�lK9��*��Ԥ�Ԝ.���:GVt�U�x[�An�h����Ga�P�`�=K�^�'Od����M����~��~J�$ev�w�$q�xV�z��L�~:Df�æ�l�m,�$�F�`�ng��e���)�W���T���E�rv�D��8��^�YB��C�ES�&	��Ej�8�Ȼ/.��>w}4I���7������R,�G��l��V��)�ki"��_��ǹ�Z&H^��������@�,����k�)��.�������s��|�-���Md����M�J6�>���k�Po!}/*����ݣ#[H���=Rd����+������g��f�W��8��>�\I��(�]�5"�͜G�h��Wܸ�=�>�����.�cV1Z���=�<��=wi��k��j"������=y�\a��7�Q~���|�{�XdU���27����YE<EBc���P枟�]�)���|e��P��Ⱦ���]')<_B����IBC�J�O�]�������H��9a�����G�M�H��<P����k�9;�?��r��;sB�R<4�s��.]Bu!΢h+�}b�^C���(�������7�n[I�E�>^�|�Q�OJvy�)�%Yu���QB� �rs?�Ɉȉ23"�w���}�j�mK�H�s�4����}�V��)�/54$r7�Hf����{��l#A��p�xu�b�3_`n$ܝ�V�X� ���ր/aA�ѵ?����Mi�����LH�@vRx����E`�i�Π 3Hc��������Cص]� ]	�&VM@�[�݁�HZ���u</�*O񗥬]P3��飉��8l���<g�Pi�5����!��)ގ�gX��-¢���=vi��J	�J�6!��z�Śв�~,�i��Gn��_K��z�Ab�h�;�����ȆH��8��6?7c~n�����`1\���=�`DyD����w��4���F���LCh�_����m]_	��/~Вs�5��50��$<n��A^��H�1m��ol�3�؀]`���۴�c�3@���H�㑛E�M�n�
_e��Ľ�����|[P�Eu��J#+�Ve`ͭ��:�P����=`^���k�!�7CT��**��iu�3P��϶ʇm���$�C���"��WMx{X]æ	�7���8I��p����.�e
��`盖�ЊA�(�0tvI0X������cB��k#ׅ�D��'�IH�FUT�0Myx��;Hh���uk�ц6��=�I�#8A��,�z_�Z�N�+4��e�����*�P��h�C�Ai��`���=�L�����G^�8���˲�ҟ��UܻV��s�M�WN��pM���~"|���"��lM��TE��X`���D��L��X-��";VW�g�Y)�l��H���Y�)I{��b0��,�v��pG�`#�?R�E	IMz�^:;��7<�f�W�@{G�~�y�4�e�F:����N����J��79�,��g�u�6$��DEIɊN
Oi����s�-����I�I�-µ̋"��"��/��r`�炃�e/� �v�m��e7eY��ꗊ�����$7);[n�ه/AE
{��ӑw��<)?����ٿ
6�<w@�l��AC�ԏc�gc"��w�����4R�=^1�����~�����P}`�<��T�͜�|Q�.��%�zf``���/�����f��g�;���nx�P�>�(�2�H����
��iJ!��t�O�#-	3>��Za�:��`�ۦ��H������:|X
���W{էp?7�ޅ��0�(�}�Af;�����yj�J15�7��Q<�;����5�ء�}Hį6�k��c xX+�LEQ��^>�������k?��'�n"w�%7��Ҝnz��Cb8F�Y)���>�W\�^�H!�b�&���|�ass��ms����S������q�O��h[��@h�w���2��QVs����0�GQ�Uk��w�<�U���	d$����	� ���zJ�8�W�y羘�=��R8�OF�4j.�=�G��nIdK�R6�*���۰�$��RԞ�AE��\�c0�s�6am�Q3�(����,Y�4ڣ((Z����{�d3I����I��O��{��b��.��u�  �]�ݙ@�ߴ�kw�1k�y�qz�\]�$�,��Z���1\l����}���l�i��c�c-���`L-3/,�@�f�F]�%���ڛ�,�tT�
]��'��<�>N�q�n�Vೲ�d�!�m� ������q��,ޒ{˼m���}I������ ���6Oa0�J����V��W��%�1W���q%x4�[Fpr����ڥb@�>��g��§��:*�bZ��Q����.\ȣ�2-&F�	��G[�
����(�t\���u<z�>y?� ��Îj�.����B�C`�,���Hv    # j,���0��`v�!��Y�k7������99��"�t���öfS�Y��3��I]�x�~�Q���z3k�
T�e�r�pk�wE�rw�Y�V������O��u�	K'����8��z1$�A��R �=�$�P�>K\G��SIx�Y�"ԭ�Q-M��uqq��}{P�����)&GYU��:ʜfKmS?&�QK0�4Id^�Q~�R(�T�Qsp�ll;�4�[��6���-��f���Im���#�7�X�k��o���V�B�����G��B�Ô��b��'_M����ܮ7��^�+k���H}*���K�ܓ���9��
$`m�v��8b��9z�_�m����0Ȓ�������ݖ^E=��
ZF7h�P�����|�w̃P}y5����30��P�/\��Yw<�� M`���G9�����㸛���m���Ċ%��Nj �-�����?�����>���6�H}=O���g�8
-��{�Q�E�ľo�97#	H_�V�)�M��{OЄ:͵Kۣ�-hZn�6Z��aGwv���p
��Vs���Z{�sR�u������������������G�qK	��Bt3�}�:2_I(����,|,�bf�i~�S�i��7��FO�Szl��s2J�[0vi�zڌjd[�qG�]\��$��5ES�9��O-UlK��p��"������:�
sR`>��mdh��M2Haf�f?3q��)ّ�!����]��LΏ�?�݆��Ma�a	%*ސ�qM�����'�>���_����S������eh.�B�|��	v�S���V����Qc�GH�B�qf{NsRC��:��� RbO�J2m�WG�}�S���ras8:���^�<���8~���6{BJA���li��w.\$<����k������>�ǚ
�M_���/�I���c՗���z���[� t��܁�	w-��i"n>�n�dV��==��-=��/�{�Qʑ:���pX� I+zrX�m���"7�7 X�� H�H��j�\,���{*�����H�l�R0ợ�@����i���/�g��QF�pE�S(�ψ�'���|{���3��㪌	�ʍ�ݝT��B� ���x`� ׽c\�D�
��3׊�`���~�J��:� ����φ_��Г�;҃
ʖ���J�(g�����<��Z��`�q���#��N���0OllY��4�i�fv�G+� ,��_����`G�9���+��k[����m��ڗ�iGtGe�����W5�@w£��i+� {m	c�A>T�Go�����$��[8ZƓ@�T,\xآ*T
խ�w��mmz	�6��������ޑ�H�S�(W�;� 5\��}�!4��@C��׍���"�g��A�o}���N�E#=	�*��#�7fr[&~z>�������3�xڵq�)�~��l�A���9�-qޞ)��Nbo`9m��_�;��j='��Ͷ��giج۴�J��C�q��xܡ<���3�枡zР	�E�#o��ǲ+.[�-	|�<���i�C��3s�v�?���I(�P���(��XI#a�Pf9Î������<���h]�n��]%�)�Yf�"r̭�T@7#'��:�}��˱r#`�0(?kW�y
���ǉtl�Lf׀��{R=m��e�u�	 >�s
%���v�)�Q>��*���P@�(�{���&�r�8��uƘ�m1����̚���k&O�rz��mL�Jp��߹���-�-4��?�!�d
%v�C��F;;_����_(��F�~�F\ӑ~�Ո�ԙ���2�Zr�s0b���v��8{��Zu�hܥ�V��e�&��$�A��k����q���(nq:��Vs3���<�*���m�C?���m��evă+��|Gk��B�$��Yj����Za���>�fׁ���?N�(�2swC�S�9.y��qfGڟ�� �{o�f��Q�����Zx��A?A�e���
��͸��W%m�1�T��R���bq�i���"1���$��+K���L8Q"�w�C;��"z$/�[���N���Y��.��.��)��O���	��zvw��X�ڽ����!�Пv,��p�w
N/��kr937�v�����;@�'<n||XL4��i�ƌ-����2g��g�A9Y�m��F�_�'��H����~�q�I�ʿN'�2�Z��-���"��DY$F�u��Y�x:�4P�}�l;s		�xz��W�ڳ/��r�K�M�T	�Քo��^��nKwE�.7r:�o�.?T��-eff<�-���X ��S@[��X��
�9O(�Y�l��0t&J��]���30�f_jf���RҞe)�A`�ȟ؎��v�aA�e��ͬ�fpWE�E�EB�j`t����dD	<�j�ax[��{��7���y�z)�e��������SA�G��9�'� ��*8-t>u� q}b �_`�y�îaoY#4ћ9ATE��A��\?�c�}u�dd�.L���r����l�c�����(c��B�6��:��	gf�	e�'���8���Zp�������)�Jg�9{�����-%���7zc�4s�y0�)� L�Gt˻��CQ�	�G���ȅT��I�4Jj�N8{���6E��y(�}���鄳C`�6(��k��XU_�¶���!� ¸�!O#�g��@�2b}�q��r��;�Ľ��"��E4�n�	���~:�� ל��_CX�U�9�牺9!��E�uWE�	g˽�fx ����FwF9�/�d [��`�X0�+J�+ϵ8#�hǑJ�Y�����b����"�A��<8�.�_��\2b�����ƿ�s������������c�R(C2��P6T�)�ڮ�⋗{�'�N�㜓eº@7���G�c�`�e�Bs�c8���D|$̯`�t%�yU�O���~�A���3&۞-M&��K�X(Jl�ί��3�Ђq���ɬVNfc�Ҫ�}�S���Ƒ�*�l��0'�آɂ���SY(���^D����H(���T�'�ì-^�	���9�<z{��~U�!�v
�Q��^j�/ajW�]�j��;��U��"�k̊��S�Qn�J3�P+k���]Z<sx��nƣ���2&�0�W�4�@o$3�]� ��Ru�J7���뚬�Sv2<�2o���陦0��=�6�_h�;�a)ȭk�}��*#�J�����!9�[B6Ą#�i�bN�Kw�p�9j�n7�HJZ�Y�<���XY�RiL������Ĕ�#��śL��M��:��X5˫�v����RV0��q�2�v���.�>��3������)��E*�P�W���8�����j*i���8%F:]�CޔP���#� �E�O,LMt �&��#�i�G�.�3f�~]����0O�Үe��E"_�|n^.s�|����R�a�l����
{�:��"��<�{�d2|�b�f�oG�2]��1���0:�	B���$,���s8<)�<�z�X?��X!���hȡ�=A��F��=� gf�-+>��_��o����U��g�%�|v�+8ް,l����r�D�l�_]�'$G3/nkۥ�X��!����X$�iwz�5w��+��|G�(}��Z�Ȏ�]���u���U�z�h�L����?go²�?�#��O�,�[�/��Le�ƫ�9���ޛsX�·9c]D{g8g����of�sΨ��v$�q��B��j�Ʌ��VԺ`�y����/8��O1>2�9���� �;?���q�e#^�zwv>�N���6a�k��Qݒ�ܮ ���.��Tyk����hB��_�3���J�5"hX��k������q�; ',��X�}$j�'9y45�
�-,z�v .����P�'���X1e㍍��.��x�8�Vm->іh�����{%#1e܅��H�T�'��k0a{���iE�[�9�&w�y�D����ҵU����-9���Y�i/R`Z��m�k٬�.��,�u��U���    %(��!"r-b?5փ>eޠE�����&�>��*��sH���Fbsߦu:��j��f6�-�"��橃X�)���Qp0UҎ������~EP֜
5Z�`�7/:�ih�c֏n!��Y���tU6�$�Ň��XK�>�s�CB��������>L��B�b�V�TDJ��P=�n�_[虰� S.Dh^BzJ�lN�/_��fʇ�`}[Ų�^g�W� �s׽�X(ђ�9e�"Zl������@��Mj�},/j`�g[��)	�7��`*w�D4t�s&9i� T�+<�Z��&ʁR榀�4,λ X0:�`�r�Ě�Ђ�>�-�j�޹TY8�B}�[���a�XM���P9� ��}�8}��<�tv�h�s7w{�QpQ�{7`2p>�Z�mP7�lN��?M'�]\�9�k���<����6�E�(Ԧ��Δ����&B@�.с�?뼹t�B�h�8��5�j
g�Ф�a)˺w�� L� ���¬����1���t1�c����j��فs��E���������uKu*ߎ�ڬ��c��Y2]�YX��$�1XՙF��>u�`["Р�rs���U���C�_SDt�|�[Nh[��%�;�:��a��r���O�Yp��/���%H��%�U����w�� ��u\��ʽ<�Z7e8ϰ����~M�l���k_h<�G�3�(c87gd<��N���P{"�3�0e��^��"�5�#<Ԙ���X�D�s�sE�� �z������^��p��.Pczƶ]���&<ċ��8��@ �Q�������ނ\WE��w��LWKF��@������D��ခ��o�]�T�5jWnFB��n����v� ����9�N���7�6z>5�}Z��2��Ss�;�M��B�>�a��t�`����_�b�;nt� iK��Ή-I�̙�[X����rՕ�`���m�3�|Qb�p����y�Y0�d/���~=�e�C�,�5���6��c��"��ݙ����/����ˊd]�yb[�[����_#���!38ԣ�(�;n�c);�yvlk���e$0$'z�Y���6%'q���i������_�J���U�3GO:�/�+�o�����j�qѶ�(AO@�*�N���?���r�Mγ@�q<� ��$�E�t��]�n�;�B���=�G�P#y��ĲOP ğ^�&7CX��^|�t\���!�;��ܰ���k�/�jW>���|�*���ۑ�,�{�F!��~��cL�,&|?x��mS;�NU"�\��z�V<o�� s��9��k{��~eMt�]�
$K�ǟn�}��v8Jҟ&��ِ��[��4��X�d�Mu��C��������E#(Ő��S)dN]>�¯�C��&A��e7�9Ԉe���?�:�gډ���ͦ��N�!/��Yl�=Pa�ua�P���ؒ�^�k�w����p���P�6=���_o(��
�.�z��4�?F�,�ZR��s(�5��]���^�Y�Y����)��pq��P��l��҅����'u��&��]�z����`��X�E�(I�.�!W�7�^���m�p�'<gpPOk��?��T�����'��G���;�"���A ���l�r履�����Hp3��l�?&��[���̑�=�5��`R-��pב�����kؙ��-2BO�;\h��t�8�V>� �L?r�{7�����۰P{p�x���"0{X�{N��v�F؏��s(�]�PХ.�}ؕC��>a8~~��z�0R�7̼���"'�܏��~@�e���=d�~��\E	����h�nv�ǀGb�5�v�������P�m���?�xאݷ�d.?�U�M{�q�h�J~�P��5�
�CEj�9Tw��k6��P�$�{ ��&��`��>g�J����av?�p���P1%���`��æ�V���AN�{b��9K��5�S?Unύ�=�hwk�@9���?�j!�P���`��H���N�ݩ�xY���)f����	��P��]�� ��!�T�~�":Vh1�c�~����i�pK�AbPFy�)��Ѣ�"v�����,�Ht��^BM���&�PX�/³�L�I�;���\Pp�Z��/;��q0%4�NkP�&vbo0��H6)	o�/	�{K���e�_]zQ�핻�<s�D$�@F��`���^�!��B�YP�hՑl8e����7X;5aʫ9f��N�s(R�2ml��"�y��2翳��*�����!��!�:o�~�C&{�V�,�C΅Y!���~���pPO�@k�!_9���V���7�4,&��_�v�e��TI�D�,�r�4�Ȥz��ZZܻ7f�^U�Z�:K4�|!V3�(�Ŀ�%$k]@c��)�2�O��+
�Ю"������$:���.��E�^�4_j�O4�I��4�Qf��$J��\E��P�Z:)��m0�,u���b��p�"Dq�1�����H-T�@&~1|8�(��Q��N�4#w+e�y�f�r�k(T�v�)�B�Ud0��EJ��CI��`���o��|�z��A�����E�y�A���2*��ᦡW���u!���~[�#WV�T�����ZG���)wB�D�9oo|C��o�%؈`�^tF��I�%J
sq׃P=�%�N%oljZ>N	X��L���`�����.&�����n'�n�����K�c�/)`��rD̤��g�@�@�7��T�Y�}i�~���SHjt�g��R�&�|��>7����B��GQ�Vp�\#�rK���
�e3��$����`v�"˟!��`�5Ox[�$ы�,*.�GB��KL=Y�U����dE�˪_V�V���> �>T��	
����uYg`�Ǝ�ìC�2,1e���Ԗ�$h�1�zW^��&�]�<�p�(�v�z��E18��[�Mt'C�la�1�S�~=2���:9G��z4^љ\�*�eO�0S�������B���:,��]�_{NF���éf�[V;ʼ�c��Ms��f���\���8���F�+�,�v�(����b�P;S�n�}��P�	P���'�1#��L��9�F�%�\���|d��'��)H����a��2]Jy�������q��@��fs���4rܰ�si��嚛�@e����\��u~5g��T�7�b��T?v��.�����b����S�+�Y������	
�͵r���t>	x՜"6μ�<�[�I�}G.�I6�B@�r����5�lm���,H���X0̐����<���W�0��Rʼ�Z�v2�k[��LQe 12���W�z(���@/��0��5�J�	�jH<́����
���htF�27<��A�sV�������kr����K<3�HmkP��;Ͽa�ފ��4�K�:�=�������KrqU�>w�G3'��F�������Zπx�+8�.b�<{y�0���s*X���0�͢�5��v\;����0�ڟD	�,�8��3�d���2In���z�M�����ap��l�IT����bAQUfWآ?�3gb#Q5��oR�`^&Hf��\�DۀB�.��k����EF���SO��������h
�%�%��{�o�	�wЬ����hؾ����vϒ��m�\S���V E��w�Mdy�����c^��$�|�>(e�UC�s��..{1�vm��WP1S�M��{�TFAk��GTٞPs ��4�O�
�
����9l���f�g6������g����/���]����D�y)m�ٰ1sM���7W�ٳt�](�A�*���C"�D�	��.8���-��՛�¬�����w(�Wo��nN�[?Q��
�j������ܘ
��Ѹ}�w|F|'�v�:Wf���ռ�]����@� y#ڢ��ƙG��T|������^Ls��~�vX��4b��C7Ns9�c�m䤂�n��C�������F#b'�e�~���.���(��S)�0s9�{�qf�TT�AEQA٤�t��t�X!8b�]��b}�� zc�)?��)�?�    �����+���b��epnȟ�]�O���p��{;��B{��p�l����[�L��G����uM:v6i4ޓ�BtX�925fL�P�a}�|r��q-L�<,�5aMs�m�����w&!������\�_>)%��uY���6}���'�D��I�I�V��5`{)25�l޵~��H��lBS�cӯ+ۻ�����-%|{�e��r�ߢ���<��߼Pn��O$�8X�ϼw��:up��3�ki润L��9C�i��VS���ͥ�;�d�� ����f=仪�>���X�q>�§-�%Q�w��!B���Ue��*��'���d?/_ 3/r�;�
*m�y璙-��3�SZ��%ʷ�Q́8�O�e�R��I�]�N���P��9���U�}��L39�gpÿ`]m"����V?�5���`�7��L»��aM=�pȦ��'1J�˔T0`O���l:��nWyE�,7r{_����4��:���,�-.���S��Bq���v�cy�IO�a!>
gf~ݗt����h��8�ba��
+�䳈��4Z�w�=��F��u��.���P�Ľ,�ӘF|�����G��,�B���[�β:���-zr�C�����}1r��Ө��{.��_�I�ւqpG�g�j��?��ar
�}�| ��졚����A�J���#�c];�Љ4N�O�� �`��r�	i�������̦��u��M���I�i�%�ac�N"�A���T�b��\���%}8�t�j��!UyS��S� �6.�-��/P����RT"ac�m��Zv|+mޑɘ��'w�d�a��K��t�l��^@mP>��K|��lGՌ�����H�v�P�'��<���l:��FU)�I�o��p
���;��m��͚K�� ��\�07z�ܐ�=�Mw��F�\Gf�|J_6�"2����i/�~0��&�{��_�D�V.�J��M��t�����i��0�� N��
be�ù8ˮ�PR�`��?�-��6�:&��p5ٵ��|�^�>�J�VH��1�|�<ю��K��Bd�tQ�`6��HB��I�V�[��l�;���Z{�>C��q�ǋ3>��l�=N��(��B~X�����ct#��Ň�?��p��'�E�:�?��aꙻʩ���Wa�|�HY[�P$I��*���CX�x hҡ��H���*����wz�ʝ��A���7��X��ow�P� "��/����r�/]���kۡ�BA��V�sB�
(	n���a��jxMX�
�-�Qa����^ %'��b������F$|��V��74�g���ƀ�i��
��X<N�%yEB�dV��%�v�a���3!T"� r�-Dd�!�F�5�)"�Ƭ��D .T�\B���rY��3T���sx>*��ԡ�Hbؑ�������-�P������u�υ\���  ��E�!Z�����,�l嚡�ݹ7f�j��[��067vc�W��fBFD����NQnʅZ���|�WTJ(���n��N�3s�R]�ܑ���M�<���W��3��#
�B�MĂԹ�|&�|~\;@�˒�����|!��&�h��~^�3�W��;����E��Cik��(GJ�Rm�p�ª:��B�l/$�kc=Y�c����'�c�6��E>h�et�o����?X���fʲ�av҆a=���	dL�_Bvם�oO{�]|K�a��Q��'~Ⓐ�?Tg�7J��퇠8yoۮ
���ܣÕ�ڦ��Q�o�q��+]�
�#��'�コ�k�辶؄5�-�@>�F�^b褽��u�
ұ*�PE��	���^_���-�7�v�(�p�L��y��|,=>�־�9���އI��W�n�ۚ��P_Ac��]���ם�Fl�|ʩb<�
�W��=��򥭻XA$�54+WnB}o�x2��]����K�!D ��@C@v���P>.��=*RRX��d��5���y�7��%�P��'��W��>�2j��DA�.���;�I (g�>�<���ux�P��A���
������֑^?N���Y�P"��������HW����<3}��)8�G�Og�ARej�N8�*m��V��,�����O�p��HU�����P�Ȅ��Z���;�4��W��hhq�:9|���b�@�=7 ,�V���?p�.�Yn����F_���]yF�,^V�/�KQ��=y����)1�ݤ ��tպJ�T�N�5��ѱ�tO�X��S���!](s3��=�%�)r�\�)�����=�`���z����iMx
h�^>�.X~�r�4j����2���\cs�%aR������?*7��;j7�Og5��#ѐwae~������d ���`=86_���
V|H9X����J].u)L�_a^�%�)G�M�&#��V�|�t�B��^)9���ğ��~�b �<
��e&hC>H�F4���$�z�G���lLL!����0�*'��'�FXe�6y҂Ӷ;�%mC�mc�6ihC��.�5��Q%=���t�F���Nk3��y�x�eɂ�*�c���5�v�X@0�����`�3pQ�I�'��fa7�Җ�`@��2�� �z�|	�������xn�6(AS"1��u�Q��Tt{�H��3��]�����})�vD�8 ?`�n�ifԬ��'@P�C�������6��+v}W����C�R��J�R�#���Fg�O� ��*�3��
�>@��ʞ�Ԝ�N�f�sv��/"H��T�0:g)�ك��U�;�
�<9���F=9m<�Vd'6����Ց�j��[*E���
[ID�$�άb�'���H��$u�� ��z�̭����D��3��8ez�)�Ţ��7�@���� eb�r���E��H�D�3�wܯ��G�i�+�R�-��9�'�1�IzԵ�HA�d(�97X�bS���@��堣��������L����4㳟[w7�R�JksYz�� 'RLp��mj0�R:M�c��y�ʤ0��$<�hQ][�;��F��a_�=�oDq<i��3�<�͋Y�y'I��&d��0i��/{��U����X9�]����8�1�WʭeR0U+Wz��}E�yIw{�u�5�dq��/FE۠fQs弑ܓ�rq���$%ɺ��I�����ز�/��Y]DO��P��~��
�#��C���^��Ec7����+�z3�iM��%p(2kh�j�f�l�J�N̉*��������}�P\��ɥqP�"0�T$��, ţ`w��	1.���Ƞ����&)��6�L#�ʞ^i�}�R5�b���%M7X��̯SJ3��_�%s(C
(���$|qY�I�0?��C�*�է')�Ál�1I��%u�~I��caTw���kE ��(�r`�?����ƜfH�L'eV�`�X������jQJ����^;�KY2"�Rܾ��F�2?P�MU��<����&#�(0tyO��@���kLR�Z��� �iE�����GΖ�������\���1Q�E�G(TH*���beM��g�Z�LZ]��"�(�T����K�	#툄/z��fC%�s���/l�I�X��9�����_(ϸ�h���������k�&)�������h��5a�k�ɠ`V����m��Ka�����T�m�\B�r!��1��ظ�H��p�r�@��'���ľ\:�½�K����өoD1��	y���'N��,��=���dU�������,f�v岍N}�aJ�dT %����+k�MY���ZF� ���!�|��뵎��i�o��`�R�2�z�3���n��(�����?!?���f�ݚ�}�c�CX��c�$���R����K�F�t���x`	��
�nw��ܶݫ�)'5Wp�����b{�a#�-�r�X���
݃l�e��
Č�n�����8�dY�\ef�6-
��0�tl��}O; �r,؄��8���U�MG��s�2ܯ{j�k�W� ��K�zS��(y�An�?E�4|��r�P�m[�MvA��    ;�bdӣG���r��Rzh�Ȫޚ_��U���'І���b����d�8��{E���o���F��WN~eY�'(�@�%9��7�i�����JfM8]1�
#N<74�nEȠ���
j�;0��-Tx�.�5��V:�U�ă[���d���\$H4����U���A�,����T�W�o�*�F!7MGQ��R�8� ��M�K�-��R����ƥ1X�$��I�`�T��J�38{���t���C�*�2��-��T0k;|�\q�8�0W��P���|*����)Լ_Ud�caW L�Y2A�|�+Z%��HA����y��t��L'pB�e6)r�M�=��'�V`q����n1�X���9OȄW�o&e�[��S2Y����D F�%r����ۯ�����Q���5OA�M��|q���~٣nf?������RA�k�)��k���I�[�� T��I�M��ߡ�ɨn�%�%	49�G�i�+��cz_ D�Kbf�ʈ����rq��"�Z�4�4
ȭ} �41�9^�i*,�ʯb�� N�վB׼��;M�����{4M�����C<�f�*��������j	|t>��D?�2$�����X�9X�Н>���c�;wg��[Xϭ�6�"� ̋ϡ�b~�\���[��=���n����#��v�'�1�.�	�P�`Lm�lNF߿������>������h7�υ�����vɍY�0�fQP���W�^4�ӆ@�`[�!�'�N�W���/0X�yI�j|F$��5�wʀ.��Em�"�A���k��X�n�$vZU.������4�bs�"�w�LvjL�ud��j���@b~��8q{�>,����q!�2�ϧ���p����WԦ����ZN�@fK`�~��4�6Q�+�8�R8r7X���b�'���ڞ|	��]��KPJ:��a6��QC��e�$�zgvko��!���6��붳C�N����v���/J[�����aE�BJ�g�6�
{x�U�a[Ѯ�$n{(A�¶�/�^Z�e���h&��	���AlI���׃�C$�ȹvaG�{0,y[\V�o 26��F���VC�[ 6�2M�0��y,���H�k��;S��K������ω2xI�2��=wŏ�S[1v$�2���y,��7�KU���4�` �Sa�[�����K�V\�*C"��N�P��}<>�l���(>�f�5��)��aB�aQfF��Q7(��>��߾�9���zn`(ڋ6�c0�h�Ё�.Z����	��1��/M��a	��gM�J��z�,��ZE�d�����`|-��lב��/�@���hCn����2�Wv�M��KY��Hr��#�5���̠작���k�Q�> ������3z7|QG �:�F�(��$��^��70"�4�ס+���K�lP��*�S|棪��s��[�q�GH�<*M��!eۖs*���2���ۨ���M F���A�rFwC!I���e^�S����јc&�$��p?���@rO&*tiu��=��KH����ОJ��0��N�(]�������C�[@��6n���*,����0q�Y��Tgݰ�u?���딤0��:k�@��+�&cC�T�%(�S����a���O�ύv�츏,8�&��Ld,14��ܨ�
�E��S�,�qME�X-�Q����HD�F_�v�}4�"f����,4�yS�H���i����o�����pm�hD"��&�:;�&����d��9h���)��.�3�d�YC	1	��J�0	��X�1i4U�0I�P$@��CC �т�R��OXA�[@� ��$�o��#=�|� F�:�D0����U*3������p���\M�*2��>�Uƛ�Z����H�$<��ŔF�>5�~Q24�͡5m�=T�u��������d����^tI������H8�朽�f��+�(�FǶ߃鎸���WE�`U�UՂӦ��%����:�Pq�������u�g?�K�Z����yCB&!EY�3��=:�����荈.;�l ��"���Û���?��������ƍ^������N<[?��&����.�;]緵D����q`������qƶw� =�e�d4��:q�s'!"A���Y;D���\"��q'o5H����%��2K�J[�'�����"6@�]:���,�wNİ��k��%�e�]�._r58C=.o�����"�D�Ӎ���>����$±T�>�[L��� =���hV負ڌ$�<t��Jd��HVM�[m^�d"Y1��_��g�-���{	&�����֎�Hp�c��/vr$&e^���� �J�� ����e�I?�>^�	�[�%�H���
�<�Q3�o���\l��%�"j�n|	y�,��Af��~��->�lu�����l�IB!��U�
��{���u����Y�ֺ��'{m͓7���Xz�9���e���WD������|�N��h��h�Pm2�s��r2m�T��A��e��#�kon� 7˲����w��4ܸ+!~0))�uT�c2���Xl�ר���n����*H2e���1==�]44���*�+���9À�#C
��/�����;3�AU|Ty�,JR��:\���)�+�Y�Q�\c�2�͎d8�V�U�����(?����TN�눥Ix���"�t׶��{W�?�;`s�z�S¢pE�uW��Q�߸�h�+¢�b�.K�~��RM��e�*��<M�Q(O�8��T�Q;�d*��+P�#ی���z�!:)��G6��eRPg�Ѓ��8���o����O���ͳԧ����>�$����y�ln�3)|�m�V���?9ho��=�Fُ�<�ΩL�֙��3|�A�YЇ��>���U&bW2$E��Dx����BD�5��P���`��x�D@ќnCJ��J{�E�C	���E�I���!���_$9�5:|�!�1�ag�nJ�Y� ��ʳ	Nu�#�A"X�����|+�����$vb���C�_]x�%��^?7��[���m��D��������Q�˧X��7�v��SF!]wO�K�(D{<�hr��y�E
�m^���۽�_�U��D:�&��Κa�%#w�k/�h��j$Ԡz���%Ӹ�63@OE��CGy�"����BܶٱO��yOs����י9W6c:��7�J>J�xV����Ե_���[;��m�J^�'~<!'b���Ǻ΍*}ݮT�<3��g�����<�t�`�2S�G�o��h��r�V}�����;<�⛰��@�/��W��`EG"ԬqD�\�+����������7��m��M6E�̬���X��;> ��I1{ni����!i�L{���Ε�h��W�L@�n�Fb�v�rE�s����"Y	�h�:/^���H�_�Df�܁JTF�3la��4��h����o�����42~1�nY�?�8���4����e*�����s���P:ת��U3^ >�G{K�wا'��k(���P'N�ϖԎ��b����vU8�3(�[�)�1Bi��w�����6�����/�E���"�ƾL�PF�p����]¢� � ���d�A��`~U\�?�'��u�uv��m�k$��J�O���1]����.;��vMYܶ�Rʡp�,>��GI�7O�.����,�v]Y���-�� ]�5t���.��"���G��,�M���+��r�>������Y���M5���<a�oղ����/���j�eXZq��z���ޗu�����M�"�J����i��GqY̌��~��y�ޕ����\�ۭ޴]Y|����i�v�u�\�/n_��VM����*�fa4"�i���v�T�7���c�iwYtwjg���~�=p��lm�`k�F�����u��U1{-��̢8�z��0/#����0���|JM�caB�=ha�+��.%��g�:������M�Z�n�E�VU.��T˶9`�S�B�e( �CgQ|k;���gY    h,-��T@/и���Hŝ��n�����1i�F��x���a�WB�I���˸o<(�	����zݕY$�l���
$j�������>V��m(,��$,L�v���Mǰ�`���e�E�=��m��Vu[�h8{�^H��, �T���?; ��.~כe���lU�p�:0��$N��"&?�'����<K��XS#�.?ow��j�,���dJ�@��w�6;��`��fw�H%��R�i�����s"=W�F��W�~(M�� �M���/Aς~�k��C���o���8�줇3%�\���Ƃ�@�Yߪ�W��C�wd��*â�#W��*�n�$����oգ6
�j�,Q�[�ay�g;�3��ⶸ;���I��S��b9�AtW�N��ZvKv"M[�|���(/tF��z��TC�c_A���W�6R4%����2�!��H��q�r�b�A��-W/FC7�����D������@��@��G�$\/_̾7q����eف�Hp�.R�֟2�w��U/�At%��,��]8��l�e	�����P�a��mՂ�
�Q�6>�r��6}W�;�h��uߕh�~.>ʰ�e�~�=�Z���5�]����1H4�j���Q�?�4Ͷ27�?s�"0����=�u�-Exi�<lp�b�ڝ�b�}<����5�F����D8\wew�hͬ&3�e�4��ٳ�����gGz�_����$��*�>�߷�'�:A(�F���"��.��v��p����1T?v���$������ABy������\;iA���
ѷ�m�F�=C	����f./GV?o�6f��tY����sY�~m�$������-�Td���,���.���A
B�w#�4�������u�Id ���ʜ�0\������F���;>o��iB��h���,��xW��#�v���w���[�X��݇�I�o�b�F�"i$���ѫuP"�^s��~�2��.K�����-���W"k�_Q��A4	B�}PE�u+������VB�]���F�4{ �3���#)�}���Z�ũ�T��Kg�^�������ve�Q"OA��]Ի�3r���� 96�hG�Lf�_��1&�g�(�����H�#f�/m�\Yï��X�ujԨ��v�@d��w;Jv%�ژ���]�7J��n��3�fN�51Y�E�������'Ǆ%aY��g7�d�t�h�$=>4�H|�h@Yt��������v̒F� -���O�D������y��H�f��}S�ԋ�h,�@��3�s���O�����w�id�5u��SOǃL�$������������X2Z����H�!��<.��Z�>�O�h0��rg�y����fp�o-��^�l����-:ן���*��kX�_�$����i2�.VU4S�*�w�2�;�+�K�;-�Fi|C�5�٣9��ƻ���\y]����{�s%U\� �"��0վޛK�i]c�٣㦸��}٭uc=qٍ
�''b�����\����?]0,��n�ed�� ��QŬ7�`	r�>��Ej�
Y\V�Z;|��@���z���$݆12o,?�J;�Bz��6b�3MLr��=c"�3p��Bq�;��L�� �7x��b��b�Z��D
�|KU���e�uqK���U)Ҡx�N�D��nT�1\�yQb�HX�*ܴ�୼��U���SP�;g%������%����k�YUf�Y�������բ#��џ&��� zJ�ĠQ���ب.ݶ_���wL��n��һ�j�e���׷�U����SM@�͊���Zm+݈��{G�9��C�F:o+�.��
S4/Z�Y񩸬�����S�
�6P(!�J�����M��W�m�w��O&�U��g'Qҿ���ߗ��VO�鄳,V����ʼw�~*�ip�?�Zm�h99?��y��iH�/�4!���0>��|���{�w��<�)��"�G�CFG�O�m��ы)�耇yOSіҙ�uz�#l�E�7	u�ks:8i�mwm��Dk��-���Y_��� S�뽈�bRٱ�`���n�Р��U�<-:��p���w�\���Sɿ���ƿ0��t7R(p<�\��_A�Ĥ'�"J���s�4��m4�J���Y�Ö�>����T�;��1s5Ğ|��[��6XJ��(S)���ﰬ���!���+a�&��t��y��vW�Yt_��v]��7Ht��ٵV�?˼9���b��=IqGKt&=�z��K��meQ����������Ľ1.���JJ�i��)�lN����7g��{�3��f59�!mm��%D�Dz�;(.��O"wvH��'PS����$�y��/Ui�_#͔��g��Ӯ�I|]5�v[9y��F��oKz��O�����Ut��Dm�����>ECE��W�NQ���'�S����X3q����;����.N9��vQמ7�8��_E�+��<B�(pӆX��)*�q��wCo�e������� ��m֦��d�#��Itg�4�����l�P61a�k?{���)��Y��I�8P�^�5�:}:i�:-��$ii;�L�ߑ��	;����Υ8�N=�ť��6-��$���O��C�Eֹnv�Oї����Q��I���ҫ�,yY�F5:�K8���,5�b��Ȓ~~�͆�%����_@�V�i��rqʅx�	���%4�h��p��+(]�dسĿq��K�mњ\�r�%?�4�B����L�ۗ�W�*�:��w���,�KX�l+D��

��%��G��m�`�6o$!�E
�nU�/��6��p<�!Cr����!�=���,.��P��L`3�)2L�̄'P��U�����|�����z.�]�SgͲ�����mBXr��T�+�?���L�l���FtWao'#�*�2T���<x�C����Ä	����f���Q?�0�؜�N��<0�ם��/22���d�>�C��*ل�jkEy	9��1e�nc��g��,�R�{,>�8�1K�b�c?����caG"�	~�����{�ԺJz�7�\�:����A�h	�:$�2�x� 9���Biq�1���ʹ�%����B�sN�	{	�V�F�0*GӀ�������۹�<��U��.��hcF�!/�<?��~H����Z]S^��wC�r��~A�zS����H5��/��w8Og�D��!{a�O���Μ h=V�N�W���VV�<B�]׽�����~��۵/�������f�7xp�C�$�u}]�{�O���@��Xyc8�/i�3r�r�Y��#vO�`2W�1���Vύj:�t���������K���؅���]�rsb��V�������O]��G�Z��d>��o<�cY��o���0X��s݂�у�M�ʊ&l���z�u��r���y��]�+$�ѹY�����˽�,�~ֽgȣ�����:}���)�s�n�o(����s_[������g ���
�&��>h{���Nm[�;F,��,�`��Ƃ�X���r���Y��xͨsY� ���c�~�=76,��tlg�R�eK��=¥�q��8�:Y.i>����Fj׎����Y>�eO3����(��2f�g���@n	��'��3w:� �ۙX���Km<x:��8k���ƈ���L�7_���ŝShl!��hHϠ���KJ�̶Z��a�K��BH���'~έ%
�*�3�!X
���n����|�|�ZmԖB�nU&���z��9��~]ۊ�Y#*[Tsw.����:V ~�C_�][��I�aC2[>��04�W{	�ʛڕ��������?*��l( ����#�lVw���'ߗ�&�N�_��)+�#q	Zh���6��(��c/q[*~<�p#b���
i�#}��=��
Xd׽�%��'nξ_l�c���~n��g�I���ݰ ?���m�	1ͲVD3������h,h������`�E��-���)q��*��]`����D����D�@��%nr��x�ݵ6���5ZR��"�������*�t������t�g�ڥ�R�    ���9/�ֲ��x�����;b"ml`-j.m�kߩ��oQ ��	ʃ�"S�A;,*L�$�S��(�3�����+���3�ޗ�-��� ��c(^�s3~�9 piS|��X����v_��0�(�e��Mq�x"�e��U�w]�K�̸����ܲ$ś���z��,����o+�=��Bw^����Y2��$�HzD>�kiG����t{@�������y���K��m<b�&���m�"K�p8�|��VR�;��|�[?����\c�KH��=��H���G�.6��G�,���W�߾hsm�{ ���ݕkJ�|�Xu�`�����~���#^,]�,���[d��VP��H�峹{7��	T�O�8��dj�D6zY>;��������/��ɰ��g���d���WT�C�D#m+M�8��Y��f�#yE�҆-Z�}
�	����^���z�N�Ua�Dd~ ���x$��{]��qⱸ�7�%��ctqm՛���4�>�^��?%�`�����>�:eM��y��+7i!?��ט��'�%��?Z�ev.�f>�sb�1�LnJ���Ȱ�l�h�Ł}����뼭�����Ysv�D�j��k��`¥�ZG���3EA�s��\��f�qX�(��"^��k�M3U ���w�P��D	^Sc4 ��R�i"rPH�s�)��F�.��wm�Y�ۻ�H�K��'9*)N���s��y�>Y��5hz��t�:�	Y@�y�|�!@�B�pv����*:���XMT�������
����D��7G'�ߩ����?p���t�C�)�Sq�?��'������u6�������5$|Lť5gX/�/�-��Y����d_!Z�Zk�=�p��v�3���D�3�}Яu�n;���k;/��r�ѩ�U�G/o7#��w!�gϝ~�����͗�� ����s�^�M���#��/H[6�·�8��uF9��8�I$�r�ř}�����<I�.�G	&��He��sI�em�/���(�[s�d�3U�<ac�=Um[�n7����>VPU@��#�y�P�mwNc���Yn�EpU���ѵ��v\��Ұ�'�ó��B<ˣZ���������= ��A)s�1θ�j�1W{.�6��^Qyxۊ�ݦ�4ݣ¸f��.�[f]o��0���SG๕	�_f0�j�h?3�Eu۾6���F����)A�e����oBOetk�Ж�g��߮H�5��l|���U�Gx�Y�B^�]o�h�6�SȮ��W�?N ���l"w�e`W��9q�宷���`��Ǻ��hM�Y�\�4r����$���!�����# �|,z�"!A��P��d,�y�vǠ�O4Z����}�n��|��l���G�N�v.�`~��f�K�y#�*����p[� �oe�������4[;s����'�,M�����ȋ=[�z����L��e챬{:��f�zao*/�gs���ç�}1��9>P�Pe���Z�kp�����T^��xM#��q��.���7�M��s�]U�ȘApW��韆 �T���VmCw�YF�tO1A,��Qzz��MM�6�ڝ�����~� �fCD;Ja�Гh0L3����yq�yoqE}+�\)��OD2(��]K ����vU?^1�5���s��f�ֵʥZ����Y$�J�d?�0��Xt�KI�a��s����=��V�ݾp<�n|�A�-���
=��#��H?3���D�8"�o!������^,�_%�.��	;&�lv���'����~j��c�:�)��s�#ȢX�FT<����꡸�]����ω-��\�
2d!�u5��=���F�?a�^�Ţ��-M�G<3�]�I�o��2�0!�p�UͶ�"F�s�#��I��n��H/�#�B5�F*��Q'�o�����,���c��n�"�K�s[yy+��ڹ�F������A��r	(8��r�?7P��l���.J$�pa��0(!��u��ͲDU�]F4C�O)hH�����~��(Vn(f��o"/mQ�5~H*9��K����j�Kt�:(�T�a�%�U�]�(Y4��0|Bڵ������Q���
����dؓf�Z-)����m9���%����~�����,��<e��z[z���O&h�PF �����J_�G�r7d�r~S��%h4���گ�>왑��^�s#y�=ʱ�B��b#YG��2���c���~�9s���3�r쐥�1��;�S�>�IRB$���'�g����������7$��Wo�e��ѵ GEp)�?͋C4wF��\$Ì5�ڶ%K�(ÌuWB����Js�nJ`�~`9`L�S(� 	��Rd����E�c�ag�o7�>:þ�sU�C0��`��!V����^X�fH��&T�vX�MD�G��M3�Q�b����uU��&�g1���Z�vP�ߘ?*zC���:��}a�u�k;ݯs)�zW���0��R�HLB����p&�7�e�&�fR�e�e�sh����M�Km%����7�I �*��,���_p�����f�u���2�p)�glp���\^��ҧ�J���v��?��_���������\^_
��Q%u��4�S���(��y��(1α	t/=q6���3̸���_Z�W���4Һ&�;9$�yg���I̮�����|���Z�y��Ո���x��/_C��r�H�<�O����v�`�G�<{n�L�1 >Cvs��#�������ϰ�yv^F�8���r��������-�3����MR�^�-�uwl���!C��	ud�2F���3�S`go�C�^���[1�м/�K5�3,F�՞�z�O�24��X�/�F1�Ѐ��;�����l��B4��1uD��F�[���Ql*-ow6�o4���le�vp���O�I�����M�`�����7�~r2L�z�;'pM_?j
�(:���D����������/P^�.c�zi����u	�ֱ��i�x�B1ϧQ�V}
���ϥ���>������h��˔��0�Z�߃���ҟd��nQA�cڇX�[�0�>cB����X��a�G7�	���\D=w����f$��_�Pp`���$:��p"=�c��́b*Q|6�c��/8᭪w�y��2��gi��&����/΂>��d�3E .�?��	�e��=���c["	>���i��-�@�*}<Xyldp&��P����PFga1r���d���+�p�}o��5�����V+�E� ��B�K�`Z�tK)�����O~��`|`Sr�|!�w���X#�Z��9�Ha��jM�2��{�T~0�W�|����\x���&0�����2 ��ֽ��	�Th)�t�u̟����(�nh~￁
�2-`G7���e����vi�s��vI[i7v���HIt�1P �ܔ:�����	��٣U�*<�1ʭ�d9|Uܾ�{�(��|kw�3v��bĢ�;m���x�С&��O��j/MN�S�*�:߄?�o�£��m`���Ŋ����C��c�~"�k𼬠e����(�Z��!����ѺTYC0�!��K���>V�:�R����l[�N5y(�H<Z��(�͙4�ɑS�`���fs*�+X�U�]��Ȃ^��83B����+Lhq�.NB����M��?#�w�P;����kW?���Ľs*�@)�&�Rbk��چ�סl���tw�q�M��`�-,�kh�C�C�S���}�H��F�{я���\�*!�8�=ّ�4��;,_�8�z(_X߰��su�)���œ��#UO�lt�5�i%���o�lc�⦿)��HO�&�K\~'�@�t��-|q_>UM[��{"7ѵ��5�:��OT�F��Ȥ-���>���5a�7u!ƻ\
h#s���s+nӫ֨��d�2���#��"��X�ォa[)Mp�$[ִ��A,�(�Q�e�o|��i�3̸F	%S�X���� w)gVd����c/��ߏ�De�c�Z��	+.�5�z�� �9TE�՚gK%.��Jx�U������|��c�^8�D�l    ��d�Ԟ�l���E�.P�+k�B��coI�`h#�E��̻E��:f���N�l�ag���)�����K==C R�rd�؍jO'2��	��}t�gc��@�I�-��&x�.�����g��:�u��з�q֯�l#�)��l�Yk,�~�����k����Ҋ�cY�ư��^���үZ2��e+ˬ{n�HdW]��|4��f�ΔU_ǲ �M�5y."K�nM\|�P�����vs��b���B�[��8\}g�������O���d�/�0PY{�$C<��n��2�U��v+<�����v$�B���Nd9�[E�,�<8���?A2�fen�&���Ws��
5Ȟm�����J�A�T�{�@?���-Ϡ����&��߷���ɛ�RϿ�03�0�����l�Sy����\���AM������ShCH?1�b�R8�4C#%��.n�ꦤ(��|
�2e�DT�2~Q����A4SY�V/��SY%�.�k�b��*�\U �/�,y��Ǝ]6�(�hв~��s�[Oe�F�[�L6�u�W_��v��:������]���a�Y;�W�_9f:����_@�)fU���u�_aUC~1����@E��ʾAv(B
���զ��a�S���@"�,.��Z3����=��޿Z�Ŀ<~��!��s�#Cѝ���KDVp[*'Le���-�a�ߑR6\��[�b�>��m��7���]����Y���5: ^V��Me��]`em/SY9�X>V�3�吉~�� ��i�*�=�OQ��ٰé��D`D1x�*�C^��g	2$���':�v��ۼi�U!�)4�:Y�h���e� Þ�CW��"s{�c�n;�?W���=Z|��B�h'm��({+��,�(>������E���rY��b2��o��mW%mf�A�����^���e�M �����1R-mnJV�j��;kj4|<	� ��3U�C)~�w����C10��b�~�J\`��"co�V�lƋ���~�#1���0@�� 3��_���hu�[�po8��r�N�{�/�T�=�X8��P
�����0����yQ~�P�k�=�H!K̻!�s#�)�X~���E[��fu^FH�?��8�bI�9�d���6���=���gC)��F�V7;�g������<o��"���� �;��Q.Đ���;*ɇ�-_W!���� ���ǣPhKK���y^��M�ly��ޞ͉�'j�3����r���Y^.�?�3d�α�x	\�W� 
1�x׺�ŧ��_�٪�9�9�݋}�P�3/K3�6���_��OaO�D�+\P��=t���Ac�}�Z�o��W����w�,ܬ��E�"?$(.�X,������������w�k�Ǿ^͉�b�
��Q�֪��B�ϖh$7��Q��Cl5�>U=a�$l�2*�ཱྀV'���_z�Y�­�g��t(دZs�^�@X��f�@0:l|����D��H;̍��!��Ag�5Q�yJ�̨�-;�rк
���.�
[�K�[��<ǔ&�V����;z���TX�Khy7��oClZ�ό�V�h��d�a"�7�#q���Dl7�b��^�����Q�~�,,�ي+Eu��ؙ@��$�b[�>�1L�Ÿ�����,���@� �ͩ�v�;g6.�Yk�������~��|�x�����g��oNA�Z�,�7փu��Oǀ��7Ȉ!֛_e(-�j�4�PVZ��-��@���u�e#�-�}����&���Y�ԝ���o��7�&��$��:w	 M��(��g&ꫫ�Ѥ&��cqW\�P#վ��t�������  Gi��QCbn���Z�E2�FV��8z~qN��ߨ�Q����;���.A��j������&Aj���#,E�B��z���zQ,	��;W!{�Uһ����6ۍ�ʚ���)4��Y+ER�4��.�,��\�k�d�DX�˟�v=}� @�I�p�9��۽U�T~��@ D�U�f��)��@��b�;�R�;Cc��cy =\�H=>�)/�Gn�&0����F�܈�V��E��V_L�՝h�cf1�=<z�/�qHm/{^��<v�H�f.��/�"
O��7[s�j(����5�qO���E�}1ݿv+��#c0���Nد������z��x�x������ȧN�@� /�B2ʧpsaN���aUXXr����^� >Ѫ��~�eӑ}�J4���#*Ӵ�}3ApW�Ӡ�s���^�^A�b�[�"\�2n�SѦ�p���]����g�SC��5�L���ʸ�3��#D�ַ�*=U�8��wt�	F�Ƿ����RF�V��~�mnȦ��+�������Om��
�f���Ҝ�Ϟ�L�|�oI�
Y�9�+�y����[�,��v3G�]c��]�F�����#ߊvW�V����K:ܙ�"�G��9�H���%���o�"��y�[�6jcq��շZ��5�*�w���D�]�8t���dĔ����`j(~�b��k�k�(�p�^W:AQ[7.D�j�_xYq�4o�=Ɓ�b���n�"w<����K�Tz�]x�\m��g�&��^4�QVu ���YS�jz��N�4Wb�JϰٽhZ��V/���+�oi��ۀ��1�'��<��VP���"�'$����D�!�|LQ#�o���k,� �$�e���'��s�W��I�>�dW캂�:��K
��,��ݦJ��0t�I:�j3	��y�b9bv͛�;�)"ܲ�_�`5I�(��0/���[qj[��N���w�C�c
��"���SǴ��e���9&Ũ�Z�m��6�ЊI�um�k�����ipR{p^�(bb�j��=ç9v���~�4�pKǽYLsك;J�Sx�� )�E��"�[D�є�]�9��t��jv�G��19f�Ή�4��e/
.s�1Ep%��5�1
����L6昢!&�Q�c�{�5���I�R�2U*�&�f?'�f~��ܿ��ʞN�5	PO�Q��@p�K8ŉB�bZD����(hYU� Sp�4e�������[L!"S�'G�)Ld�ϯ}_����js��|L��SMهc����M�]�2���*�s���Ӓz�����ľ3C4�c�=����+bͦ��vuW2z����8��m?�0!��,�c��_����{-F�o�
��35ُL����"��BS�O(!V!�l�LHAЦH���OnB��C:��i^��죄������g�F�-
[
|ϯ���(|)�MXsޅ^�)�韛U=)2���`B\۲o��F�Io�(�*�P���biJ�$d����<��L&����د͛����"�⍱�	��ȘT����Mvj9�)�h����U�]�pݢlb]�1���p�7��Obl����OH%�5E����UL��y��-2�@�+����gJ�3{D~-��P�[�7�ڶг~.5��� �@X)�lu;�*��M#N8�+t��u!�=�((.\DrɊ}.W��31�M����V7`o`����h��Ắ|5��1,�p�R��K!�T�uG�������tDT�B��ኹɏ���4\롢dk8_Dg�ov��<��B�sz�2\��m�f��r�>���1P��Jԯ��)��,��~ZZv������eBs��eB>�#������C�l��dF�T5�I��ΫJ�{4�~��6�=V�ԃO��Rtjn�;���˸N�� a����+g�B��S/?Qȇl���t�@`��o�1C6RƇ|w�������r���\lCM"N�t��>VǼ����y�F �e�|@�w���W�xh5�&�����{Q�7=�oT�"�?�
��gqd�(A��4\�tL�`�s�y����R7�m��(p+
T-�p�F���=��Tw�k&^	�|�7-�����0E�k��7m��Y�4ܽ$�,��1ۛ��CE6�[[����1\'yC�8��r�db,��Jh�k��|D��<Wo�'� @T����<D1 �b�����U�La��:f�2~(���C~�E�ۮ|�X_�ā��hǬ�:��>���11na4���C\{��cMwj�S.IB��    ����6u7��H�Ye��6�)�~�J[��ʾ�*� �'��ص�ma�K���������,s�`v.k�L��.���<3A�D��}��,R;�#{ �$!�%]Ӷ�>�$d��"/�2B2� ؚ@���MsqllA��܁�<?|(����CI�گ� mw�Ri�Ye�x�b�Q�I�v&��`U�����&	Y�h���2�A��@�cE7��EЎKH�B�p����t��K�b�׏6��CI����$����٦~����)՞A�Gv�|S��_x�?�#o�>��D�w���/tn@Ȧ�ߠS��k��-����:���))�}+�&ˏ��
��x�^*�ͿJ�
-�5��8���4����~��u�4_#�Gy�e�Ւ|W�^�Ξ ��6�
�D!/�ĳzZ p�����xS6m�2��#r�(��,(��M�љ�w���E���v��]��4D�XP W��ٲ@4c����4� ��*lϒo!�Е��x��>��^[�L�E��)�j��"
���-�^��!�K+\t��ZFv)��"oJ�Fw+D�p��l,/p�2�T��??DЮ*��� Dʮ���Pwܯy��ոGkH"�\���|�0��dm��Ns�k�d�0���>�s���d"�7j�)Z�,��n��F���!�x+ZsqoGp��-^��,(B��N�������W�Km�$
a�wceEA��Z�~ ��a]F��~��l�!���)���(Dݩ-b�'|"/��}��a�P�=���DF�{����"cH���[-��i���)r�{P�(�-�aXIN\�6'��(�F{��!�rI��NYɝ
���+�wYJ�j��}����C����&��W�^��YXH�h�� �j��v�
2��:��Iߧ]DA���H�QR��x�m�+*�+�"�?�p,��w�6�K>�@����J�}��ftv,L�ׂ�(�y�f�B�"�En2�kM����\�A��y�{����}V�0�EP/q���Ӭ�)vG��G?��\� �)�)��ꑇR	2��9o��R_C���HB{�:��8�_$F��c�w��s�lO�W��>/p3wx����_"�#>�0h��T:Z�/pS�C�o=�AT�Ą������A���*Ek��"8v�UȖ8 	�2c����̖�(�;�
Y�;~)|�я�E0��Q��e}BD�w�v%�ҳ�O���Z��h�-�M�8vm�}[�A'�@E�cMZ�i�H�p�^��V4ϝ0���B(�d���<�Ǯ�ެ���X^�����FK_:��k���^�Ӑ��F���e� \��+{ˠ�RNS^����e�L�̻R�l��a�"d*x���p�'!�t�-���w�J�<R��;5����薝9_L�_
X��SF�x��s3m�.��4��DY�dcF;Ķ�UX"�������Ɏz�������%�����D���<��i�~+QK��P[��W������\��)���b��ݼ?��?�Z��?5�t�8�}�w�����]q7�����A9�q�
^v��e^?�O4���,��������������<����UH,�Xc��H�s�;���{̳�1�r�>h/4���FB�f�y���7�A����~e�?l��'���c_�3:R���1��'�> ��mg�S(pbd���5L��݀��w?Q��3�4�S\�^X���i�;�Fl��J?��[�g���«g�,{�0ĩ�F���/}�u�M�V�&�O}�@B�U/����7Uuȋ�O��_�_W�9O��7�t��� �X9 �o�2����b/��_d�"�/%;�~�/H��x��HC����TbNH_:�X�+��Qp����Z�<U��J��s��)
���M�_���R�xK�h��L`q݋��>G����B��=J(a���q��=���SX�1�ͳ�	��;��y����D1��n�u<,�b����.�PN�	
Y�QWV�|��t���r#O��uN�\J�<�vv\��4�$��y�TR��&�&Hu؜7����a��Z\L��3ع��T��G�i�.����,�g;S���T^��S�����ȉi;>%`�
����S����m-{O7�@7%8�\��^��ZL�γ�umY��g�y��:����S�=o��K�O������Z��M�8{U�g�`)H�x� ��fL�IŁ�K���/�io	�x�Ͳ�PsO\��S���e�5B:%�T����@0�B.��8bT��S���L�2��J4�rJv��6�=+����%/�����Q6����L��mg2^=%l�:o-zZڰ��sJf�a��rR���ʰuJl��{�x	��B����Q
a`�`��|1��u5m��h�*��[���f����zU�"����A��B�0D���*�O����Ղ��:��j�A���Q.��O�_S�oe߶GM8����*\*�z��j�ڙo^O�t����b�����3�zy���������龞��ym��:d��HϮ)*h��Le�S�)�O�yP����G5\m§�ap�b,�������xKN���!H��`��hrsvY�oY��.Ռ��S����K/���-�Ý����O�?4���hr�t-޳�L䶟Z��VC#W�}�V� ;i�ײ���P��	�)Q���L&�j�?(��$Ss|�X\���&wq.Qd� r��re���(�f�U�n�Zv'K>�ӱ����we���WOI�9NO�wT����Ǖ9����v^Nn/�CՏ۔��|tG����j�G�9#Wq��QF��f4V<�����)J�ڸE2�	mRg��^�	=%��bjcq���/˙`jm(A�]k��S}B����T���y�酞PHJ1e�8<�)�{����ěO�������i�y�L]PL�cw��N&��[*dgШۣ��I��501g19|��46�W�;�����mլ��1鍇s��eA��(��X|��{�7�����VTj#`��/��37:�8��'��`��������p�~r���:�dB�Rڿ����d�fu��<z>�
�#�[P�.�"�N��$!$�ص� 	$�E ]�d����XS�'P�A���x��E��2�����DSQv��꿄�Jv��R�	U�	�#���7T%��N�3I��l��$�LY������
�=Сװ$pB�5H��X�Κ*�tvn��M���A.��6�}em�M��"(Ū����[!-i�D��<�Y�W��k�M�\'h�[%J���a��RUkq��v��e�~���@9q�<hm��-��Z�P��� ���6�#��}�~��$J�����D8�	Bو��d�C����DcG!H*��B1\��N� ��^k�_I�e^������z�WA�@]�=J��SŲ�lF�?����u&N�b�Q�-H(�����';AZE���X��ϏN~��/�1밅Lk&	b�9Á�%T�h����ʱ*�":3�.�/J��H�"�Z �MB�nBt��A�nA?O|xW��� O�d#7胤��w8��{K��U�b�-�������P�ǌ��:��b|���Ϋ������g'������Cļ�J#G���>����c=�m�s�M�(pc���,�a[�M��� n��Q�Q�uO�&z�㰭,�3�А�t�!?�k��r���N=Yn����-��߮�ӑB�8l�k*'��ݟ n�bťH���C�1cqM?h�ͫ���{�pQ?HI�6�U�Mí��'a,|F.0��$����'a�Q�.�FFI� ��9|+Ta�A�j��h��������x���q���	5���7�B?��� �=�ٶ�rZIlr
�@��Q�E��pH���'�y�LFt�&c��U��T*T])Y�PU�0���bT�쟕��D�P)�0�_$v�vTցd�]�O��WэҌ�2oBe�����b��B_���`�Be�W5�y��C촃��v������c$�M�	�/��Ħ�j.+�C�@�%xYI����/-���-�'�E:    �Q�a����K�E*�<���xT����ezf��S��{�<�g/p����Y�������D���,v�Ѕ����U�0=a�4������8]�r�Y�v�:���Ld��$�u�m�$N��T�M+��$�B�� {[�*���;��YT��|��l�H-���m ��j�!}#WY��0��lM&��9"E��P�&��c�8
���mB:�%9�O,���~�8
6��n_Y�E!��'Y -2�R ��"�'܀x��V�I(5�9�<���"�r�c�j�\=���%A��uT�^#�h	�O�b�l��w#x;�����HV�`�Ͳ���Lq2WO�'JҦ�NF�~!�d��%�78�e����"�=��O\��4��7�m;��P"۪�@�;�(� ���j|�EE�K�s1C����\�0N��NO�e�o�~����6Tߋ=�x���(�wCُ�������,N��!�X�J��Pr�~y˻��B��^4���#�B����);%��`*|\��j�u�����r��*n���ivcQ��J��g���"7
)�X��W��%�>�u��QU�Rb����`"�C�����E:nQ�A�Y�����u�<��hc\?"���
�z��%���ɺ0S���y������)�gß�ė�,Q����*�h�Y��f^�8�!���JYeX��@���L���θJ�8Ԍ�mIPJ�m��r?�I��b���=��sVdƘng��I�)�սlY�3��ӫq�Hܰ��Z�>���I��ވ#.;1M`����+��)��^��2�:I���t��i(P:�+��6L��Rj���bHT��n��5�A(��K�(�[O\M�HY�7H6�����-G 3M�{���6�KE�jo"�e`����ޥ�'M�m�8��4P�=u�<m�.p?�ՂZ��.���R��"Pp�Q��)B�����XJ-���UA��`�����2PZ�a,��u���*Pd����[���	G%֔�d��"��TD��rQ�0�RR�O���ez;��Q��oj�U ��Ż�`ƫ@��{�"���V�*����l�]�ց���p��!-�:�ſ�Y���ꡢd�u��������z�3���U^i͵��7Uk�lE��ù�d��:��\2gZ�)|N?N��wYa���_Mʒ8����hJ[e�_~/�<_!܋ڸ�y��?�vzl�'����<&��YW�w��"FI�`ף�]x�NS��8	��� K��$8Dj!6��$8J�Y%S ��q��u�՟fs���K�b�"8��
��Ԍ�؉�FU4���8�5���5ɷ�!hB���$K� %S�������Wz�p7��,cI>1��h��~����5�R�j��ś~G�]H{�2ƥ���3[�t�;a��<T"̉m�J���Ց$�Y�jT���E���R�`c�-�������PC�-F�-���վ��Y�Ռ��l/Wg?��ԙ��ʒr���j��~�{W�HCݳљ�5�ȻkY��EKe:9DQ��2���,��E/[i�U�@rh�����5�߂�������+���n5�y�έl+���������PIC�������28DG�sDQ�.�YٚS�ep��uW��$�X{�Z����)E|�È�*����۱V�����f�YK��\�xT�T�;;�o�_�`�9;/��+6{�/8�����vv��bOUt�D:�}�PY��i�P\�Tv��8AJ�@�s��Y�H�H?tx�����e��m�Rg-�P�)���Eh���[	J1�]�Ӯ��,�P-�	3�K�pv^�C!-Y0G��0�(���N���}�_̓'�-�¹�?�I�P�~��Wɴ����J�3U8�Q�jj�t��P������zJ�������4���>��gIY��\�.+��8��4��Ϥ�7e�fl�p�{Pa�����F��=���w>������E�N��T���ղi��u;[��1ßP���췯P)?�R�j���X�:́�?f�M��v�����tb���S�϶�d࢑��7Y�q�)��P����V�g?qdCJ�F�K'��ć!���k|�̶�m�A���(�)uL~��e�L5�uw�B�=�W�RumF-F>���4d����c_���,F ƥk�}_f��@��mmE�a�F �w�\�%#V?#(����c�^�h0#�e=�1`״��&OJr��^+�?���q��',t��_۠f���AV����ɰ�s"/�Vy��ɒ��|d��Ġ�bd�܉]U���Yd�#�}1��]Fv>"��K|�zr�#�}�_ÿ�)b�h	�hT����#������g߭���!M�<�R���j�{�W{5#�-!����Ɖ��jƳ�y�������ʮj�!H0�a�٥�XسJm:�=�Y��;^�v��s��x�莍���Ò<�(��gr��M�K��*T;f804b��WURQ5'R顦#wn��8�=)��ht�]���x	������QIrT�UWW>�?�i���U�'#���V��uD�>�T3��t�ݤ�5�jв���T�ģ䡋P���+[V�19iڈ�g/N$o ��3�����h+�aߑ��AY��էG�­�D#C���Ԟbl���L�ht�_P|��}5><�V4��_	Q 
>��1?��'������G�];�1�.Q�s�DeϜ�]&oٗ�����6#U
m�Z���Z����^<̞�
��cԘq"����:�{V�dl֫�1�TP��lQ#��7,"���J�����Uٱ+�MɈ�*�!�%#F��V�B���ۙ~���w��q�����yQ�^*�>�m����u�ڶ�Q�ژ��ޘG)����b�&A���Gƅ��F�,�f4�p]��ѵҡX�[�`�>͕]Ț~1:�_�ӑ��F�
O@�	`v�J�~ӱQn�u����Q*u�DX@���EU�d���X3d*=��Ȉ�ڪoi�kF�Vk����}}��l�򙠗��77�-Z���+ˑo� ľ`=��^�q|�A�R�N,G$a�u�ر��Fd�7eg�e`5j��J���20#ҠT6��f�Z���+Ѽ� �:�H�j�j�:r�������[�g��s������ۿh8N=-KV#�K��
f=CFy��z2�GFXi�7іL���j/풇Y�y��"d3pd��g�|�zl�}��]�7�p���\r=��e��<��*ЛB�6�XQ����y>�y�o��Sb�Ȃ�"u��?�={����y����?>l��w����������V���+u�������·ب/���I>�To�oc������` =}�pp`vX�Mƶ�	9r�F`Fx𔕼A���+.H	���-d�v�C�6�+�����L���6��գ���|dP�Tot�$#�J&f!N�����r<���+�س��Fw���uȽm6�1����b�r��g�%�� t^u{eN���ǋ�G�e�a���5{�V2����K�>��|؍�K�^~Ou��x
����%_�	~hhG�%`_���>z�}��L���.dY�w��A��E�����;N@�8-%�D�s�6��BL4�m�Z����֚v'K����d	ή�ʧ��F`�uu;�ČU���E�����3�X̞�\8ac8�]4l�ζ�o�������'�nQ9t���U{�s,]��m���zo{z����XI����h�DO�{V6J�m~�����pX�s=qN�{A3o[��jv�/\�_˦�m��n�n]��/��>j��{xԴԯ��+xf�8x�#�->�6ϊ6��z̉}�FZ8a�SZY��3�kg�Y����\vb-��2�$2u6�!Z��<����c���FU����?g�($O_�����jν��׽�GeS��и��X���B��{��rv^WJ/����\��M�:���s(��<R_�0У�urlj̡_/��~�
r��FL<+�6L���tvH��4) t�!I�}�$gO�P���e��H���G��1l��?W    ���~�[�����F�a1�b�W=0�)���)|!d]�{���|��] ��RE��E�G�\�C��t0ْM�c7w.dK���9������;<[jD�&0!���k�4h#�1��t�%�]���k��F������Fn��2�f	NO|
˼2v����q��P�t���@w{34�s��jJQ?E?�
t���B���s�]�'k�9�I�^��r2��h/��Ǐ��$v8���gy��

;�Bcv��4vo�DM�k�.��i]���V�3 �
Qbo'(#��6�l $8	�ϟNh՗L�Hs��� �5�殾B-��Ge�&f@!�>�0s�����a�_����{������ԑ@����u��-�\}As�$i[P�OS%'��	�v���~8#<��H�(��m��r��ʣ����s��~�� #Hsߪ^�tU���)(��'�B�c�.�Z%��ܽv_(e��ήd�^�����0�VorM�O��?����fɂ�2��Y�o�c�d�^�9aS�LH�LÚ��e�@��"U��iݳσ��^�>NW��)3�u���l�ʔN��:[t�6���s��q ��ɼ���p�s]ҫ�Ƒ��m����9�ٳ�[=1�J�u#N�s�u��tc��X7���ҽ��<��J��N7����Rzg�eo&d��A/�f/mU�{4��6�ܩ3���(���(P�-�/8/ی'��)/۬���(�[\�=�L�m:�v�?�b��v�,܆{���p�̝W��ǲ��n�<کǴ/�|O���$N�b�<{h{�G�F���b�A#j̺m�J��c��U0���+�p�6�j*�(��d8�r��^�i�X�^�m���+k�F�ywG@�$X�������,Ke���nke\�}�t<�!�����m:e�C;PN�x�ўe��������qĦo��QEs�ŷ����ʞ����K��Jx�G�#�Q���޶+��n��̏]��[�vlԈT�4�<�=�I2	��t�S}��eP��5W�2"����V��E'[������5�UA�����b��T߻�4ʳ1S{W-�ns�\����;n]����"��F�,���<��F�@B'��JS�Ҳu���~�?�]�qY�Y'K.�NZ���Qa�bP���1��8�d�Ea-��c�e�6	p�0|���M�6;�*�8Yoq�d%����������U��r(���ܦT�=r�.p�Q๞X>�~���(�gEb�}��`�Wn��CiM��{�5v][99�^�;<����R{ߊ��N.�)�n�D]y��ɆQ�V�,���5"��:���oѩeI�!��h;�M
���!��E��mc
M78�|��~�#�[-����/|�t����J�Sv��Ų����	>��㝒�����1��N����06��{�q0����{�hybDdke�mu>�G<g�{SJ'�/�,��N�������pX����펜������*��u�B]��}�Q�a~�]���5{i	�>úb�z�=ĪI�/<GX��q�/���Pd{�g��oni�����I]�e�r[=u�!�مs��-�V��{zU��s�� /�,��3�d�� \~�]���!�SW��?�m��Xۘ��P���8����J�(Y���^����ڮ�}����6G�\����������HL-4��F���h��nۤjmלc}��w�N�n��ƃ8I=�W�N@��r/@f�q�t��`5���T�xŲ���:����92����v̝�%O��9�8�α�������(�PL�j}
�ˇc�)���}����;�����g��{�����}?�Z���������j��ӯ�e��p����)�D�%�{r��wǾ&��CU�IJ���7���>�J�QR>'r���%W˷͈�D+o�ek�փWF�6�٬������)߇���@�<�Uj�f)	�U������5g���?J7#��y��Խ5�e��J�Qy��m��I�+����Rrk~����p��i�y�O�@�� ���^4�>Oޙ퐡
Ҵ�;��xk����ռ��*�yE&e�E(�
�Uf.��b�`��;6�o�W,/�J}��P�d>��K_��9�d� ��$j�~���̆dbm�	�P/s7����[�e-��3��x8���#�U�r�xEᾂ��h����U]�}1X����w!�Kajg ��g��Ʀh�-�X&�̘����G����:����v��N�{����B/��o�}����]Sb�cd��ٴ?������Z�Wk]�+��/+�n��ZL��01�^.���/�Ȇ��yo�.���(jU���p�սzI't�(��!E\�o�*hWk��O,6��C��2�Nl��eݓ�;}]A�|��N)O����Xzy�Lc�C�~[z��GV��QK/��k�G�oK/�5��0�N���V�E��^�oZyY�"H����������]MML�n3��ܿ�$W�������=��'��R�lA�����'��|jh&�|��A�T���?^�����jД���~��i�^1�B�p���ܿ�R��{
&��J�EI>��x�Kr��;�@]��^)ߪ��f����I��^������8��cns)�g)v���Bz9����S�yľ�N�x8�&��t�U�~z��[y��@�N�U�9nU0�(\w�row�s��ƫ�3����̵�>�o%�����د+���7eɔ��1K�����t���\�����Uǥ�s��EOz�5��� g�����ZO2���n���{�����,�u�r�=�o�(�����m.����ܿyҥxu��Y.��li)�A]������y���&�����ُV�8U-_q���N��L���ӣ�}w��)�ߟ��[�ߦꐇD#����l�+���7��O;5fZ�-�?\�1��x��]�Kvym�X���x�B�Vg���`���y�VQ0�}W��ע�ML���*�\�z=�b'Ne�d��g��hd��q.�B���&�x�k�$V��9#��s��h�GN(�S� ���rl��K�!� �>��@�p�+\:��G����g4h�Б����8i���˫Z7H��GB���ye��JC��d5e�\�i�G�ڲj�˽�(m͢�;��)z2D�A�7E4�?�5W���(����%7{Y�UF`��󷄷��jx(≹�T���m՘doKv�{&@��͒}�	۲�~n!u������.,%��RHp]� ��Q�Y�����Xwz��~�om�������`�%���� n�oͼ���N�l�"_���������W$��Y��=S�'8�˃�`��G$��,�S$��d88��rQ�w�P0��M���M"	���d��Ji��%��6�{�c~͆+G�^�H���¯�x����Kv��EϜ.ٓ���j��f'�QmK체���A C�+wa�g��U�������:��:z�k��N7���n/��[N���׊wK��! �qkgJ��O6��+[��2s�(��2�ǫ)#&�g�;�d'�Ǯ�f���T�a�j��l�T_y��Xu��͵�+
�Q���_�p�'g�b�����(�d�ȯ���eC�����L������"�oa��M��`9����4;�ė�̓�7/�|!��~3(�(�~v�V�ߕ�+v�}��Ƹ	&@	:���ҧu��vv/Ky�ӡBHo{L��G�K���%���@-���+��{�T���b�I������z����M�����}���^R\a�9q����5���J����v5r�v��qW�l�?���/�h.n�)�y���[錼�"�k<�o��ϸ3f>�;��>���+l9�}���x/0���D��G�/-υ�υ�4{�w�V�pz��yw�������sN��a�Q��l��;��e����i39���"sՉC��d�R<9P���X��7S{���0&-�W�Gq�e櫼�b%O��+-j��̬Ѝzg�F��;�9��E1{�d߫o�W.)��G�~�o����+�    ��V��:���Wٲ�?!G�K3U��U��ڊt�~���x'��&��S\>���V�Hy�W�8RUq �ӕ�-��a���o��d���KM��
I�#��u�J�����
����E}�wF{�Me��sg�	�)�aIK��~�ZZ~��.��֘V���>��Ɏ���W
H�o������:�s��o�)�A�/K�u)6Y���Z�o�J<2+v��`�-�"�̹�K�rJ�6~h�ݝw�81�^�W�{řI�g&k���vR���o�eUg����)��N�+Y��0��2�07=x$�=��Xk�����&�sl�}]!ۚ�j����mQg�Zә?��ڐ?�/�����i�F"��У������'esz�O���Ց��F~ ��k�(Zt�T�G�-xX#/�P�����A��\�]Vg��|/���Uk���9n����`/�~錁��i�AR�;{yu!��5�R�=��.2.t?c�̺��X�l�L���J��b/��=R�,{��E@|�к&�r��m*]H]�T���� Y={V�㰋�|B5e]���$_7\���1xa��AW&�Dҭ>1��߄���rv%N������������Q�A;�52eNȌ�.*�ae��柃VTv8*��@\���2�Q��v\��z��9��d�W4(��G�j�b즋���Rm�A�b�~����s�v=o�J}�8�Y/^��ɡ_��5��XNz��#�'$��kG�W�"ĖOpֈ#�FUc ~����Bǃ�n������z�ׯʤ���]�a#�1�U�j���z�W�O��9?�z�L�����/�rW��@Ŏɇ��#΢�׸��V9���x{��՟ֈ�)&:l��1���>ʓ���;���]�7q�uj��Rِi��^�p�u��(us��2�PzfH�5b�N���^2	�Noy�'����N4-_e@t�)=S�6{�u�G:8
/	h�\����Oa����z̏٥l�9�jq9~`��@��๡��+{]5T���)����_'�ju �8�Q3Z��,.8Sy���`�����rw~�O�|��i��p�(���.�^��䥩��#�K�����f��	����3���X���~����q[9	��E�5=����ʴ��:2�FX$�r`��v8e�!s�����S��©v̹˱gjb_��J,�\��i��J���ӡwc�GT��B6�k3s8w�P����@}�4)�sw��g�u�=in�;�M��)�Ƨ�����2{�~KכtK޵T�O 8��]��po�-=��9`n�\Ƀ@����\�t��~r}��5�^�~Σ���"��BZۺP��f�B���������]�����c1{��S!�kP��dᘻ�� ��h�?d?����U�(Qk�����=�L0`��?r����Z^8b tR�)(�)(������4ֿ^�@�LA^&q�0�mC�F�s�o�D���ۧu�;�X#�����K�D�e7r��������98u3�G2v����n��gA�6�xp��O�2G�~�7=�X�}ae���P\We����90�ǹ�̖�Z��薏��q�`���i	�[Js*��[<6�̅]qb7�Ɏ=͠��������Y����c<T�c�����^�LXh��Cz R�J�4��1���ͣ��l��ǹnS��칤�.鑱BS�'Fy�p����cߎ�(��{��_��'�X-|���gop�J���-����T6�R�]���l��j6*�F�ݝ��'�/<s�6P�z�Ͻ�45���wi��ܻ	�|^A���.��~ǹw=Vk_#jݦ�c��od �� ׬�cs��I�m��{,�-*���ܪ�QC渱�~�E��:o���إ��n�򥕴/���]���J�f!��u��n�.��h�g��g��J�"��w��o�I5�q��������=ʹ�RN������5����q��ͱ��1�)��)���̛��
��-�9.j�=� �Y�����|� ;ݭ#��O��f[ۚoO_��,,^��-��na!�:ԏ�#'�$5#�[�I/8q����O�g�!�ٳ+P�E��P�	�5}��:����
�0�<v�N�o�)�&�P�M
����Xm]Q�Ǫ��^_��<N�[՞v����B�l;+=/�w9]��cQ�Z�_̽f�N-��b
�ڐvvx��g\ B0��g�Mc�Zu��g�����J!elq�=�1�ZF�c #�@Y]��y���㠋{$G�(b�Ǝ�2�e�J;�<hʁa�"�{P]m��Y"CM(�ߣ)�wLl�#��sm������vp#�A�f�<&�5v{���a����S����0J!��&�9�n���*¹%j��"ߢ.��&�m0K�C��t�۞
� ���eU��Q�O+���f؁�iH�Ş*f�a�6m��م]t������hkdk�#j��)�gyDU��W��m\�A�X̽�����Rv�������� �5Qu���E:�F��	@��5 z��2q�8Ӿ]�t�}����{Q��D���g`�A�T�.�Z��P:�)@+_{|������ޱA<�N����Wn�:;��+��ֈ����𿳗,�HHOOqSzX�~���ދ�2Z�Z������1�����^"���z٦�-���9{�Zh(7�O�x�ȟ��������{��L/��/�j�̣	��Q<2�^�rR����<�������	ٷ�i�?u����2u��Yw:�O��>r)^�+�{rJ��_u?�]W��Bm�g�Rظ�4�UacZh*�Э��.�Tz�)g��)"'�mZN �f��Kqz�-�{�����W�G����S�������Uw`��ݷYJ?�Tp��A�(��p�r�#yjQY�����ĉ6x�������9��M]��s�Pw%e� �9,�(��s�\v�ٜ���^�8��ه~LJ�30�Dˣ9?���.ִ�'i�z��,�[����v[bn��t
����:9���m^�i9`���`�sPo6��8�;�}V�;��U��ڏJ�p�JӞs.Ƒ�� kGo$�$Ѩ`�
]��ɍ���j����^ܡ��aK�2�K���D���	�)ʎU�u�^ޏ�Z'��α����I�5�� nqt�Jy���ك`/����Z'.H����Q6��ض	R�;�A��ב�=}�<T?lJ#����v��_��\��8	2�;�ب�<��L�jwl��K��l�X�bj{y/�Z�-�R���c6=R��=��CBϮ�so���G2�M@T�����x�1���N�����wz�-�ߥaـon��r�J���Q�o�\#��S0�p8��Ku�L�$�Wݾs�����@�8���3�Sr�څt�[H{��r���m3G�͹L�,>n�����F�M���K�ʩ�~�#d�q��?Ɣ/<���O��l"v��ɟ@Lƒ���-��'[C�T]�R{d���ʩ:�e�)�R�ΰB.k9P�TR�mQ՞�����b�q����B*��R������R�T���Yͼ�X�Xq�ʺ�ؿ�]ٙ�V&�y�i0�W����D�{�?"׆~k���p��{{aޚ���m]�AAy�!ΑFB�Z�I9Jя��'hG��"TA�%=�I��}�UQuN	��W�ىPԹ2���F�0SvbZa����s�����]�>N���V�ew
��[���ql�T��~�R�F���S�(���n��po�mx��s�]8�e����q��Q�����=hrf���%}G���>W�߰�u��n�I����Ձ��y����t��^&z�s��Nj�/�:�^nf5�];dk͏��)���?�s�ȖJ�PEX�9kI����E�.���|����)�������2��������Y��#�/_����˳�NS>ep�U#�˽�z��l:��
y�U󈲧�é��q��S�z��ĵBu�/�A�f�r���!ZF{Y��N��w*�0R1K?:��2��e49��&K΅$������L��L~ ��Q�{��E��xt�s'7hZ��    ���n�d5��swԂ�_�ԙz%�"S֯�� Ce��ܯ���?*�;g~�	��d�W(����R]�A?�t�I��=z��Ts��g8��~�O���O{Y?�^��=Ǚ�ֈ�ҥ�&�O�A�~���($��	`A->	�������8���A.;�s�v�#�[�������Ѫ�l�'Co�dY�F�,� ��5��$�B�'J��j���nty��v��*S"�Ξ�"Si5��������.���56\X��5�&n(���V���pB<�\d���#i��A��59\H����.tŲy��l����s6t��b�����_�SB�,)��p�V���f�Ё$�m�q|4�S��y�e��V��Wr����2)W�p*ﮔf���4\H�2h(�� \O�)+�����f(�f�_���p����OpA��S�ّxĭ�j�v�2��V��_���u5���xd➴�������>v�#ר��w�#TeJO�d�<�C��F��	.�j�ɣ������ë�n��#��s�t��/��g�Y�Ss�jc�Qə}�c�?�2�3�'hy��lr��0���p}������e�%WH���O:�Ҿ�����o���t|�s���5&��P�'�8�ꌔL��֦��o���o#��;h1vu��5�)ǽ�ɳ�P+��{W�͹�+fd��n�c>2k�T#e{^��J�C�n�2�=�)��C�	iG��.ʧ�?��ǜ>�4�ϴ����a2�~�@>�~W�:�C�z(S׃�T���'�J���V-zR�T��:Q4")�}A/߁g�.�m����fCh�!���y�^#����+�Vf��S'�	�k���߫l_3i�~�U�*��9e��i�<k�y'�}V`�6�J��.������k��+���������a�D�'����ƒ^>Wz�$^F�~���˕	m^�kc��Րt�~M.��1�)��W�c�?��!;�6�)�Қ����S~�Nt��$~-(NZR�Bf���άt��q�%���¿��U���{'j�M)]����V�6����q���-/e��͖��"7��
w8���5���Tx�����k�E���y5����k��K+x��_�_ c�W�nq�~��a�\ј�r�[�; f��-���[ ��a��w]�wȜ��	㶫���_����}a���C�q����EUFz9t/
���r�i��j��p�iF�o1�!:��1֯��ښ��R*@�R�h��u��}�i ��*R/�7_x�'e��:�u?���e�n��o���wcP�L���س�I�ǋ�Sp��ƱH=���u��`��� �W����<��ӓ32�t��5.�z�w���{��E�L��5�-�_�ώ�sv�2�f_�$g1�1�э�淑o��DЕ������v�a��̛�;5/�I��tW�]U@�t��S=����"���<���\m&�&g��.Щ}m6Px%��X��"�n�9��)�
�W�#@H��¿�z�x�JĲoֿG�9JWz��7IwB�Hҿ�
�4�u�P��%F��௶�\��^�&�J���s��,��ӥ�5y�|p}�p�p���=_|	�~�LV�A|k�c��n��8:�V�Q�uG'�C�n��$���|׃�z�mk-�F[G��qY��rvP�
�Y�^� Jӧ���k����g�`��O����eA�X��g��ٺ(�"{A�"�}/[st�v~����|��X��va��	aV�u��볭ĕ��p��'2�)z�R�,/��l��]4�M&���w��5�>b]h����x�t�S�6��\~Xjr��e�FD$�W�����P~����_%#�t��+��f�����*�
6�h�.{�u�h�O4}��(lЩi����A7;1G.(�
��b��İ!t�NL�;�V�	��=��{3�2��?� ����R�LJ�Mך������ޱY���;�,�g�j~0�C NI"vY]�v'D�O���+��)1ɳ�� >!)��i�X ��D�2-���",��u�K6��:�K*���sW��3 {�ˍ����~&V/�P������&���*C������
ǚ��6�lzn�S�l�ďW8��DE6f'����	��!��"A���)�"�����xr�[��ru�6�e��	c���Jvʚx�(~��F�9|�� �)f㖵�Z>����4��pc��\Eʣ=#~��7N��*���4��/��d����|�����f1�E�B�˴�-&ب4�ANL��ͨ�ZN�o5�����Ѹ� ��'��1#'$�Y���N��;�l_NY�J=��:j��]�����(��H��9χɹ�~��R"Twog�
s��_D��n����zQ�ޢ�Z6�l;�zE%u|�(_N@/�Ǯͥ���:8�]=����eO]Q-�qԕlh�WT���[�8���ծ���8���cŰ�">�GL�r�sf� >eH�b�s�.�Tt'50\;�HZ����f?��uCs�Q��cH���#?Z�y��'�]�3�Ά��VT�g��\mf+�VTȁ֡sF�����C �"���?Ȳ�.���X���f[tqꡪʓ���w��r2��A)XD.FnPɾ6r�������@9��	hf�(]OQ+���������H����Ug�s���#�WT��5n�`�}Ph�O�~���Ǟ������=��`��=46wj��Z1�ům%�#Nz�b"�:͹[�2#�s�]��꽗�S�.�#w�)D�y.���#��Ce��/�)���wGQ�:�J�DA,0AT��e�=�Y4��������7�<��+����cDJ����6'+���B��R������
�X��GU��NѰ:v�VM�q���h���ͦ��9�s��-\Cq/����=_:QԜql����h�� ��r���4Y*jIw+���R��;1*vȤRi%H(q�`��.��D4���b3�َ)\���=D�I�����:P���C�x��٭�:сK&��8��Ѹ�~��Ĉ�����mUs�@��V��tV��QP��lCsB��;QH�����u�k��&#��>*+���f̗���'��
Q��$�=;O���(��]�É7��C\C���;5]�w�{���QT�G�S�2��	\����sQ(�:A�����]��^*�׾r���0�7�WЦ��4��.ݡl�"k�%��#H�1������������~�\=�!��>�ou}���Y�҅K=��:�ԅs1�+���~�R��\H�¥�qʢ���O��iŒw4:7u����Y{?N�fN ��¡M��78u������Ե(?�Ӯ+���.�+۩��zQ�Sﯫ�Kg���!�|`��K��=˼c�����il;����2r�rUU�R����{ܧ���a���.^��/qN=rJ��_�[�3j�y�9e�b�k�q_�d��5�J#�F W�-#�1�$�wo��5*��ȕ��ܨ���m�����#�1��x`w��Â�}�2����Տ�D[b���,��4����o���o��u����n�mV��V�
���ȣDLb.����t�
`��o�������.p��|�znP%,��B�yUf�w�Y4��W�d~a;�������ߓ���7� �b|�*J�[kP:
��ZX��a8���8����Q��eC%;�;��-�]�l��m �-.3ޭ{ɋ}4'�a��85Ј�q�NX2�a��OD��NsH��^5��d��u�N������v�� �Q���AmFL�9�@����x�$����mmW0h|HLj홍��n��^!��Cէ���!�����m�rrS�
nFI-?����L�}�Qd�8.uWbWIR��=�ª�$ݝ(M#�?|R�5V��<��$�Ctם�Zb?�j�*y���{%ߔ������Z��b
Sμ��X��n8�`��6߯�����r5����]f'�7�B��h�L��^�H$KƦ#3MU�#��Q��DY<��!�
I�qz�D�F3$���de;�A��8T�S��W��u    �F)�L�8=�Oc��J��3�������E/��i������hw�����T�"7(���*;c7�ۗB�3q����	@'hS�&���j=�v�s�v)������ �r�{�ظ�>�1����?)��HL�T�(Ax�{ 1?|���(��,��#�D�u�b�@��<4�c�`�n(��c����̗LB���>8�<�ai�n�8����Zp؂�cA�`��_	�82� .*+����o}��g��D�w^)����{��hǾ{���؆1/�j7>po���8����ϯܢZa�s W�o,����j=����71�)h��)��� ^���Ƿ���T��i��!������v!�g��	�D��_:�P���Y,���l����*���ŤE08�	��{�B�!�ٵi>�5���)8��a8�����>Q�]����$���gev!�~Ėp��矾H�Y��%�scP���ɍL-O����0y��� K��ُ�g
��Wo,�+�R7��3ح��wH�f&�*9��nב��C0�Ě))S�����;&T}Ո��7-����Q�e5eGl�d��l��R�{9���Zo��᧮>
���ᵏs�(�f&��7on�_&抪��k�-��^`a4�7�k�����U$�{<I�P0��:T��a#����F�!�ǟH10�R3�*� ��8�*ώRh�,�<�/��l��Ҷ;'�� �}��?���o�I�	��s6', &v7�x���U�}D�,N��(�� ���U����Tӵ�}T��.����	
8x#9��¨��KP�#B�<��Aa�b	*�{>�ͬU�<�_V)�Q��'��y�by2�����"k����	b\�@ɓ���s������,����J���.\s�!mIM�$d1�3
�*{�/A��)�9uO�!1�&nBS.��$͕<��OWp�D��̈f���v�=/���&�ѯ����d頺�rۏՙ~���Q��A�.Yy�ڪWDK��\p�蒖{�*�D�\��Q�*ݒk��U�f,K�r��(�k|m-;���A�)k��N��3-�K�L��
�ʕ{��F\�F�APN*ݯ�k�ā�1�5�׺�30���v���4�Ł4����SsI��b�1Y8�e�dp�oP�h��sU��0�������'����.I�혟�oe�T�h�;Wn��{�3�\���&q�[ eZ�WW6�f� ����C��6[�=Kn�1���R~�ɸ>)\�[m��΍E��%���T ==�Ե�·�_ɓ0��
�k��Vu�h��l���}�@��n+r��?��C�AWݰk�֜��Aܓ�?z����r!��wܽA����{�.|ا��D���s�
LU�D����4�L�%��eY�j��c���ߕ�=�`�/py���dJ���-膿�5�K�1Fy�����W���H��������\Y�/]�vJf���3$+�=�z�Q�=�8Bm�Z��V���O/�I�l�(�����AY?+��e��헮v���,v�����`=h�!fv���@.��/���c�,�R�mY��u��IR���ĶjS���c^B�v6�f���`"^k�$JZ���:2&r�b��u��b��-��p^��0���Y1�n6��M}Y�
4��QiN�Ȅ���_���7�4e��LOa���D���4bw��t�gs��sI���^e& F��ߏ?3���ů��D�3Z�r\֯լf�@A����������2t�pl��K�Ob�3�E�!; U��Y�֕jjge/�)�	���ŕ�����\���k(��K���o����ʳ��6>�������Ċ��2
3.�z"�y��9z�s��m�֯�V�K���I���p6��
�,Áx|,~+/�U�E��Y��wGQ��4^����	�E֚�"M�0���ԭ���S��A��vj����oię��~G�V���{���T�rUى���N.
��-^�Ӛ*]��U��i����x-�~�<�=(�th\�K7S��t���6{Ӄ�t3�!�=����P86���gpi��Q��g#��W����'���(6���ʵ8)k��s�έ�_��=�#N������灬&F!ԉ�~��j	�{�T�#��rz'�?��uur���'p��-����{��1`��>�� z�a�N�U�?�5b6i��=��𬄬�V�s��ȶ`�vk�kQ(c�Q�A�����Y,��v.�y��J	[�����ϓ��Z�a8�ވ�	a�@r��" ɻ�O�'�,
���eV�}M�$���)���
[�BG�MP�/�pA<�>�M��K�z�b����Gn�m7RYH���B�b���"Y	��m�]��o�J���Q%�N��;<S�T�8�H�e	��oh�䱂ǝJ����u��7ͽ��ۏz�Buc�N��i���>�Q@W]m=�)�|���x\'��2'����~�V���.	�+7J�؎�gpv��OX���jj�f��m�e���5���e���N"Q�=;j�7�h/����t��M#\�٫���^���.�_�6�|�U8[�� �{�$n9H��Ѿ���6�F�̽�s+��]���p�!��#�eUHcᔧ,
�㪒�:k���}�@��iؽ8v��mW� <�^a�>�Kq���A'�;;�bmV�x��j<5�'&��NY6vׯ���N��+廙`$8.��+��c~����.�W��}.a�|$��oja\r��~fTiT��'�7��K��QX���~�;��
a����o����h:�4�����Wc;�^��Ñ���k1P#���y�.{�d)��<�ŏ>�*M�>�;8�����<�`�~8��FO����.ɦp�M-��WP� �Axb����R�)\�c�]�Q̌���ɳ\Q��)K�����]Q��)��J�,AT�v:8�(��w���x^�TE'�����,w����`\"y�t ��ѹ�!<��Υ�CZ�"�"���n�d:̆�
���I�L��h�S�/a��K�݋R�x+ش\le�1����g�m�q_�o����~�A�����rP�y��W��=�%8˅(GQ�6;�!3%������kD���B~}���e��!���W�l~����9� �t���Y�Z;@�%��l����ٹ�3�ϻ>rpEi�}<q%�(���$�����8lW�3z�4�Q_g㚕��s�uz��+#Wc���zP�̡�5��3������)���suyJ����s:��b�k.�{W�����Gح��;w΁_�"�[��S�o��7*���_��i�B�*�R�\æA���D<r�?*������s\)���׻w������1�59(0f�
�N5¡לR���m˵���$��-Ņ�:��z�s L�WC+�Kv�c#��u��3���)3�`��ŏ��B�5?~E,�6V�,�@��!Nm� ����ŇK�1�S1^����(�������q�{
�Y�����g�A-���_�Jh�lr;���µ�`W(�
ʴ��޴(�S7�?���dI�R���ٓ�db�v�C�[jU�B������:�����%��<u�Ǔ8��U��v3���.��6O]����/�̾r0�p��~��8��a7�AB�׭��}�,�И��LD.�C5�J��	� ���o�gS{#��ci��R�ۜ�n�]. ��}�����{dFgv�}��Q��1��J��5ҧ~D��߉�c���؎����O�d���U��ŎJ�F'.�~�
T�?�|Z��>��i �/��@;-��w�T����όrhL,c��$�1��o��Mj5���Sfs*�o��:�*�F ���o��.�`�p]�"?�R�b��e�F*=�cW>��ˉv*���������P��X#�+���+@X��v���V�3u���,+�oH����l5kч4)�����Y�r��[�~��̵�r��q}u�!nk7ˇ�(ҵ�����WQ1n�L�?)�I.	<������O��L�����c�L�Z�����޻47�+�c�_�أ{    '%>���n�����rw�]q&��6a��%����_|� I[xPյ"V��'�H~	��D"$2c����+צ>��/�����΋"�Y��s��~gJ-I.�b#a �)˕��#�FQd��b&ޣ�Zl�}N��șhNٮ��]�[2hƃ_��^^�(������@>#!�ăh�g(�A0���T��>�s�O�0HxΒ<�L|A+)���{���κ���ȹ��YZ@D<�����pN��kj@U�!���I���r0���R��?e]�}�;�H�wyi Y{}'^�bt'��&畞q�(��T�^��X"����F��ā�Y`�S`��4Z�޿1:�/U-�����mu�%�-�g��3�s��h��d
��4�[(C�7���z��G�}#�G K��r
u�,]���$�G��_�7�p�'�Xn�-b	�q���\��y�������nF,���%�0�.v��ͦ��\&
|&70�����F�Ab�1���"YJ�s
�(]5�(�f �̞r�U�����Nr5�qr�������W���*�p�sM/z	��AD�8I[���*y�=�V1C���V��� ��᫐����dx'[V���p�, 5,k1�M������"�s7FX��!��xyy�}�Ȧ����fS��Z.��TLLI��ު绷L7�|0��U}���Z�a�` ����]�g�a�D}Ӌ��;&��r�6�%4�!+
�zcldw���ۈ�^��%�w�C{U���eU�?+����D뢩K>>=�P�C?�ʙ$:3��rt�W�Vb?) ��ߪ)X��{խ��n_��~������(��Xy���G(v�z{'�֝x��)�Y�a���=��x��֙��ʦ�ӌ0�I\�����NU�a=I���[I+3 ޗ���l�[`��`f�8t�f�w-ѰF��T��编{%4e�?� ���PvOT駀>���a���+QW�:�<��r
E!��
��S	i�����P�>��φ}�)/�;�t�W_SXS������s����/��A2�8[~4noE�|)���x�$��-�zX˵����
"E��
�������:�u�6;���7>�m-��i�y�Y(�,��P���_�}d+��*�8��B��Fy:!e}z�s}͔щ���)/G��hN�8�/������?�� �Y��!����VJ�s�ț���3F���We����n%
:(8�(��J4;�żV�F��c�<� d��Ҭ�����
��5����@�)�%ΘS����j���A?�M����j&|G���56���[��8����H6���1��E� }�u-߰���f�����c��4�z>.��nF��N��+n����_��AlU�g5�g4�ߕ�z�}��1�ȸ�p
�V~i���4PL-3�b�䬻��r�]r��1S��֯=�g�>pA6�s&�{����)�?9�zY�YΠ�_|���S��t�	��}͵D���o��5SD7�_V�?���v��Z����݉��@V-R_},�NԵfk�:_�ʶ<�L��ġȔ�yr��OX�,���	�L��x>��4;ix�|r���5���V섍��A�d_r��auU�)���Tw�*h��~�Kq~m�}c>�ů[�X�L��eΔ�<��ңE�ǔԧ]?�0��̲h��en���&^�Pt�Y]��o����[UcSS1+^KF�T�B���߅�Kl�Х��{Q仆A�h���	��v�&po����jn��e��f�����,��Q+������ټS3�u��m3�^��'���\�� ��Z_5fN�)?�C�ݍ� �f�[s���  �fwȕ�x�z��ʳZYC/ݏ�qp�@� ���c#j:sx.��sW+����E��Uh����/?�n�(8�¨�)�Fזݏ�o�x5��[��#$� ?A*R{ݾ*��!�>A��2��.���wdr2�޸l
�$��Rp�2+
8u�K�8��|�*Xw��)�PD?�Qk�n���j��d>v���J�����S,x5�g���+]bQ���k=Z?��?�߻�r���s:k���?�P�>���^7����\��RJ��($����<�����u���0,�{�E�o0���� ���U��\����3����W�T1nj{%]�����>+d��0d�z�?��q}�=��?�mΟ�� �8j$Y?6;a��řɂ�K��-���k�~��|iy9%��*r�t��\��v�
�,))BoZ5Ŵ���[�l�SR�٬�i�SL~GpfS�ԅZV�JM��C���ޝ�ϮC��B�#���C��P��~ub�n�.�}`r@�=��CUQ��1�
m)#�C���@����gq������P4��P��Yz�@և���6e��+u����2������4%��3~.u6;zvKgo������� �f�~]d����n+<�W��P�oC��o�jV�`#���`E6à�-zQ��V��.ԭ<�x��17X_�*�8����jh�>���((?�%v�|��+�L�o)Z�y*�>�p2�*{���#�@M��#�H�.�r+����Z�{JΑ[��i	���CV���,i���~��.G+$�N}o�ˉB�� ў������A��V �CD���5�9֩THtԫZ�/��Y{����^[�H��s�>��K{'������Y]m���<L'�����M�D�m]cQ���M+�dYQö�%+aҥ��eP�|��g�^�=.����5}^O��[LG��|zz'�i�����s�$�%o�WMu����q�O)|�ɼW:��US��َs�1~���Blk�90��/����pG��K��K�}6�d�_���9�c��	B�a��E�~P�.�S��灚��`���U�iPƔ�H?�F�0	N+�<�cZB�P@G�(���+� �)g�y���|�m�z[�l,,�u%���MqHS-8��F�z�N·�[�A:��$��KQ6�^�"{x@�l�u�(ԷՀ_Ww>�ͥK���W�$(/��Ϟ5���������OB�{%�[��A�SiH~/2$�{�(%�^;�W]�MhA�m�)b���4�0��W�P����0J�%85"@&l��F�u�+
eJ�t�~���E����>b�f���� �+R{áߕ��<
�e���L0�qH5Q�T��a#
&:W$hB�dQ�G�C�����Ɋ d[#�r��#ĳ�߳�=mC��E2l6��|^MQD(Ck��)r�$��Lz�&�}J�R������D��䋦���DIw{�N�YzmE��A�N,^�DM��
��[�E���R�7���a�� ��(�4Fʶ��C��� ��@�z����'�\!��f���5摪Gw��CS�kO
}�XQ o���ï�s��Q�ɰ���uN�*�j�k�hU'���Ww�����f"�UWo���X�ᝂ�':�{'J=����AGw�z'=�JpP2Q�,�n��%>�]�6OV��]q�%�D]��ٍ�b������p����a��y��n����UՄ���_ʍ�*oq7��@��4��l�v���\�b���jqHn^�^�n�W�8�k'd)�rF�q"n�_�E�#��q{�����qt)k5�F*���^G7b�e���l�c��$
OmH���3�Z>���s#��� E�i��v�f�K!�$���<u;�f�KWY��|�T݊:�%�6�Yj����iO�D�Ŷ���6��([&� P`"�I��N��� �+v"�s����u�������	�Z�F�#&6�(�Bf�ѵ8(MSM.���2C*�v%�pS���7D�3L�a���u��%ݠ;��b�4���@e��1r:�B���h�c�۲����J�bMg��w� ����X a��Z� Q.BEQJyY��q�����OZ�tB��c+<6�J��\𝐋쉏-bn+D���� ��>�g7�jvfkoŹ�LI�X���$b�]���n�ŏm�A�F��ƌ(ck�'����MKQ����    ��[��Ln�VM"PMw�t���^Am�|R���c�F5��}o��	�6Y="����!Ek$�mY�[9�$���j�þg'�mr�ħ���#̎	�D	G�{�b��.7o�����"�yʇP���)TB�D�+)Q*m����P�-7"�	�]S
�޺!�bE
�*��F59�ˁ0RH[��傍3��a�kt���o�;�x'�>_ �g�c �T�ҪNZ��L?�D�Y�a�mt�v��dk �N�#�U!ƾ2�X��W��*�۬��������w�|1n��j�[�_"}@�_d�&��!U��ĺ٭�@o��l����C�zn5�_U/<k&��zֈ�p�W�/t� ȟ�)��:�*�Z0����[�?�nɉ��Z��^0,:�� 
Ǯ_〖��.�����m�O�H��1UL=�t�Z'�E���8� uKnd�ع�ȫ���c�����0)�Wt��ͥh6�IS�Vҁ�mf��.�*�K�{U��@�p�
Z� �(7�.o�^���p���;al]�J��jU[W���^�c��X�5Ԝ 6v���*A{�B��r)ۦ!��#�x¤�T�Q�j
-w��,�c̕�anr$�*u��{^ӗS��`9�A��}�s���E �M����
����&��ne[剥�?˿������.�D�+fΑ� ᙷ/�9@E-��!6��_�:[	_�x�k��a�"�+M�{�-�h���N�6Բ�uO��mb�bo�[��Z�*!h�+�w� �-P)�o���w��gi��;�m%X���l�0|��Rv⾵e1��?.�7�����j��������+id%�s���=d�:�xlg�EV��_0�Cey�J�х�ӯ�]���P:�^�v}p�)�i����?���]!MԳ�#l��P7�I��Dď	k��e?�YaS�ޅ$�N�`�P_~�bS�eB:DRu������ްX�aӷ(�ƴ��.�+�H��GN�?B�u׎�;�~� ������$	bo���<3k���tm�7���Y�bo�QH��7N_AL�r��df�4WʐDJ����l!����'�=�"��B���˄���\[*�&�}�kĐ���H�X�X	;b/^`��m����A !��k�RF��QҡeygXe�\�%/
Dpʰ��L�;F��;�CVn�*�z���HX�,�p��>�>�� �J��Ee���t���2�ujj-�V^bfEܷ&i��*߅�b��v�Zĺ���~��#;�ys�`�0Α�~�(�
�\�4V%�R��1�A73���D�P�a-�4X�0�hr@Y�dZ��4vi&���[4���������z����bv7��،�>����Y;�04c��}�>?��Wq���d���7��(Z�;�g_E���~����ҹ�e����Vb�� ���{rn��>Q|D���	�b�������2����'���b#�4>t#[C��}ܕ�%-jPD7��.��o���m��j�+)d�z���7b��D"�d.)��W6�i��]�FV���:�^.:���{Y!���`WU�k�^䍆�x8v΋M�э�=�jA>K���5?d�����|�*ƾ���8�����X(�E�f_7<|ư���6v��f[�}�v<Í#�6��ͪAQ �v����:�AƑu�����ɘ�8�Ⱥ�3s!��A�����ޭ��9cTw���j1��y3��|�d"��5Y�E�=Uɢ��m�Z1Ln�*�c��X�E�YEql�K`�>!r�v�V![�⍏&ĺ3���`������6'��½Cq�ũ������O
������(d|v������H5����S����G���j/��D�}��u�ЮӣB:
�̂�u��7n	�n���5I��/Ķb�2����*���inT�q��63�OȢ����1�4�P���S��SVp�+\#�`;�J�l�U�p<�������÷�i'��|{��Nȵv�Q�c�\�m��5�s�&#%;x���r�"�x�2�xP�cY�m_kV(�@*Mɣ��Bn��Y
��\v�JJ%w���y��b�o�W�Yc���9��{�c�@;WK�c��W͸X�Cu��"�ٛVl��#�X����_�Z����7�C�;}��_�хش5y�z�Ta���X��&
��k���p�Z�z����@�b��V�Bld��A�O��W�\tm&v���������}E�e�c)&(6̭�7�����hm� j�����{'�$\dVlD�葝����;s�s�MJ�V�U�"Tl͝����`p��4
������v1Y�z��U)x��Ы�K �v��χ�%�£����!�QvV��ƺ�_�J���xl��G̢��p\�_������=;7逥�E��e����s�!��~�������`Q����E��I!I���bm���V�(�����"�t\��bt��u�Ҕ�-U������Wrl3z-�$��(���W�i��l9�7��]�~2����lFt�)�)��{���L��j�h��d�iٖ�.(�>W�,2|Ƙ=���=o��x�~
���GHk[��)�%K؃�B>�8�ݓ3�v�&h�g�gh�ȩ���%��ؿ
6EB��1�g�^�^�����!Ӣ1�����]�b�V|}�#	nز*�rlA��z-�������_�ƃ�WK�{:�µc�g$nԅ�o2����iI/i M��$L@s�]�6̵�+�)�)�S[��_ߘÙ�I��뿁Q�잠 h��ݣ?�z�ϫ�܌�crs]�Ð���~��(rZ���k{}�_�#iU�f��%?�٫�<]�r�#��~&E#�߶�ɏ����,e9Aز��Ӛ�����9_�X�g��%���ϱCy]�F��7�"�y9&W[{����h���^����Q>����d�}�u�����t�\�Y�slq��UY���R�Jn)T#lb9Q4;
k@���幐��h���o�+�R���U��M{=�m�!!
s�}~�d�0fN �E�����d>�Um���r��� �n��g�Ko��t��ȃ_5�T�����rZn���-���8l��n8�}�]�]����x�+�ۭE�=�Y4h
�`w���ث��פ���EϤ�p��S��0 �ǔ�|�_n�0.�B��<�r�����M���1%!t�:�O�Bӵw~x�WND����P�R������t�����>�óeK;�c��w"�ж��sNɴ6�xWߣ��u��c��'���pLy�%^��ܘ&�D�1�8�Iʝ�j�S��X��G@�6M���e!�]�l]'o�g���΂������޽#Ln��z5E�1�yG�
IJ��_���_���ּ29�{�gҫ�Ə|<R��6����W�/��F&�
���u�"����*C����|oy��f�^����c�
t N�O�L���\`��ᄱ�����2�3+�0��[ĵ��1�*��XD^��-m]���eSc%� �o�.�loZ���;Y�P�O�zu�phg\�\>�F�8����huX�+�?�̦�ّ�C��P�7z#���
�患�&eW��9����>+���}R8 �TO�C�Z�|��9�p�z�5�Nl۷�t�j�>G�5�m��	p��_���w��E�͆%��5��B27�;>�5���:`�˿8G� �U�!�5��~2P�:�����/�����Jc�Cl!֮�6-���΋��5v��#�Nl����u8�6�	�S�F���${�[���Og�}�Sj�K0�Z]Tj���r|Ʋ�`7�J(�'����}�����ިL\ߗ�/�M3O��U�`�(c ��;B)K׎� %�����l��8�	��D��f�WC��#��	X{oT�Q��ȗ�M�Ъ4�T���d�u�%����d�x�m[������J�?`�D!`����g�5������`�w��a=BKf���t���W�ԃG��pp�o��V=_t�3p^IN�����6��䄎�z����g    �j�SىKQ~�SX�H��K�(����q9��N{�ؓ=]�)6{���^�a���oe��j��|�����J)���X��"���* J���n��Xe��O��~7���z`KYں@�>��8�΃$�B��\�B�m��]�<��q
�?�<��B�1��K79��������3�;
����#�ț
�҉+}�����O�y�oh�^υ<0�5��	1)O�J�׼.��z���	l� :�f�w�P��6��=����B?�]�Ԣ:����L��B\�g��|��6���汭�{�\�4Cgg����D�`A��a�ok�4�&�q�U�����=��-�9N�s ^�<�^eʥc�>�Wy8Hm�O(	�~C�1sZ ��x�G��R�\¿��fGM��.��ZP�hJµ�W�s�k���s��`��b�����0���	��B��z,��;L��(��Ec������:�Rk9�4s���nhG��`�'�LRL#r첽�2'H������v����wBp����~��Alu]�g��P"�C��~x�J͝��\�������Cz\	 ��h�n�99�诵�x �y�9�Z��'�#
���RR؊����j�f����SG��lg�bdq�>�4m �..��|�9�d�׷8nzmdg��zY�t1!"�	��gS����/��m �.;��qg�]
KM����nYaY�jM>M�����7�Vh���!�\�ȍ���_K��@i����f,������.��H����"�ֲ�v_����s>�x�;�j�����ԡ&�����S*�'����s����@��R6����5bG%�H�
���FG�ݩ	���[��OD�+�Q�1z��J~�̍���ڡh]�uG��:p� o֓"�o�Z|��+u����"�
b���P�o��݊�"�Bk/�F��ty?h�9C���/���B4_��A�ͪ(��v���}t`B���e�����%���d�u@�K?w�?� ���q8�����(�5�ă*)�%�ܬY�Úg�At�_��|/�H���.j�\/��,y�cǚi�\�7��ݽ�s.˶�cw��+�u�:�U�%������B�Ὢ����0��V���<�x4����tÅ���_e��]9~�8��T�8���!��]; Z����#���!{T�������r~W�lټ��\�Q�I�����%�J\�!�H�>�h���5��+�?�� 옎e�ǲ���m�e �Od�V�g�;�����;�y�K�����(ao�co�G�#�y�oo" ���y{���8�3:"��$��΢�N�~�� �[!W��ۘ4"m_~��k� 4�y�e�i�ŕD`ϫO�ވBO����4����\��ˀ��ƈ]�gүk�r?����şf
�`�o��;�h��z[�]����4��z�_=�L�mv9�Ẽ�0�K��uK�~����^���2�ď=~�
Gm��PXSӪgق��v�3����s���*u-G�}���yڑ <�q$�y���'���������u��U��+�#��ǦK�د����`D��}G���o�#��f1h�Z<����?>���� ��;�����k	��[��� ��q �ZnU�裿 ���E�ɍ}���\{�Wl�;�q�-r���5�q.՘�J�g`𸹖�+?:n��l���(���wֺQ{�%��W�eb �m1��7�!���V�ek���8j�S���m�Wom!t@x�ÙF����#0E��|����5��v"
����"�Ŝd�p�q�h�����.m�Ț7�#����@�Y
��pt}OwS/_�g��P�B�M����p�#�\ex����&UG���$r>	4�c'g�ۊ���9ZfY�0oy��ʅ=ޔ�,و+�����
>)U��3�1�<ܿ����4Vv����Q����݈6�;��t��_Xq���<��-���U�g��b����+�LR�m�xBX����;}�D��?��AS�(E`C���C� �����Z�Zċ��c�\<4�h�>���D��V��
��&[6E�����6o?ӽ�y�#��'t�H�)��Ce g�4�|���xw�;�1��^��8y�[K��'��{6����m�nExƠ�o��l᥈�8@�j��GC�	x�l�2�������� ߈�g��Gg?����������O�uO�8�c����e;:ٯ�7�h ����	��u�EJ���g���3"��̐��=���������A6ǷӬ*�q�D?�@�K]s����"Ŏ�	 ��0R<�82{e؞)WgyU�:C0����5\��^���\���W���-���/�9��`��M������ܚaJ���(F�g{�?�R��� �=gޖm�s�����EIdȭ�dܣNr=kC��3}�o��QwS�5����1�R��GW�q�>	�`32��^�_������m��o�|�@�,(�*��c�,��N'&ԧ��ա��gt�ɭ%y�6>�������W.�9��
7�M��AW�|7P_�����0_�>(65�u�eS��徶�ZmJ~m�U�J�P=.�������lщW�B{�k�>G�`�O����$g|a����F�v�ݰ	}�؞7k�hߧ/JJ�@_���nb��z_g*����f�W]/EL��O�h�,���y�Zk�@��-w����n��"�3siSy��8_!ګ�bo��6�m���,cl�}���:�y��}o��I�����#��Ov���H��8�y<
Ɠ���:�~]6O�:G�F��ދ�Qn ����E7�0��|��kG�C�bi�?5Ex�����(<u�@�F����(C}�U���ڮ}PmZ�:̜9�ەܐ֚�
.%��9�� �'Q�z���^v�^����!+5�o6����{_;ﹽ��֥(}��G͵�Sg�.踭���'���!ˡ��:4���t��)���rP�f�/e�GNtc���V/�CV��WE������>�I�q簉��<�M�! �Ax}v%�t'��=vU5&!X+�Q�Ǯ@�֓�ȷ3�z:M����CV6����<���g5�g*ߪ�]S>���.=I��B�����m�m��������m�~��%��_�~s1a��l�f���1�ZM��0�p���f<�َ����2�mt%��Д��'-�o�\)�Q���k���������>�����O��F_q<�ԟ��eT�F�F�]S|Rjy|��ċ��=j���f�9!��#�^f��u����)A�������Uc1�흼�w�~+3�6���*Y^�__�1d�\�m�^)��ąn��{����6d#�B��$��ǟ(/U�?ZF�k����:o
��x8a�]T<�0�ث6*�"'˭�)%T�Jl�6N�p� �QL��N~3J(�y�g��e=�Pƃ(��[�ٯ�&9��E����'��n�dX�f�ǊC��M��y���X�� ��A�~Gpr'h��9,4�&g��[�8)|�h�j5{E �S��d�~�(��m�[��ê�;��7�dx靐X&��4Zb'��j��R(�|Xkx�t���yf�Kvj3�?��b���������x5Z�G����|�v��epU�V�O *�` �aC�{��x�����)o��Tnf�	����^�o��M�'(�n�{h|�}=�>�I�a������~�i�@����Ԧ��鋚<X�jA�^��L���1�W��a�B���?N�Iom��ɰF�Ht����U.���;� � ���A=CIEw�t��=$�l[�6���N7p7�S����*�v�:����&�uF�bt�������#թ߻��p&��� v�ӭރ(6��ú���{���Ž�du�����vr7�ɣ�����Lk��@��Bv��E���f}�9�"2��H�W����ڍ��L8�H2����;��+�MlZ#��$����J�)ӎC���":}�|/�;���(��k��^�(�͊4-��FA!�<��T~�k�u7�jN    �]�O�R�8���q����20��O AH0��[�n����Yt�Z1��q��&ק`bJ��濕���z�>��ke���<V3�F���A�RSO��U���Z�u��2R|��#ʠ�=���ȅ���o5�5��wHå��5�r`ǔ��dEò@"� +��E���;�@7�,�����!���+�ko�R@y�r[	?�ӳ�zU�G�1W`ϴ9���Ӈ��m���2�\p/{��#��8y���놶����2S&���U��d���Q!��b� ^d	�x���&��	�ݛQe���� ��!ϳ���U�1>r�eYU]��]�Q�ؽ��s���֨��<�%��_��3.�_���~O����§���w�-��|d�,6����*@t�����|��r;4|խ(�4N>y����ܽ��n4�����.�����.��yuzǗ���+��i����D����ͨ�n=v��EŠ�/,^ReAA�┢�4�2���;PeNw+5�0�]�>� ��]cjQ�u}�:���[����$�06ֆ���M�S[(����Cww�
ԤP8��WǨj���.m�bޢ�7�c"7���fV_1e���@��ݔ��S̨\�_f{S-7�M�뷺s�!J��w�{Λ���0�r����@��7|ӯ�I��+wb���L�4����h1Z��^"�$��z�M��'/���En�ȧ
�B�jĳ֗߽�{V
Q�8�� 
ͽ�͘�<; �F�ړ"�����~�s��Bj�C�C�P�]@�����2\Ů� ������
A����ݸ��Bh���N22��a�t�@<!����ᖉ���ZW�݁�����Ns�$n�P��z�{��me&q��W�Ҕ��w�~9l��b� ��fF��~'�[Ŀ��G�UV��$P�	Ѕz}��4 ��R�.����@M�2#M(k����|���< Z�.J�aj��9m�G����gv�ę��y��ir�ӑ���6&�u��P�W����:��l˰���Z�Ć�O9G� bz�^�A?o�yL��^�V��Qj�B�������{��yo�'�]�"��E�"F+��<hT�B�D`l��L?�5��`�xnk�[��O-bjAܱ#Ͽ�1��ikΕ<t��l��j�� [sr�p�JXdk�;�塅��[��Y6� *L R�*!.���/��D�҈����oD���i����q>�S�8lu'Lv����-�(��ژx̹�t߈m�#&�� `cu�, �:���xj��5t#���C �^�����m�kI>�hvֿ��V^
Yk=�,	}���>�Z�F�FK�/�ȷ�>��|u�͹��AO
 �W"7�1��I�Z�����j�������1�:�
��m�ؘx���5���F͜t��~Qr2�A�����"�5%]4�jJ�\dQ8?��Ӂ��Mo�F�δ�5v�#���4�$�ʽ�#��!�5�2Z�7~lU+k5�\h-$�	z�������އ�wQ�&6���`5
���Ӎ�OJ�w+v.܂ü}�㯕�_J=)t���:��C�����9#G���\�eKϭFЀ�r}�SԉN�c�g���D
=���S�z����vmk`�����h?5щv>�����&�ZP����̿%�f���ϋ��+3�_���|���������� ����hp�.�q���ʭ����>ڗ���ީD��K6�̞n�&��f-�J�=��N�S���IW�:!��tW��VI�x�ߍ�T�1�kǸE��ĞY�B��ۺ�"�6�6�	bSޜ��况,�>��A���SSH���������u���pA��O�_��k��N-T�{nG��:�XID��a�Z����s4J m\�e��xy{T�G�K�N�G�4��}ݪ�&��C�����iT�L\!�9�B�z��*4��3��\ɮ�o��^)-�8�ӎ+,�o��16y��R?���k�u-�����T��b�x��S�L.����ğXȹ�j�xef%�N7v+�N�����W�@d�,�z����(n�[96����'��|�=���@_ǾW��i]����r��^��׳iɯ�@�"Be�N��賐mU|�����n;\��O��N��*�!P��I��P|)��5�,��<����V=�5�`Y�D�����g�n �w��N`�߆�aQQ���wb��{�+`�+8�VB ��<�ϋ���Q ˙U���H�
�U��a�2Ǩ3:��J` ����I8u�h_(��2�u���0��@''�k�WU��1ub����?�Uc��r���ǜ�k���:���p�k�OqɁg���C)�C'!�����=�a5�J���e�|��" 
����WZC>�!�h4�]`=%ۢ�T�K�^�CP!a�:f�u��{"6k���>h J
	�<(�1�+�:�En�?�
25��l6fS1Fз��	�� 6$��BX䫫i+A���r�|lveG�\�@R�F�Аd���?��Q��b��1⸅$�.���!�ꁳ���w/d�ˢ��bq(mY
��(�ړ���	РN���&P��a`���[[�x���P�_���-F�~���2��L���6�'&	�¥��g[��\���t�8��5gRf�);�\���\5'!�޴����`Րf�N��Y����u��=(	v���y��"km�$!bS�<���4|L��Y�����\�]'	1��,����Vdi����vF�[ǂ�Z��}��OC�]6{Xw�T����ZZn�sEb3�8$��w�S�i���6�-i��w��wf�B�C�恟��^!WLb�
jXOQ��$[�{�;�z��3	��J5�р������}�A��wE��C��{�$������&
�b�$��Dro�R'1���H����z��-����ph;��cZ&s��%H{~n\�S�8��'@9�8E�<�T�@e�������=�v�!ƶ����j893�����1�ڌt���b��P�<��x@G�97P	��B3�W<D�t��k^��!��!ǹ���;�ϴ�"`��Z#�z�A�b�����/d�����iJ�Z����{��Kg=8�h2�'`��{!7m�>�Rsª�����4�[5���)T쓒�M�v�ا���Tf'G�=�[��p>����ʴ�=4���\Y��r|�5�b��8\xF�n����ez�o���4��ƅ@4�'��i�S=�$�'������~l��n�U���a��� �)W�Qa8��$��()?p����#�2����1���2�5/w`E�O�c�R �
�>�)��$��[��8��w��XX�$�?N}:ߚ�K}l�^yi*�zY�!,��!/b��������-�����.�ȵ���~���&^�Kd�d��kwy�۶��c׵�}��0R�џ��A;	��ȉ�c=�s��q��탲��xM���)�ΰz�N�*�ܦ�Vh)�J&���B�u%�#��L����$K�jD��9�>�RŦ&`���b[�Ϻj�� ������a�KY+�rDv*<v���#��w�V�Rt2�\��"�`	���T�{lnLSW���%��o��9ϲ���v��'cN�j{=x��C���P�������I௭3v����w�.��β�nNbbݑ�Q��w��H�(�{�Vs8rn��=�D'@�bhAs����`4�gL��-%���_��uH��n�,/�^��|�� �s��Z�J�3J`��s�8ۮ�|���N���jJt�+�*79�r��ƅ��R��R�}��twOe���B�F:ys���R-�Nt�^;�c�j���!�S4;�	����X0�e+���Or/yd�Y���t�k��*�Ӫs��H��5��T�Uh�b���-��͓���˗ٞ&ܝ\mK[�k�0's�>(���|e�+���)<�*ݔ�''K�T��d��9QX'�/��X��-�5M6�e>����N�{V_�{���g��nɱ����>���n&�d�)����l�誩7�۝�^(uëJ
����94k    �jW�����G=Ir��LK��ۜ�����H���f �]ŨU�;��J#'�Vz��0nMK��52���0���������m����Cf��d^�H�AF>�5���zB�Q<`3ɔ�E:Js�����`)\c<U!��'�S
�T5w!���>r�+@<����J����q
���{u+�)^�M�}�R�ܾ�&�V��L`��̣S���8��1)���z��Ҙ�{���W*��������A�/�m�P/+���1��U��)��9���?��]?�|�5a����B%�!@p�W5-�Lx�qڡh�zǑ �����1��_<�@��.Uy�1�+
+��r���P�Y�)^���i�B��B�Y,���R�z2XS�y��gpͦFJ�d�VU}���7��(tPHn�2{S��̙ 	(ӿU�X�	��'�#�!}��� ��묬�:�:�b)0O�C��>���O�授��O�i��N$�-哈p�=�;�R)h�B��zB���$(�uƮ`)���+k5�A�5j$+�p��^�C#ċ����k����z)�j��:��Xi�S�?�ZGW�򄫋��	�ءW�R<�������Ƨf �Z���+�B���R�v{�+0Q�2��A�ё*4<(/8�i���sZ����{�i�C�Sӳd�^c�r{
�_�Vk�((�w�n83fAl�wS��䈌��D�Xx��[o���hWӽ�d�����8��r|*~E����BAa>� +������P�AI�R���{��S���G
�09SxM�c$]���m2�h�2B��%��ڛ#n'��p��W;F#&��t���g��\�>0o l��(��M���K�A}��l��{�#5��6R�Գ�R�b�WјfLkƽ�HD�]����zښiz��}��i�Ȓ`?__:z�{px�fF�t��r�xD���=)�w���+5�C�Ia2��{�.)�c�F�P$�������N��:�"`0�_���|�AI��1	�n�V���A��TS��d��
Q�l5�'��h���$(�<�x�ӳ�"h�t1�d��EÁ/��y�ԫG�Bw��W� ^�Y�K�^%�>���[O1EX�dD��u��4�7,���鈎|��X�mvf�\���]���Q@o�_�+h�����'t�����6�DFI�$^���N���˶�gH��E��1;z�V4���	0����`�X����Ef��{yÁ!��Q�̃��Η�[���!�Ҙ� �)O_��i�W�au�0)��i�yP���ߣ'���y��8�q0B42yшW��0s����� �յ����ע�d�Ꞓ�����ix��+�6R���a` �]q0�4�q��횆W��,R
O�A��O��bZ4<m�������L��,����e�캼�l׬W�c���_M�K�+c`{?�%O�}[x�+���i^��͌2^�m3���.�����u���+�a���������4�Tw#�Fn^�Sw[=����>粄��Q�ixA�B(�Ѫj����U.E����_�R�b�Z1��*h���9��)h�p s;���Ī ^�o��$E�!?Oo�c��)n���8�Hc���=6�'#�E��Tfj8/��#a׉���u�i�|�*|*m+�V~�ٿl«SGx
 �W#6���� �n�I,�]}`X�S�|ޮ�L��˃��*7=~��\n�y)t�5������|���9��:�&�~�՜����b80o�M���&�8_��-�k;Z�}<XdՁO7�Vq��`;plb�)��܅?���yXik
��@�	6��U�i���ɀ2�dI~�S�y�}�0u�e�	X\����I�^H��-��+���Z��qU��9�.I��|������d?��<���$h]���<WB*�F�,�Q��VW�>�;p!���^^��VU���-#}\��)׍�������X�:�M�`ţ�$b"3���b-)��ޱ�Y�9 O#�:����7E�wu���J���Ī�F]� ��:�) ��HČ�LK��k�W��y��%0E���`����HV�c�b�.����M��k���D�
lr;�8�'{�l�]����>��~#�h��˶w��Sd1s�c��g`|�\f��5�4��� s��N���D�'��'_���YN~ �6�)��IQ�0��Z#�>)�ϝx`�ڃ,:i�}"w��T\��=E���9Hє3��p+��1��(��M�?�W�
D��ϗY�1��q����<�.�ݮ�?�wb��;�1�$$����b�H|����[�%o�V�R��݊�-����l�����U|�~����68�>�q�NPDS���1�lC�o����l|��;�6E�O��˖���ǫk��V\]�	��:���B�z���B�xb�)�J���K���F�X�i(N�4�����3#}�;��z�?����8ȵ�����I\�}�C^5�T�-�s>R:���ν����Q6%�2�Z�Wy�he�jptֿud?䔚����Wc�T$ˤ#`prֿu���}5�)(p�4�δ��k���Vy)L`�)����߬�0�lG"Dp��	�	�������&�Ճ[Za�w�̲Fy�D<eRWw�Ԧ���6s>�>EB?�?�K�6/��tۇ#�"7�%����^����`P���ɉyP�����@ �t�ģ��V��ԔB�|��R�\��/��D]px�)����Q^��vo�`	evˉ	��Ql����0�+� ��R���Ab���7���2��N�i�'$���	�{7��趥N��Q$Hq��s��>S-7��xj�	D.�[�r��U�5�j�r'5�r �Q��1��p�*o,���yMJ��)�5���CCa�fcJ��&���,����lL�<x�W�fcJ,婔h�m�Ɣ`ʍ��S7̜s6�dS����lLY��XlYl�qa���Uܖ�Ul�ڑ��@�J�(t�|Y�-H��x�0G��>��Q���_�.�@C����m��{䗫;Ν3G~�Rs	�y6��BEa�x�*,��*�Ej��b�7f�>s�tic\�Ʊ��Ñ�s=�q���o�B��&���e��z_���i�yx�^���["�_P��C�
)N�f��g��/��n��fQV��5C��@/��W*W�2��z��-��4���U�[8JlNm�Ɖ�y�t���8�7����ˤ5'���o^�z�l�zY7i��_���F�پ�ڧ����B�v#Z��n�q��J4�S�����i���8���_�!��V��9C��6b�iyN����rM�]@Ft��y'��Z�R?+/L��w]���+��ľk&����j�&����?g$�c���X���3_M�*�#g~(�=�&��»<5l��~�j?�<�S��\��ł���"'Wi��0���;\�)r8�*��4�{�^>7:ШB���K
�����<DT<
z����{��/�'@�}�[80�`��!�͸ ��PDi�XQ`�rg�rr�*�a�fy�=(�mR����"��
闊s#��9F��vQ؀~�h���P"�i�A� ��!�`�j�Y�S�(d���n�(h÷A�gQ���*w��	�񬤴X����+�g.Nq��)��{��Gn�)��,
����{��gQ�͢��Ee$=`ӯ�v��U��f���'�n?��0"���~2Q��1z� Q���{CQ����͢��ݦ�8���r�3Y�~SI:i�bgq`��2��O����a�)���f>�ѿ�1J<TjY�°0Q�fi�b�	���Ќ��畚L�,�Z�$��fwf%"��y!�j'v��I�v/��,�;R�s�k��40�R�������7U�1��2 x�0��>7�����V�sɽ���s�[8�i;��v������>?�5�3t%h���v����*ӆ��v*8�5��k��"�]6�e�X)���wu��xAE)� �������Hw+���
B{��n�
l�[���_�NM���e*��P�V��~m��U:��] x  "BŞ�9{d	��.r����F�k��&���X1j���z�ȹy��qn��䫩0m��� w����c��e����������ap��
<sJ�R��(&�2J����J��V�����#ٻ�M{{�Ի� ��!�8_��m'X�boϑd��*�l��~����,������{Ql��_��G�t��&��z8�HjFV �E���Q��JW�u�o��$\ę�ahƥNY�E��c�G-��`8c;�"W��6o�C�߾��, �?e�KT�`<����/�B�7����v.>b\oU�J�f;����S7�Q�������������e��p��i{��V�g�O��P8�Z���e�F}���ȧ���	�OMiWM]�[�)��n���A��U�?�f߽P=�ȿgX����|�+���񎗼�_m�� �N�޹ſ�s޼�.)PJM��f���s���+Q�Dc�=���*�#l�͝85K�ct\A�Tـ7pB-F]��]�7�{�0��<_�]4>j�yjAݡ�P���H+ &�
4���$�cnn|�޶����5u�9pi\��aq򥫟KpWJ]��n+�KziZ9��H�U��	/�r^�f��Ӛ&ߠ*]��ls�~}��$.;��w�
�5Q��US��Z�����Z�Ǯ��P�uVv��=vqm��W���vZ��w|����� �y�\�4�� ��K�)��-��:3_�P�����ƫF��B��j�TAs���қ_+N�0ޓ�)8W�?��j��~�@����Y�j|4�#�p4��xp%rD�յs1�ͣ	�SM >�^����ƿ/4,0�)��V�j��G7�ZM\Bύ�]ϭF��iC�`�'gW�N+��4�<%�B�P݇��f����<���]�9�n�y�� s��B��(����%b8�NS��������S�lA����r���w���7���n���;U��"�.�\u��
���5�0�Ք�/���s�5��\r�~CL�N4��M�0`��mZ�'&�'T�:�p�j8pL䛃��W�#d ;A�L���SP���o��K����6��[���(�j[&�\КJ��7}�B�W�N*t�@���� ;�WM��+���DLn��'����4Pk����g���c�,���C�2�,�FO�^�O]Њ</ �}?'Ar�G��k?�^�]�ɎR����\e� �G�SJ7���\p?ƹ�����~��}�

C\�gVZ5w��r(_�����4��.�(b���0W�=/6)���V�F�RnϿ� /��@�k�Ԏ31RR� jSj���2���Vu+Jv�Eև�R�	D������ɐ`@��tc�k�	"뗩��$w��SV�.���Uf�����scͺd��Z�b@�aRMp�q"v0�#��G���C���,���f��vo��QM�m��E���eg�^���/�E��
G����
`�� �� �CJqXP�OPN\���^�
7;��y�1��*�����ڤEŝ$�e6�뤭F�#{�\5;�n9�P}���� ���0P����������V�Ə�_7 �P3nfs�a���LWiTc���-mxı��-����������[+�]Y�iȋI�����x��@v���mq/(rQ�A5�-B���-q+�kA����8v���LH��p����~����9�Z!G�Z����F���i�ܠa��e^����"��o�D�ۜ-�8qhT�j��,�]�������ͅ0�'=�-A���]��o���^�l;Z�R{{#O�����e�9~�F�(�����Lq6�����0�Bb��[�uim�8���9v���%��n��Ԯ�WU��O��O���i�Id�l�[�Q��!C
�M�Pb��9q��z�V�~����'��F�����ճf:����:�'N,���-t幦WP�l~R6a�A��	�8�J�
�R������\Ia(vLJy{��[��5����ZAYmI�Rʫ�=��[�[�cꁫ�A�d[@�U����Zv��nViR����5���h�5%�3� oL#o��S�&<�<%�s������\k�Q��������?�?m      p      x������ � �      q      x������ � �      /   �   x�+(�O�70�2�p�tq����4���
t�I-.A�y�
.���E�%��y�% �4�?��9�������D��\��D��������@������L����؀�dCK8J�r2�3RS�\�=... �3�      �      x������ � �      �      x������ � �      V      x������ � �      G      x������ � �      +   r   x��/(�70�2�p��p�
�42t1��25r��,O�L�(�4202�50�50Q04�26�20�3�0676�60�26 � ��
��S��E�8zx�Y�G�E�q��qqq �#�      *   �   x��ʻ
�0 �9�
wi�y55k*���QI�� �DP[���u�M8��iN�3��a�n]]�|��tЪn���_d��*m�G�Y�C�)��Ȝ����)띷��J��p�2��\��e r(����?���9���.�      u   H   x�+(�O�70�2�p�tq����4���
t�,N˚{9��y�D:��[8;�;���r��qqq �;�      �   H   x�+.�70�24�r4�3trv�557
4�r	r��,(�O�G�G�8zx�Y�G�E�q��qqq }�      W      x������ � �      Y      x������ � �      e      x������ � �      X      x������ � �      f      x������ � �      )   �   x�+K,�L�+�70�2�p����t	�476	�v�3�,(�O�+�tq����4���
t��C �4��9��$?E��������������������������������aP��b���� m/            x������ � �      �      x������ � �      }   ]   x�+Ȏ70�24�rt�2��
t
0q�5�02r�p��4202�50�52U04�25�2�г42141�60�26 ��3��\R�Rs�rS�J�b���� m�      |   |   x��ʽ
�0 ��<EwQ.�����EK�5��?�K������	:k��L��ɺ>��7Ѻ:^_M�|^����8�������sg�}���h�k�R��Ԁ4�-�9�o�@������Mjk�Ro��&h      ;      x������ � �      &   �   x�+JM�70�24�rtss��t��4�tq5�r��t�L--�4����4202�50�52U04�25�2�г42141�60�26 � h� a�W���&�A���Ζ�!nn~�~����)4�9F��� �@6�      F   J   x�+JM�70�24�rtss��t��4�tq5�r���M�+M��*BR��j�d���l�b�f���S���� �n�      E   J   x�+JM�70�24�rtss��t��4�tq5�r���M�+M��*BR��j�d���l�b�f���S���� �n�      7      x������ � �      !      x������ � �      ]      x������ � �      t   |   x�+N�70�24�r4��2�
t41�pv4w4134�4202�50�52U04�25�25�307�4��60�26 � Ə�%5-�4�D!81'�X�9#1//5�ӹ(5�$5E!�R�75��8�3��+F��� /�$�      ~      x������ � �      6      x������ � �      d      x������ � �      -   �  x���ы�0�������IL��9c2���h-�Pe������э�/��q݄��ȇ��;� 
�z�*OC��W�i�K��0����X����C��σ@T\p�*_:��U����HܫdE���O2O�}���]m���4 AA~�w��Қ��/�c��n��f�
0�d�S�%�K��qL�?A������ig�Ū�φ�u%��	���ʗ��[S�TT�3��KJ'>}vs�f�9���L!UI�VAƶ�BI>[���X�`����X��cӵ7FO$���<"%�x��8�\����*I��G�G9�@��t�Z�LI�j9t��p��3�Z[?�Dx*ha�U�BL �\�������9��n��:�
&��9#�����Q�x7��~]_��      ,      x������ � �      .   �   x�+.�70�24�r4�3trv�557
4�r	r��tIMK,�)Q��,(��KW(�O��I�L�Hp�����*�Y��Z���Z�Xh�ZV�D\�H�0�v	�0�r�2�r1�t�L+QpN,J�۟�O�P�1z\\\ ��B�      g      x������ � �      B      x������ � �      C      x�+.�/J�70�24�r4�5tw71���	
��2���MM)-NT��,-N���4202�50�52U04�25�25�307�4��60�26 � h'�-��2�
t41�pv4w4134*������ �'�      N   9   x�+.�/J�70�24�r4�5tw71���	
��2��,-N�*&�(���+F��� ��      8      x������ � �      b      x������ � �      a      x������ � �      \      x������ � �      D   �   x����N�0 E��W�NFJ���d� �Z:6�$K�h��Y��۾^����y��C�����aH|�\�$����n��/3t�zw8:��ٖM��][A!��@^O�2K�g׋#O"�~䔪BxyZF��YS�m�y5�1`�9��?��i���/� �ܬ?/�1����%��)����o��WY�1�O@�9�w�"tA�B'��6�=����nu���ֱ,��oLd     