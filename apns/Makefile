PROJECT = apns
PROJECT_VERSION = $(shell head -n 1 relx.config | awk '{split($$0, a, "\""); print a[2]}')

app:: rebar.config

LOCAL_DEPS = inets sasl
DEPS = gun jsx base64url lager uuid
dep_lager = git https://github.com/erlang-lager/lager 3.9.2
dep_gun = git https://github.com/ninenines/gun.git 2.2.0
dep_jsx = git https://github.com/talentdeficit/jsx.git v3.1.0
dep_base64url = git https://github.com/dvv/base64url.git 1.0.1
dep_uuid = git https://github.com/okeuday/uuid.git v2.0.2

BUILD_DEPS += relx

include erlang.mk

ERLC_OPTS := $(filter-out -Werror,$(ERLC_OPTS))

ERLC_COMPILE_OPTS= +'{parse_transform, lager_transform}'
ERLC_OPTS += $(ERLC_COMPILE_OPTS)
TEST_ERLC_OPTS += $(ERLC_COMPILE_OPTS)

