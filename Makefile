PROJECT = apns
PROJECT_VERSION = $(shell git describe --tag --abbrev=0)

app:: rebar.config

LOCAL_DEPS = inets sasl
DEPS = gun jsx base64url lager uuid
dep_lager = git https://github.com/erlang-lager/lager 3.8.1
dep_gun = git https://github.com/ninenines/gun.git 1.3.3
dep_jsx = git https://github.com/talentdeficit/jsx.git v3.0.0
dep_base64url = git https://github.com/dvv/base64url.git 1.0.1
dep_uuid = git https://github.com/okeuday/uuid.git v2.0.0

include $(if $(ERLANG_MK_FILENAME),$(ERLANG_MK_FILENAME),erlang.mk)

ERLC_COMPILE_OPTS= +'{parse_transform, lager_transform}'
ERLC_OPTS += $(ERLC_COMPILE_OPTS)
TEST_ERLC_OPTS += $(ERLC_COMPILE_OPTS)
