%%%=============================================================================
%%% @doc The {{name}} gen_server.
%%% @end
%%%=============================================================================

-module(els_{{name}}_server).

%%==============================================================================
%% API
%%==============================================================================
-export([ start_link/0
        ]).

%%==============================================================================
%% Callbacks for the gen_server behaviour
%%==============================================================================
-behaviour(gen_server).
-export([ init/1
        , handle_call/3
        , handle_cast/2
        , handle_info/2
        ]).
-type state() :: #{}.

%%==============================================================================
%% Macro Definitions
%%==============================================================================
-define(SERVER, ?MODULE).

%%==============================================================================
%% API
%%==============================================================================
-spec start_link() -> {ok, pid()}.
start_link() ->
  gen_server:start_link({local, ?SERVER}, ?MODULE, unused, []).

%%==============================================================================
%% Callbacks for the gen_server behaviour
%%==============================================================================
-spec init(unused) -> {ok, state()}.
init(unused) ->
  {ok, #{}}.

-spec handle_call(any(), {pid(), any()}, state()) ->
        {reply, any(), state()} | {noreply, state()}.
handle_call(_Request, _From, State) ->
  {noreply, State}.

-spec handle_cast(any(), state()) ->
        {reply, any(), state()} | {noreply, state()}.
handle_cast(_Request, State) ->
  {noreply, State}.

-spec handle_info(any(), state()) -> {noreply, state()}.
handle_info(_Request, State) ->
  {noreply, State}.
