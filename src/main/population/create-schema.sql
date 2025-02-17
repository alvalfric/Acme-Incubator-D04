
    create table `accounting_record` (
       `id` integer not null,
        `version` integer not null,
        `body` varchar(4096),
        `creation` datetime(6),
        `status` varchar(256),
        `title` varchar(256),
        `bookkeeper_id` integer not null,
        `investment_round_id` integer not null,
        primary key (`id`)
    ) engine=InnoDB;

    create table `activity` (
       `id` integer not null,
        `version` integer not null,
        `creation` datetime(6),
        `deadline` datetime(6),
        `money_amount` double precision,
        `money_currency` varchar(255),
        `title` varchar(256),
        `investment_round_id` integer not null,
        primary key (`id`)
    ) engine=InnoDB;

    create table `administrator` (
       `id` integer not null,
        `version` integer not null,
        `user_account_id` integer,
        primary key (`id`)
    ) engine=InnoDB;

    create table `alferez_bulletin` (
       `id` integer not null,
        `version` integer not null,
        `author` varchar(256),
        `moment` datetime(6),
        `type` varchar(256),
        `url` varchar(4096),
        primary key (`id`)
    ) engine=InnoDB;

    create table `anonymous` (
       `id` integer not null,
        `version` integer not null,
        `user_account_id` integer,
        primary key (`id`)
    ) engine=InnoDB;

    create table `application` (
       `id` integer not null,
        `version` integer not null,
        `creation` datetime(6),
        `offer_amount` double precision,
        `offer_currency` varchar(255),
        `statement` varchar(4096),
        `status` varchar(256),
        `ticker` varchar(255),
        `investment_round_id` integer not null,
        `investor_id` integer not null,
        primary key (`id`)
    ) engine=InnoDB;

    create table `authenticated` (
       `id` integer not null,
        `version` integer not null,
        `user_account_id` integer,
        primary key (`id`)
    ) engine=InnoDB;

    create table `banner` (
       `id` integer not null,
        `version` integer not null,
        `picture` varchar(2048),
        `slogan` varchar(256),
        `url` varchar(2048),
        `patron_id` integer not null,
        primary key (`id`)
    ) engine=InnoDB;

    create table `bookkeeper` (
       `id` integer not null,
        `version` integer not null,
        `user_account_id` integer,
        `firm_name` varchar(255),
        `responsability_statement` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `challenge` (
       `id` integer not null,
        `version` integer not null,
        `average_goal` varchar(256),
        `average_reward` varchar(256),
        `deadline` datetime(6),
        `description` varchar(4096),
        `expert_goal` varchar(256),
        `expert_reward` varchar(256),
        `rookie_goal` varchar(256),
        `rookie_reward` varchar(256),
        `title` varchar(256),
        primary key (`id`)
    ) engine=InnoDB;

    create table `consumer` (
       `id` integer not null,
        `version` integer not null,
        `user_account_id` integer,
        `company` varchar(255),
        `sector` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `credit_card` (
       `id` integer not null,
        `version` integer not null,
        `cvv` varchar(4),
        `brand` varchar(60),
        `expiration_date` varchar(7),
        `holder_name` varchar(60),
        `number` varchar(16),
        primary key (`id`)
    ) engine=InnoDB;

    create table `customization_parameter` (
       `id` integer not null,
        `version` integer not null,
        `activity_sectors` varchar(4096),
        `spam_threshold` double precision,
        `spam_words_english` varchar(4096),
        `spam_words_spanish` varchar(4096),
        primary key (`id`)
    ) engine=InnoDB;

    create table `entrepeneur` (
       `id` integer not null,
        `version` integer not null,
        `user_account_id` integer,
        `activity_sector` varchar(255),
        `qualification` varchar(255),
        `skills` varchar(255),
        `start_up_name` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `forum` (
       `id` integer not null,
        `version` integer not null,
        `forum_title` varchar(256),
        `investment_round_id` integer not null,
        primary key (`id`)
    ) engine=InnoDB;

    create table `forum_message` (
       `id` integer not null,
        `version` integer not null,
        `body` varchar(4096),
        `creation` datetime(6),
        `tags` varchar(1024),
        `title` varchar(256),
        `forum_id` integer not null,
        `user_id` integer not null,
        primary key (`id`)
    ) engine=InnoDB;

    create table `forum_authenticated` (
       `forum_id` integer not null,
        `users_id` integer not null
    ) engine=InnoDB;

    create table `inquirie` (
       `id` integer not null,
        `version` integer not null,
        `body` varchar(4096),
        `contact_email` varchar(320),
        `creation` datetime(6),
        `deadline` datetime(6),
        `max_money_amount` double precision,
        `max_money_currency` varchar(255),
        `min_money_amount` double precision,
        `min_money_currency` varchar(255),
        `title` varchar(256),
        primary key (`id`)
    ) engine=InnoDB;

    create table `investment_round` (
       `id` integer not null,
        `version` integer not null,
        `amount_amount` double precision,
        `amount_currency` varchar(255),
        `creation` datetime(6),
        `description` varchar(4096),
        `link` varchar(2048),
        `round` varchar(256),
        `ticker` varchar(255),
        `title` varchar(256),
        `entrepeneur_id` integer not null,
        primary key (`id`)
    ) engine=InnoDB;

    create table `investor` (
       `id` integer not null,
        `version` integer not null,
        `user_account_id` integer,
        `activity_sector` varchar(255),
        `firm_name` varchar(255),
        `profile` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `notice` (
       `id` integer not null,
        `version` integer not null,
        `body` varchar(2048),
        `creation` datetime(6),
        `deadline` datetime(6),
        `header_picture` varchar(2048),
        `related_link1` varchar(2048),
        `related_link2` varchar(2048),
        `title` varchar(256),
        primary key (`id`)
    ) engine=InnoDB;

    create table `overture` (
       `id` integer not null,
        `version` integer not null,
        `body` varchar(4096),
        `contact_email` varchar(320),
        `creation` datetime(6),
        `deadline` datetime(6),
        `max_money_amount` double precision,
        `max_money_currency` varchar(255),
        `min_money_amount` double precision,
        `min_money_currency` varchar(255),
        `title` varchar(256),
        primary key (`id`)
    ) engine=InnoDB;

    create table `patron` (
       `id` integer not null,
        `version` integer not null,
        `user_account_id` integer,
        `organization_name` varchar(255),
        `credit_card_id` integer,
        primary key (`id`)
    ) engine=InnoDB;

    create table `provider` (
       `id` integer not null,
        `version` integer not null,
        `user_account_id` integer,
        `company` varchar(255),
        `sector` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `shout` (
       `id` integer not null,
        `version` integer not null,
        `author` varchar(1024),
        `moment` datetime(6),
        `text` varchar(4096),
        primary key (`id`)
    ) engine=InnoDB;

    create table `technology_record` (
       `id` integer not null,
        `version` integer not null,
        `activity_sector` varchar(256),
        `description` varchar(4096),
        `email` varchar(320),
        `inventor_name` varchar(256),
        `source_type` varchar(256),
        `stars` integer,
        `title` varchar(256),
        `website` varchar(2048),
        primary key (`id`)
    ) engine=InnoDB;

    create table `tool_record` (
       `id` integer not null,
        `version` integer not null,
        `activity_sector` varchar(256),
        `description` varchar(4096),
        `email` varchar(320),
        `inventor_name` varchar(256),
        `source_type` varchar(256),
        `stars` integer,
        `title` varchar(256),
        `website` varchar(2048),
        primary key (`id`)
    ) engine=InnoDB;

    create table `user_account` (
       `id` integer not null,
        `version` integer not null,
        `enabled` bit not null,
        `identity_email` varchar(255),
        `identity_name` varchar(255),
        `identity_surname` varchar(255),
        `password` varchar(255),
        `username` varchar(255),
        primary key (`id`)
    ) engine=InnoDB;

    create table `hibernate_sequence` (
       `next_val` bigint
    ) engine=InnoDB;

    insert into `hibernate_sequence` values ( 1 );
create index IDXhwforwdu8n1h9l7gxea3vxdvj on `accounting_record` (`status`);
create index IDXdu3qaieu50wytnu5lea8t541n on `activity` (`deadline`);
create index IDXj1shjic6mip5nyik4ywhvxiid on `application` (`ticker`);
create index IDX6fmsp547p4ql4cgit2hk0uxjs on `application` (`creation`);
create index IDX2q2747fhp099wkn3j2yt05fhs on `application` (`status`);
create index IDX10c2k01odt8d2vthipc068j94 on `application` (`creation`, `status`);
create index IDXnr284tes3x8hnd3h716tmb3fr on `challenge` (`deadline`);

    alter table `forum` 
       add constraint UK_ofnp3l952r0ymjahya6fuy1xq unique (`investment_round_id`);

    alter table `forum_message` 
       add constraint UK_byxkuonx9sv7tgfm9gpwqpfl3 unique (`user_id`);
create index IDXdvftjmbbmrad2oe19yi4uuhyi on `inquirie` (`deadline`);
create index IDX9tsve2s3eqtxjjxxoqql2ul81 on `investment_round` (`ticker`);
create index IDX1gmmruvw8xsef2jwmvvk7rj7m on `investment_round` (`round`);
create index IDXrcpel5hblr62lfjr9gmpk2wgi on `notice` (`deadline`);
create index IDX3ianip0mmnj1316lpeas2yw71 on `overture` (`deadline`);
create index IDXr7lyttb4bnfd85oud954xkpx7 on `technology_record` (`activity_sector`);
create index IDX3quagoxmgxpw6riak6uc2t4fl on `technology_record` (`source_type`);
create index IDX7rwm294nfcoq797e0l99lux40 on `tool_record` (`activity_sector`);
create index IDXmrlp46pw8xg8jirj2sar9l5c0 on `tool_record` (`source_type`);

    alter table `user_account` 
       add constraint UK_castjbvpeeus0r8lbpehiu0e4 unique (`username`);

    alter table `accounting_record` 
       add constraint `FK41jm4vk7runvmg5tderffrele` 
       foreign key (`bookkeeper_id`) 
       references `bookkeeper` (`id`);

    alter table `accounting_record` 
       add constraint `FKk1pmfnppwk0kav7xloy8u71uq` 
       foreign key (`investment_round_id`) 
       references `investment_round` (`id`);

    alter table `activity` 
       add constraint `FK1ufotopeofii4jlefyk9c7os5` 
       foreign key (`investment_round_id`) 
       references `investment_round` (`id`);

    alter table `administrator` 
       add constraint FK_2a5vcjo3stlfcwadosjfq49l1 
       foreign key (`user_account_id`) 
       references `user_account` (`id`);

    alter table `anonymous` 
       add constraint FK_6lnbc6fo3om54vugoh8icg78m 
       foreign key (`user_account_id`) 
       references `user_account` (`id`);

    alter table `application` 
       add constraint `FKk5ibe41quxsif8im882xv4afo` 
       foreign key (`investment_round_id`) 
       references `investment_round` (`id`);

    alter table `application` 
       add constraint `FKl4fp0cd8c008ma79n6w58xhk9` 
       foreign key (`investor_id`) 
       references `investor` (`id`);

    alter table `authenticated` 
       add constraint FK_h52w0f3wjoi68b63wv9vwon57 
       foreign key (`user_account_id`) 
       references `user_account` (`id`);

    alter table `banner` 
       add constraint `FKdocr1jjfgwx9ef5jbf675l360` 
       foreign key (`patron_id`) 
       references `patron` (`id`);

    alter table `bookkeeper` 
       add constraint FK_krvjp9eaqyapewl2igugbo9o8 
       foreign key (`user_account_id`) 
       references `user_account` (`id`);

    alter table `consumer` 
       add constraint FK_6cyha9f1wpj0dpbxrrjddrqed 
       foreign key (`user_account_id`) 
       references `user_account` (`id`);

    alter table `entrepeneur` 
       add constraint FK_pwrtga2lkxnda15j1bgh7lbaw 
       foreign key (`user_account_id`) 
       references `user_account` (`id`);

    alter table `forum` 
       add constraint `FKq8ggcjgl5by5gf6l5bji632hu` 
       foreign key (`investment_round_id`) 
       references `investment_round` (`id`);

    alter table `forum_message` 
       add constraint `FKsrtj8k65l4o01scnduc07muo5` 
       foreign key (`forum_id`) 
       references `forum` (`id`);

    alter table `forum_message` 
       add constraint `FK4e18daruc8avd3tt0w2hk3ybl` 
       foreign key (`user_id`) 
       references `authenticated` (`id`);

    alter table `forum_authenticated` 
       add constraint `FKbfu7rkr4imldqrkswlqieb4dv` 
       foreign key (`users_id`) 
       references `authenticated` (`id`);

    alter table `forum_authenticated` 
       add constraint `FKd1ebx6x0cql1bxphvu15qxh2x` 
       foreign key (`forum_id`) 
       references `forum` (`id`);

    alter table `investment_round` 
       add constraint `FKnvwsfdvabjoap6i9cy2mwgcqg` 
       foreign key (`entrepeneur_id`) 
       references `entrepeneur` (`id`);

    alter table `investor` 
       add constraint FK_dcek5rr514s3rww0yy57vvnpq 
       foreign key (`user_account_id`) 
       references `user_account` (`id`);

    alter table `patron` 
       add constraint `FKpj4cod0bcxwxg4nqv4f2xkikg` 
       foreign key (`credit_card_id`) 
       references `credit_card` (`id`);

    alter table `patron` 
       add constraint FK_8xx5nujhuio3advxc2freyu65 
       foreign key (`user_account_id`) 
       references `user_account` (`id`);

    alter table `provider` 
       add constraint FK_b1gwnjqm6ggy9yuiqm0o4rlmd 
       foreign key (`user_account_id`) 
       references `user_account` (`id`);
