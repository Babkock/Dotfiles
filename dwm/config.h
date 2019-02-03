/* See LICENSE file for copyright and license details. */

/* appearance */
static const unsigned int borderpx  = 1;        /* border pixel of windows */

static const unsigned int gappx		= 3;		/* gap pixel between windows */

static const unsigned int snap      = 32;       /* snap pixel */
static const int showbar            = 1;        /* 0 means no bar */
static const int topbar             = 1;        /* 0 means bottom bar */
static const char *fonts[]          = { "Anonymous Pro:size=11" };
static const char dmenufont[]       = "Anonymous Pro:size=11";
static const char col_gray1[]       = "#121412";
static const char col_gray2[]       = "#141814";
static const char col_gray3[]       = "#bbbeba";
static const char col_gray4[]       = "#bbbeba";
static const char col_cyan[]        = "#612024";
static const char col_black[]		= "#000000";
static const char col_red[]			= "#612024";
static const char col_red2[]		= "#662428";
static const char col_yellow[]		= "#636304";
static const char col_yellow2[]		= "#636304";
static const char col_blue[]		= "#124f62";
static const char col_blue2[]		= "#145365";
static const char col_green[]		= "#116513";
static const char col_green2[]		= "#116815";
static const char *colors[][3]      = {
	/*               fg         bg         border   */
	[SchemeNorm] = { col_gray3, col_gray1, col_gray2 },
	[SchemeSel]  = { col_gray4, col_cyan,  col_cyan  },
	[SchemeWarn] = { col_black, col_yellow, col_yellow2 },
	[SchemeUrgent] = { col_gray3, col_red, col_red2 },
	[SchemeThree] = { col_gray3, col_blue, col_blue2 },
	[SchemeFour] = { col_gray3, col_green, col_green2 }
};

/* tagging */
static const char *tags[] = { "1", "2", "3", "4", "5", "6" };

static const Rule rules[] = {
	/* xprop(1):
	 *	WM_CLASS(STRING) = instance, class
	 *	WM_NAME(STRING) = title
	 */
	/* class      instance    title       tags mask     isfloating   monitor */
	{ "Gimp",     NULL,       NULL,       0,            1,           -1 },
	{ "Firefox",  NULL,       NULL,       1 << 5,       0,           -1 },
};

/* layout(s) */
static const float mfact     = 0.55; /* factor of master area size [0.05..0.95] */
static const int nmaster     = 1;    /* number of clients in master area */
static const int resizehints = 1;    /* 1 means respect size hints in tiled resizals */

static const Layout layouts[] = {
	/* symbol     arrange function */
	{ "",      tile },    /* first entry is default */
	{ "",      NULL },    /* no layout function means floating behavior */
	{ "",      monocle },
};

/* key definitions */
#define MODKEY Mod1Mask
#define TAGKEYS(KEY,TAG) \
	{ MODKEY,                       KEY,      view,           {.ui = 1 << TAG} }, \
	{ MODKEY|ControlMask,           KEY,      toggleview,     {.ui = 1 << TAG} }, \
	{ MODKEY|ShiftMask,             KEY,      tag,            {.ui = 1 << TAG} }, \
	{ MODKEY|ControlMask|ShiftMask, KEY,      toggletag,      {.ui = 1 << TAG} },

/* helper for spawning shell commands in the pre dwm-5.0 fashion */
#define SHCMD(cmd) { .v = (const char*[]){ "/bin/sh", "-c", cmd, NULL } }

/* commands */
static char dmenumon[2] = "0"; /* component of dmenucmd, manipulated in spawn() */
static const char *dmenucmd[] = { "dmenu_run", "-m", dmenumon, "-fn", dmenufont, "-nb", col_gray1, "-nf", col_gray3, "-sb", col_cyan, "-sf", col_gray4, NULL };
static const char *termcmd[]  = { "rxvt-unicode", "-depth", "32", "-bg", "rgba:2421/0000/1416/abab" };
static const char *firefox[] = { "/usr/local/bin/firefox-dev/firefox", NULL };
static const char *ncmpcpp[] = { "rxvt-unicode", "-depth", "32", "-bg", "rgba:2421/0000/1416/abab", "-e", "ncmpcpp" };
static const char *trans[] = { "rxvt-unicode", "-depth", "32", "-bg", "rgba:2421/0000/1416/abab", "-e", "transmission-remote-cli" };
static const char *ranger[] = { "rxvt-unicode", "-depth", "32", "-bg", "rgba:2421/0000/1416/abab", "-e", "ranger" };
static const char *surf1[] = { "surf", "https://duckduckgo.com" };
static const char *surf2[] = { "surf", "-t", "/home/babkock/.surf/styles/4chan.css",  "https://4chan.org/" };
static const char *surf3[] = { "surf", "-t", "/home/babkock/.surf/styles/wikipedia.css", "https://en.wikipedia.org/wiki/Main_page" };
static const char *surf4[] = { "surf", "-t", "/home/babkock/.surf/styles/reddit.css", "https://old.reddit.com" };
static const char *surf5[] = { "surf", "-t", "/home/babkock/.surf/styles/420chan.css", "http://420chan.org" };

