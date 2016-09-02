.class public Lcom/android/systemui/floattouch/Simulate;
.super Ljava/lang/Object;
.source "Simulate.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static mExpandNotificationsPanelMethod:Ljava/lang/reflect/Method;


# direct methods
.method public static back(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 34
    const-string v0, "SmartTouch"

    const-string v1, "simulate back"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    new-instance v0, Lcom/android/systemui/floattouch/Simulate$1;

    invoke-direct {v0}, Lcom/android/systemui/floattouch/Simulate$1;-><init>()V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 46
    const-string v0, "back"

    invoke-static {p0, v0}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventSmartTouch(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method static createActivityOptions(Landroid/content/Context;I)Landroid/os/Bundle;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "oriTo"    # I

    .prologue
    .line 96
    const/high16 v0, 0x7f050000

    .line 97
    .local v0, "enter":I
    const v1, 0x7f050001

    .line 99
    .local v1, "exit":I
    invoke-static {p0, v0, v1}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    return-object v2
.end method

.method public static expandNotifications(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    const-string v2, "SmartTouch"

    const-string v3, "simulate expandNotifications"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :try_start_7
    const-string v2, "statusbar"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    .line 54
    .local v1, "statusBarManager":Landroid/app/StatusBarManager;
    invoke-virtual {v1}, Landroid/app/StatusBarManager;->expandNotificationsPanel()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_12} :catch_18

    .line 58
    .end local v1    # "statusBarManager":Landroid/app/StatusBarManager;
    :goto_12
    const-string v2, "expand_statusbar"

    invoke-static {p0, v2}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventSmartTouch(Landroid/content/Context;Ljava/lang/String;)V

    .line 59
    return-void

    .line 55
    :catch_18
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12
.end method

.method private static expandNotificationsPanel(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    const-string v2, "statusbar"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 58
    .local v1, "statusbar":Ljava/lang/Object;
    :try_start_6
    invoke-static {v1}, Lcom/android/systemui/floattouch/Simulate;->getExpandNotificationsPanelMethod(Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_10} :catch_11

    .line 62
    :goto_10
    return-void

    .line 59
    :catch_11
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_10
.end method

.method public static expandTask(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 114
    const-string v0, "SmartTouch"

    const-string v1, "simulate expand recenttask"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.systemui.TOGGLE_RECENTS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 116
    const-string v0, "expand_task"

    invoke-static {p0, v0}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventSmartTouch(Landroid/content/Context;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method private static getExpandNotificationsPanelMethod(Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .registers 5
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 66
    sget-object v1, Lcom/android/systemui/floattouch/Simulate;->mExpandNotificationsPanelMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_13

    .line 68
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "expandNotificationsPanel"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/floattouch/Simulate;->mExpandNotificationsPanelMethod:Ljava/lang/reflect/Method;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_13} :catch_16

    .line 74
    :cond_13
    :goto_13
    sget-object v1, Lcom/android/systemui/floattouch/Simulate;->mExpandNotificationsPanelMethod:Ljava/lang/reflect/Method;

    return-object v1

    .line 69
    :catch_16
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13
.end method

.method public static killTask(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 22
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 120
    const-string v17, "SmartTouch"

    const-string v18, "simulate kill current task"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const-string v17, "activity"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 122
    .local v3, "am":Landroid/app/ActivityManager;
    const/16 v17, 0x1c

    const/16 v18, 0x1

    const/16 v19, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v3, v0, v1, v2}, Landroid/app/ActivityManager;->getRecentTasksForUser(III)Ljava/util/List;

    move-result-object v16

    .line 124
    .local v16, "taskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    if-nez v16, :cond_26

    .line 182
    :cond_25
    :goto_25
    return-void

    .line 127
    :cond_26
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 128
    .local v15, "pm":Landroid/content/pm/PackageManager;
    new-instance v17, Landroid/content/Intent;

    const-string v18, "android.intent.action.MAIN"

    invoke-direct/range {v17 .. v18}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v18, "android.intent.category.HOME"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v15, v1}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v9

    .line 132
    .local v9, "homeInfo":Landroid/content/pm/ActivityInfo;
    const/16 v17, 0x0

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 133
    .local v6, "currentInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    if-eqz v6, :cond_25

    .line 138
    iget-object v0, v6, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    move-object/from16 v17, v0

    if-eqz v17, :cond_98

    .line 139
    iget-object v0, v6, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 140
    .local v7, "currentPackageName":Ljava/lang/String;
    iget-object v0, v6, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 150
    .local v4, "currentClassName":Ljava/lang/String;
    :goto_61
    :try_start_61
    iget-object v0, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_79

    iget-object v0, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_76} :catch_c1

    move-result v17

    if-nez v17, :cond_25

    .line 157
    :cond_79
    :goto_79
    iget v5, v6, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    .line 158
    .local v5, "currentId":I
    invoke-static {}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->getInstance()Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    move-result-object v13

    .line 159
    .local v13, "mRecentSlidingDrawer":Lcom/android/systemui/mzrecent/RecentSlidingDrawer;
    invoke-virtual {v13, v5, v7}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->clearRecentAppsPolicy(ILjava/lang/String;)V

    .line 162
    const/4 v10, 0x1

    .local v10, "i":I
    :goto_83
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v10, v0, :cond_fd

    .line 163
    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 164
    .local v12, "info":Landroid/app/ActivityManager$RecentTaskInfo;
    if-nez v12, :cond_c6

    .line 162
    :cond_95
    :goto_95
    add-int/lit8 v10, v10, 0x1

    goto :goto_83

    .line 142
    .end local v4    # "currentClassName":Ljava/lang/String;
    .end local v5    # "currentId":I
    .end local v7    # "currentPackageName":Ljava/lang/String;
    .end local v10    # "i":I
    .end local v12    # "info":Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v13    # "mRecentSlidingDrawer":Lcom/android/systemui/mzrecent/RecentSlidingDrawer;
    :cond_98
    iget-object v0, v6, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    move-object/from16 v17, v0

    if-eqz v17, :cond_25

    iget-object v0, v6, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v17

    if-eqz v17, :cond_25

    .line 145
    iget-object v0, v6, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 146
    .restart local v7    # "currentPackageName":Ljava/lang/String;
    iget-object v0, v6, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "currentClassName":Ljava/lang/String;
    goto :goto_61

    .line 153
    :catch_c1
    move-exception v8

    .line 155
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_79

    .line 168
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v5    # "currentId":I
    .restart local v10    # "i":I
    .restart local v12    # "info":Landroid/app/ActivityManager$RecentTaskInfo;
    .restart local v13    # "mRecentSlidingDrawer":Lcom/android/systemui/mzrecent/RecentSlidingDrawer;
    :cond_c6
    iget-object v0, v12, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    move-object/from16 v17, v0

    if-eqz v17, :cond_e0

    .line 169
    iget-object v0, v12, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 176
    .local v14, "packageName":Ljava/lang/String;
    :goto_d4
    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_95

    .line 177
    iget v11, v12, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    .line 178
    .local v11, "id":I
    invoke-virtual {v13, v11, v14}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->clearRecentAppsPolicy(ILjava/lang/String;)V

    goto :goto_95

    .line 171
    .end local v11    # "id":I
    .end local v14    # "packageName":Ljava/lang/String;
    :cond_e0
    iget-object v0, v12, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    move-object/from16 v17, v0

    if-eqz v17, :cond_95

    iget-object v0, v12, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v17

    if-eqz v17, :cond_95

    .line 174
    iget-object v0, v12, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .restart local v14    # "packageName":Ljava/lang/String;
    goto :goto_d4

    .line 181
    .end local v12    # "info":Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v14    # "packageName":Ljava/lang/String;
    :cond_fd
    const-string v17, "kill_task"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventSmartTouch(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_25
.end method

.method public static lockNow(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 103
    const-string v1, "SmartTouch"

    const-string v2, "simulate lock screen"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :try_start_7
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 106
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 107
    const-string v1, "lock"

    invoke-static {p0, v1}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventSmartTouch(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1b} :catch_1c

    .line 111
    .end local v0    # "pm":Landroid/os/PowerManager;
    :goto_1b
    return-void

    .line 108
    :catch_1c
    move-exception v1

    goto :goto_1b
.end method

.method public static toHome(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 78
    const-string v2, "SmartTouch"

    const-string v3, "simulate launche home"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    .local v1, "it":Landroid/content/Intent;
    const v2, 0x10104000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 83
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    const/4 v2, 0x1

    :try_start_1a
    invoke-static {p0, v2}, Lcom/android/systemui/floattouch/Simulate;->createActivityOptions(Landroid/content/Context;I)Landroid/os/Bundle;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_23
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1a .. :try_end_23} :catch_29

    .line 89
    :goto_23
    const-string v2, "tohome"

    invoke-static {p0, v2}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventSmartTouch(Landroid/content/Context;Ljava/lang/String;)V

    .line 90
    return-void

    .line 86
    :catch_29
    move-exception v0

    .line 87
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_23
.end method