static Key keys[] = {
	/* modifier                     key        function        argument */
	{ MODKEY,                       XK_p,      spawn,          {.v = dmenucmd } },
	{ MODKEY|ShiftMask,             XK_Return, spawn,          {.v = termcmd } },
	{ MODKEY,						XK_period, spawn,		   {.v = firefox } },
	{ MODKEY,						XK_comma,  spawn,		   {.v = ncmpcpp } },
	{ MODKEY|ShiftMask,				XK_b,	   spawn,		   {.v = trans } },
	{ MODKEY,			XK_q,	   spawn,	   { .v = ranger } },
	{ MODKEY,			XK_n,	   spawn,	   { .v = surf1 } },
	{ MODKEY,			XK_w,	   spawn,	   { .v = surf2 } },
	{ MODKEY|ShiftMask,		XK_n,	   spawn,	   { .v = surf3 } },
	{ MODKEY|ShiftMask,		XK_w,	   spawn,	   { .v = surf4 } },
	{ MODKEY,			XK_a,	   spawn,	   { .v = surf5 } },
	{ MODKEY,                       XK_b,      togglebar,      {0} },
	{ MODKEY,                       XK_j,      focusstack,     {.i = +1 } },
	{ MODKEY,                       XK_k,      focusstack,     {.i = -1 } },
	{ MODKEY,                       XK_i,      incnmaster,     {.i = +1 } },
	{ MODKEY,                       XK_d,      incnmaster,     {.i = -1 } },
	{ MODKEY,                       XK_h,      setmfact,       {.f = -0.05} },
	{ MODKEY,                       XK_l,      setmfact,       {.f = +0.05} },
	{ MODKEY,                       XK_Return, zoom,           {0} },
	{ MODKEY,                       XK_Tab,    view,           {0} },
	{ MODKEY|ShiftMask,             XK_c,      killclient,     {0} },
	{ MODKEY,                       XK_t,      setlayout,      {.v = &layouts[0]} },
	{ MODKEY,                       XK_f,      setlayout,      {.v = &layouts[1]} },
	{ MODKEY,                       XK_m,      setlayout,      {.v = &layouts[2]} },
	{ MODKEY,                       XK_space,  setlayout,      {0} },
	{ MODKEY|ShiftMask,             XK_space,  togglefloating, {0} },
	{ MODKEY,                       XK_0,      view,           {.ui = ~0 } },
	{ MODKEY|ShiftMask,             XK_0,      tag,            {.ui = ~0 } },
	// { MODKEY,                       XK_comma,  focusmon,       {.i = -1 } },
	// { MODKEY,                       XK_period, focusmon,       {.i = +1 } },
	// { MODKEY|ShiftMask,             XK_comma,  tagmon,         {.i = -1 } },
	// { MODKEY|ShiftMask,             XK_period, tagmon,         {.i = +1 } },
	TAGKEYS(                        XK_1,                      0)
	TAGKEYS(                        XK_2,                      1)
	TAGKEYS(                        XK_3,                      2)
	TAGKEYS(                        XK_4,                      3)
	TAGKEYS(                        XK_5,                      4)
	TAGKEYS(                        XK_6,                      5)
	TAGKEYS(                        XK_7,                      6)
	TAGKEYS(                        XK_8,                      7)
	TAGKEYS(                        XK_9,                      8)
	{ MODKEY|ShiftMask,             XK_q,      quit,           {0} },
};

/* button definitions */
/* click can be ClkTagBar, ClkLtSymbol, ClkStatusText, ClkWinTitle, ClkClientWin, or ClkRootWin */
static Button buttons[] = {
	/* click                event mask      button          function        argument */
	{ ClkLtSymbol,          0,              Button1,        setlayout,      {0} },
	{ ClkLtSymbol,          0,              Button3,        setlayout,      {.v = &layouts[2]} },
	{ ClkWinTitle,          0,              Button2,        zoom,           {0} },
	{ ClkStatusText,        0,              Button2,        spawn,          {.v = termcmd } },
	{ ClkClientWin,         MODKEY,         Button1,        movemouse,      {0} },
	{ ClkClientWin,         MODKEY,         Button2,        togglefloating, {0} },
	{ ClkClientWin,         MODKEY,         Button3,        resizemouse,    {0} },
	{ ClkTagBar,            0,              Button1,        view,           {0} },
	{ ClkTagBar,            0,              Button3,        toggleview,     {0} },
	{ ClkTagBar,            MODKEY,         Button1,        tag,            {0} },
	{ ClkTagBar,            MODKEY,         Button3,        toggletag,      {0} },
};

