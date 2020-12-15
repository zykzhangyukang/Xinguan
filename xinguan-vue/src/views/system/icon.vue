<template>
<div>
        <!-- 面包导航 -->
    <el-breadcrumb separator="/" style="padding-left:10px;padding-bottom:10px;font-size:12px;">
      <el-breadcrumb-item :to="{ path: '/home' }">首页</el-breadcrumb-item>
      <el-breadcrumb-item>其他管理</el-breadcrumb-item>
      <el-breadcrumb-item>图标管理</el-breadcrumb-item>
    </el-breadcrumb>
      <el-card>
    <ul class="icon-list">
      <li>
        <span>
          <i class="el-icon-platform-eleme"></i>
          <span class="icon-name">el-icon-platform-eleme</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-eleme"></i>
          <span class="icon-name">el-icon-eleme</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-delete-solid"></i>
          <span class="icon-name">el-icon-delete-solid</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-delete"></i>
          <span class="icon-name">el-icon-delete</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-s-tools"></i>
          <span class="icon-name">el-icon-s-tools</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-setting"></i>
          <span class="icon-name">el-icon-setting</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-user-solid"></i>
          <span class="icon-name">el-icon-user-solid</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-user"></i>
          <span class="icon-name">el-icon-user</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-phone"></i>
          <span class="icon-name">el-icon-phone</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-phone-outline"></i>
          <span class="icon-name">el-icon-phone-outline</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-more"></i>
          <span class="icon-name">el-icon-more</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-more-outline"></i>
          <span class="icon-name">el-icon-more-outline</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-star-on"></i>
          <span class="icon-name">el-icon-star-on</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-star-off"></i>
          <span class="icon-name">el-icon-star-off</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-s-goods"></i>
          <span class="icon-name">el-icon-s-goods</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-goods"></i>
          <span class="icon-name">el-icon-goods</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-warning"></i>
          <span class="icon-name">el-icon-warning</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-warning-outline"></i>
          <span class="icon-name">el-icon-warning-outline</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-question"></i>
          <span class="icon-name">el-icon-question</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-info"></i>
          <span class="icon-name">el-icon-info</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-remove"></i>
          <span class="icon-name">el-icon-remove</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-circle-plus"></i>
          <span class="icon-name">el-icon-circle-plus</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-success"></i>
          <span class="icon-name">el-icon-success</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-error"></i>
          <span class="icon-name">el-icon-error</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-zoom-in"></i>
          <span class="icon-name">el-icon-zoom-in</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-zoom-out"></i>
          <span class="icon-name">el-icon-zoom-out</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-remove-outline"></i>
          <span class="icon-name">el-icon-remove-outline</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-circle-plus-outline"></i>
          <span class="icon-name">el-icon-circle-plus-outline</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-circle-check"></i>
          <span class="icon-name">el-icon-circle-check</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-circle-close"></i>
          <span class="icon-name">el-icon-circle-close</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-s-help"></i>
          <span class="icon-name">el-icon-s-help</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-help"></i>
          <span class="icon-name">el-icon-help</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-minus"></i>
          <span class="icon-name">el-icon-minus</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-plus"></i>
          <span class="icon-name">el-icon-plus</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-check"></i>
          <span class="icon-name">el-icon-check</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-close"></i>
          <span class="icon-name">el-icon-close</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-picture"></i>
          <span class="icon-name">el-icon-picture</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-picture-outline"></i>
          <span class="icon-name">el-icon-picture-outline</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-picture-outline-round"></i>
          <span class="icon-name">el-icon-picture-outline-round</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-upload"></i>
          <span class="icon-name">el-icon-upload</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-upload2"></i>
          <span class="icon-name">el-icon-upload2</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-download"></i>
          <span class="icon-name">el-icon-download</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-camera-solid"></i>
          <span class="icon-name">el-icon-camera-solid</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-camera"></i>
          <span class="icon-name">el-icon-camera</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-video-camera-solid"></i>
          <span class="icon-name">el-icon-video-camera-solid</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-video-camera"></i>
          <span class="icon-name">el-icon-video-camera</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-message-solid"></i>
          <span class="icon-name">el-icon-message-solid</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-bell"></i>
          <span class="icon-name">el-icon-bell</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-s-cooperation"></i>
          <span class="icon-name">el-icon-s-cooperation</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-s-order"></i>
          <span class="icon-name">el-icon-s-order</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-s-platform"></i>
          <span class="icon-name">el-icon-s-platform</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-s-fold"></i>
          <span class="icon-name">el-icon-s-fold</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-s-unfold"></i>
          <span class="icon-name">el-icon-s-unfold</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-s-operation"></i>
          <span class="icon-name">el-icon-s-operation</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-s-promotion"></i>
          <span class="icon-name">el-icon-s-promotion</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-s-home"></i>
          <span class="icon-name">el-icon-s-home</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-s-release"></i>
          <span class="icon-name">el-icon-s-release</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-s-ticket"></i>
          <span class="icon-name">el-icon-s-ticket</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-s-management"></i>
          <span class="icon-name">el-icon-s-management</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-s-open"></i>
          <span class="icon-name">el-icon-s-open</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-s-shop"></i>
          <span class="icon-name">el-icon-s-shop</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-s-marketing"></i>
          <span class="icon-name">el-icon-s-marketing</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-s-flag"></i>
          <span class="icon-name">el-icon-s-flag</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-s-comment"></i>
          <span class="icon-name">el-icon-s-comment</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-s-finance"></i>
          <span class="icon-name">el-icon-s-finance</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-s-claim"></i>
          <span class="icon-name">el-icon-s-claim</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-s-custom"></i>
          <span class="icon-name">el-icon-s-custom</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-s-opportunity"></i>
          <span class="icon-name">el-icon-s-opportunity</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-s-data"></i>
          <span class="icon-name">el-icon-s-data</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-s-check"></i>
          <span class="icon-name">el-icon-s-check</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-s-grid"></i>
          <span class="icon-name">el-icon-s-grid</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-menu"></i>
          <span class="icon-name">el-icon-menu</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-share"></i>
          <span class="icon-name">el-icon-share</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-d-caret"></i>
          <span class="icon-name">el-icon-d-caret</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-caret-left"></i>
          <span class="icon-name">el-icon-caret-left</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-caret-right"></i>
          <span class="icon-name">el-icon-caret-right</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-caret-bottom"></i>
          <span class="icon-name">el-icon-caret-bottom</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-caret-top"></i>
          <span class="icon-name">el-icon-caret-top</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-bottom-left"></i>
          <span class="icon-name">el-icon-bottom-left</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-bottom-right"></i>
          <span class="icon-name">el-icon-bottom-right</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-back"></i>
          <span class="icon-name">el-icon-back</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-right"></i>
          <span class="icon-name">el-icon-right</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-bottom"></i>
          <span class="icon-name">el-icon-bottom</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-top"></i>
          <span class="icon-name">el-icon-top</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-top-left"></i>
          <span class="icon-name">el-icon-top-left</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-top-right"></i>
          <span class="icon-name">el-icon-top-right</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-arrow-left"></i>
          <span class="icon-name">el-icon-arrow-left</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-arrow-right"></i>
          <span class="icon-name">el-icon-arrow-right</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-arrow-down"></i>
          <span class="icon-name">el-icon-arrow-down</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-arrow-up"></i>
          <span class="icon-name">el-icon-arrow-up</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-d-arrow-left"></i>
          <span class="icon-name">el-icon-d-arrow-left</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-d-arrow-right"></i>
          <span class="icon-name">el-icon-d-arrow-right</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-video-pause"></i>
          <span class="icon-name">el-icon-video-pause</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-video-play"></i>
          <span class="icon-name">el-icon-video-play</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-refresh"></i>
          <span class="icon-name">el-icon-refresh</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-refresh-right"></i>
          <span class="icon-name">el-icon-refresh-right</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-refresh-left"></i>
          <span class="icon-name">el-icon-refresh-left</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-finished"></i>
          <span class="icon-name">el-icon-finished</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-sort"></i>
          <span class="icon-name">el-icon-sort</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-sort-up"></i>
          <span class="icon-name">el-icon-sort-up</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-sort-down"></i>
          <span class="icon-name">el-icon-sort-down</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-rank"></i>
          <span class="icon-name">el-icon-rank</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-loading"></i>
          <span class="icon-name">el-icon-loading</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-view"></i>
          <span class="icon-name">el-icon-view</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-c-scale-to-original"></i>
          <span class="icon-name">el-icon-c-scale-to-original</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-date"></i>
          <span class="icon-name">el-icon-date</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-edit"></i>
          <span class="icon-name">el-icon-edit</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-edit-outline"></i>
          <span class="icon-name">el-icon-edit-outline</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-folder"></i>
          <span class="icon-name">el-icon-folder</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-folder-opened"></i>
          <span class="icon-name">el-icon-folder-opened</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-folder-add"></i>
          <span class="icon-name">el-icon-folder-add</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-folder-remove"></i>
          <span class="icon-name">el-icon-folder-remove</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-folder-delete"></i>
          <span class="icon-name">el-icon-folder-delete</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-folder-checked"></i>
          <span class="icon-name">el-icon-folder-checked</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-tickets"></i>
          <span class="icon-name">el-icon-tickets</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-document-remove"></i>
          <span class="icon-name">el-icon-document-remove</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-document-delete"></i>
          <span class="icon-name">el-icon-document-delete</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-document-copy"></i>
          <span class="icon-name">el-icon-document-copy</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-document-checked"></i>
          <span class="icon-name">el-icon-document-checked</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-document"></i>
          <span class="icon-name">el-icon-document</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-document-add"></i>
          <span class="icon-name">el-icon-document-add</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-printer"></i>
          <span class="icon-name">el-icon-printer</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-paperclip"></i>
          <span class="icon-name">el-icon-paperclip</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-takeaway-box"></i>
          <span class="icon-name">el-icon-takeaway-box</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-search"></i>
          <span class="icon-name">el-icon-search</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-monitor"></i>
          <span class="icon-name">el-icon-monitor</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-attract"></i>
          <span class="icon-name">el-icon-attract</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-mobile"></i>
          <span class="icon-name">el-icon-mobile</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-scissors"></i>
          <span class="icon-name">el-icon-scissors</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-umbrella"></i>
          <span class="icon-name">el-icon-umbrella</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-headset"></i>
          <span class="icon-name">el-icon-headset</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-brush"></i>
          <span class="icon-name">el-icon-brush</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-mouse"></i>
          <span class="icon-name">el-icon-mouse</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-coordinate"></i>
          <span class="icon-name">el-icon-coordinate</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-magic-stick"></i>
          <span class="icon-name">el-icon-magic-stick</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-reading"></i>
          <span class="icon-name">el-icon-reading</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-data-line"></i>
          <span class="icon-name">el-icon-data-line</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-data-board"></i>
          <span class="icon-name">el-icon-data-board</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-pie-chart"></i>
          <span class="icon-name">el-icon-pie-chart</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-data-analysis"></i>
          <span class="icon-name">el-icon-data-analysis</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-collection-tag"></i>
          <span class="icon-name">el-icon-collection-tag</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-film"></i>
          <span class="icon-name">el-icon-film</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-suitcase"></i>
          <span class="icon-name">el-icon-suitcase</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-suitcase-1"></i>
          <span class="icon-name">el-icon-suitcase-1</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-receiving"></i>
          <span class="icon-name">el-icon-receiving</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-collection"></i>
          <span class="icon-name">el-icon-collection</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-files"></i>
          <span class="icon-name">el-icon-files</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-notebook-1"></i>
          <span class="icon-name">el-icon-notebook-1</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-notebook-2"></i>
          <span class="icon-name">el-icon-notebook-2</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-toilet-paper"></i>
          <span class="icon-name">el-icon-toilet-paper</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-office-building"></i>
          <span class="icon-name">el-icon-office-building</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-school"></i>
          <span class="icon-name">el-icon-school</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-table-lamp"></i>
          <span class="icon-name">el-icon-table-lamp</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-house"></i>
          <span class="icon-name">el-icon-house</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-no-smoking"></i>
          <span class="icon-name">el-icon-no-smoking</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-smoking"></i>
          <span class="icon-name">el-icon-smoking</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-shopping-cart-full"></i>
          <span class="icon-name">el-icon-shopping-cart-full</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-shopping-cart-1"></i>
          <span class="icon-name">el-icon-shopping-cart-1</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-shopping-cart-2"></i>
          <span class="icon-name">el-icon-shopping-cart-2</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-shopping-bag-1"></i>
          <span class="icon-name">el-icon-shopping-bag-1</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-shopping-bag-2"></i>
          <span class="icon-name">el-icon-shopping-bag-2</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-sold-out"></i>
          <span class="icon-name">el-icon-sold-out</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-sell"></i>
          <span class="icon-name">el-icon-sell</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-present"></i>
          <span class="icon-name">el-icon-present</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-box"></i>
          <span class="icon-name">el-icon-box</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-bank-card"></i>
          <span class="icon-name">el-icon-bank-card</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-money"></i>
          <span class="icon-name">el-icon-money</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-coin"></i>
          <span class="icon-name">el-icon-coin</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-wallet"></i>
          <span class="icon-name">el-icon-wallet</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-discount"></i>
          <span class="icon-name">el-icon-discount</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-price-tag"></i>
          <span class="icon-name">el-icon-price-tag</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-news"></i>
          <span class="icon-name">el-icon-news</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-guide"></i>
          <span class="icon-name">el-icon-guide</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-male"></i>
          <span class="icon-name">el-icon-male</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-female"></i>
          <span class="icon-name">el-icon-female</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-thumb"></i>
          <span class="icon-name">el-icon-thumb</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-cpu"></i>
          <span class="icon-name">el-icon-cpu</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-link"></i>
          <span class="icon-name">el-icon-link</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-connection"></i>
          <span class="icon-name">el-icon-connection</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-open"></i>
          <span class="icon-name">el-icon-open</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-turn-off"></i>
          <span class="icon-name">el-icon-turn-off</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-set-up"></i>
          <span class="icon-name">el-icon-set-up</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-chat-round"></i>
          <span class="icon-name">el-icon-chat-round</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-chat-line-round"></i>
          <span class="icon-name">el-icon-chat-line-round</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-chat-square"></i>
          <span class="icon-name">el-icon-chat-square</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-chat-dot-round"></i>
          <span class="icon-name">el-icon-chat-dot-round</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-chat-dot-square"></i>
          <span class="icon-name">el-icon-chat-dot-square</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-chat-line-square"></i>
          <span class="icon-name">el-icon-chat-line-square</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-message"></i>
          <span class="icon-name">el-icon-message</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-postcard"></i>
          <span class="icon-name">el-icon-postcard</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-position"></i>
          <span class="icon-name">el-icon-position</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-turn-off-microphone"></i>
          <span class="icon-name">el-icon-turn-off-microphone</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-microphone"></i>
          <span class="icon-name">el-icon-microphone</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-close-notification"></i>
          <span class="icon-name">el-icon-close-notification</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-bangzhu"></i>
          <span class="icon-name">el-icon-bangzhu</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-time"></i>
          <span class="icon-name">el-icon-time</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-odometer"></i>
          <span class="icon-name">el-icon-odometer</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-crop"></i>
          <span class="icon-name">el-icon-crop</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-aim"></i>
          <span class="icon-name">el-icon-aim</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-switch-button"></i>
          <span class="icon-name">el-icon-switch-button</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-full-screen"></i>
          <span class="icon-name">el-icon-full-screen</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-copy-document"></i>
          <span class="icon-name">el-icon-copy-document</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-mic"></i>
          <span class="icon-name">el-icon-mic</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-stopwatch"></i>
          <span class="icon-name">el-icon-stopwatch</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-medal-1"></i>
          <span class="icon-name">el-icon-medal-1</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-medal"></i>
          <span class="icon-name">el-icon-medal</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-trophy"></i>
          <span class="icon-name">el-icon-trophy</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-trophy-1"></i>
          <span class="icon-name">el-icon-trophy-1</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-first-aid-kit"></i>
          <span class="icon-name">el-icon-first-aid-kit</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-discover"></i>
          <span class="icon-name">el-icon-discover</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-place"></i>
          <span class="icon-name">el-icon-place</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-location"></i>
          <span class="icon-name">el-icon-location</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-location-outline"></i>
          <span class="icon-name">el-icon-location-outline</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-location-information"></i>
          <span class="icon-name">el-icon-location-information</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-add-location"></i>
          <span class="icon-name">el-icon-add-location</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-delete-location"></i>
          <span class="icon-name">el-icon-delete-location</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-map-location"></i>
          <span class="icon-name">el-icon-map-location</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-alarm-clock"></i>
          <span class="icon-name">el-icon-alarm-clock</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-timer"></i>
          <span class="icon-name">el-icon-timer</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-watch-1"></i>
          <span class="icon-name">el-icon-watch-1</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-watch"></i>
          <span class="icon-name">el-icon-watch</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-lock"></i>
          <span class="icon-name">el-icon-lock</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-unlock"></i>
          <span class="icon-name">el-icon-unlock</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-key"></i>
          <span class="icon-name">el-icon-key</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-service"></i>
          <span class="icon-name">el-icon-service</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-mobile-phone"></i>
          <span class="icon-name">el-icon-mobile-phone</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-bicycle"></i>
          <span class="icon-name">el-icon-bicycle</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-truck"></i>
          <span class="icon-name">el-icon-truck</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-ship"></i>
          <span class="icon-name">el-icon-ship</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-basketball"></i>
          <span class="icon-name">el-icon-basketball</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-football"></i>
          <span class="icon-name">el-icon-football</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-soccer"></i>
          <span class="icon-name">el-icon-soccer</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-baseball"></i>
          <span class="icon-name">el-icon-baseball</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-wind-power"></i>
          <span class="icon-name">el-icon-wind-power</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-light-rain"></i>
          <span class="icon-name">el-icon-light-rain</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-lightning"></i>
          <span class="icon-name">el-icon-lightning</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-heavy-rain"></i>
          <span class="icon-name">el-icon-heavy-rain</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-sunrise"></i>
          <span class="icon-name">el-icon-sunrise</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-sunrise-1"></i>
          <span class="icon-name">el-icon-sunrise-1</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-sunset"></i>
          <span class="icon-name">el-icon-sunset</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-sunny"></i>
          <span class="icon-name">el-icon-sunny</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-cloudy"></i>
          <span class="icon-name">el-icon-cloudy</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-partly-cloudy"></i>
          <span class="icon-name">el-icon-partly-cloudy</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-cloudy-and-sunny"></i>
          <span class="icon-name">el-icon-cloudy-and-sunny</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-moon"></i>
          <span class="icon-name">el-icon-moon</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-moon-night"></i>
          <span class="icon-name">el-icon-moon-night</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-dish"></i>
          <span class="icon-name">el-icon-dish</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-dish-1"></i>
          <span class="icon-name">el-icon-dish-1</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-food"></i>
          <span class="icon-name">el-icon-food</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-chicken"></i>
          <span class="icon-name">el-icon-chicken</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-fork-spoon"></i>
          <span class="icon-name">el-icon-fork-spoon</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-knife-fork"></i>
          <span class="icon-name">el-icon-knife-fork</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-burger"></i>
          <span class="icon-name">el-icon-burger</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-tableware"></i>
          <span class="icon-name">el-icon-tableware</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-sugar"></i>
          <span class="icon-name">el-icon-sugar</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-dessert"></i>
          <span class="icon-name">el-icon-dessert</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-ice-cream"></i>
          <span class="icon-name">el-icon-ice-cream</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-hot-water"></i>
          <span class="icon-name">el-icon-hot-water</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-water-cup"></i>
          <span class="icon-name">el-icon-water-cup</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-coffee-cup"></i>
          <span class="icon-name">el-icon-coffee-cup</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-cold-drink"></i>
          <span class="icon-name">el-icon-cold-drink</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-goblet"></i>
          <span class="icon-name">el-icon-goblet</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-goblet-full"></i>
          <span class="icon-name">el-icon-goblet-full</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-goblet-square"></i>
          <span class="icon-name">el-icon-goblet-square</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-goblet-square-full"></i>
          <span class="icon-name">el-icon-goblet-square-full</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-refrigerator"></i>
          <span class="icon-name">el-icon-refrigerator</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-grape"></i>
          <span class="icon-name">el-icon-grape</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-watermelon"></i>
          <span class="icon-name">el-icon-watermelon</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-cherry"></i>
          <span class="icon-name">el-icon-cherry</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-apple"></i>
          <span class="icon-name">el-icon-apple</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-pear"></i>
          <span class="icon-name">el-icon-pear</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-orange"></i>
          <span class="icon-name">el-icon-orange</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-coffee"></i>
          <span class="icon-name">el-icon-coffee</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-ice-tea"></i>
          <span class="icon-name">el-icon-ice-tea</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-ice-drink"></i>
          <span class="icon-name">el-icon-ice-drink</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-milk-tea"></i>
          <span class="icon-name">el-icon-milk-tea</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-potato-strips"></i>
          <span class="icon-name">el-icon-potato-strips</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-lollipop"></i>
          <span class="icon-name">el-icon-lollipop</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-ice-cream-square"></i>
          <span class="icon-name">el-icon-ice-cream-square</span>
        </span>
      </li>
      <li>
        <span>
          <i class="el-icon-ice-cream-round"></i>
          <span class="icon-name">el-icon-ice-cream-round</span>
        </span>
      </li>
    </ul>
  </el-card>
</div>

</template>

<style scoped>
.page-component .content > ul.icon-list {
  overflow: hidden;
  list-style: none;
  margin: 0px;
  padding: 0 !important;
  border: 1px solid #eaeefb;
  border-radius: 4px;
  list-style: none;
}
.icon-list li {
  list-style: none;
  cursor: pointer;
  float: left;
  width: 16.66%;
  text-align: center;
  height: 120px;
  line-height: 120px;
  color: #666;
  font-size: 13px;
  border-right: 1px solid #eee;
  border-bottom: 1px solid #eee;
  margin-right: -1px;
  margin-bottom: -1px;
}
.icon-list li:after {
  content: "";
  height: 100%;
}
.icon-list li:after,
.icon-list li span {
  display: inline-block;
  vertical-align: middle;
}
.icon-list li span {
  line-height: normal;
  font-family: Helvetica Neue, Helvetica, PingFang SC, Hiragino Sans GB,
    Microsoft YaHei, SimSun, sans-serif;
  color: #99a9bf;
  transition: color 0.15s linear;
}
.icon-list li i {
  display: block;
  font-size: 32px;
  margin-bottom: 15px;
  color: #606266;
  transition: color 0.15s linear;
}
.icon-list li .icon-name {
  display: inline-block;
  padding: 0 3px;
  height: 1em;
}
.icon-list li:hover i,
.icon-list li:hover span {
  color: #5cb6ff;
}
.demo-block.demo-input-number .el-input-number + .el-input-number {
  margin-left: 10px;
}
.demo-input .el-select .el-input {
  width: 130px;
}
.demo-input .el-input {
  width: 180px;
}
.demo-input .el-textarea {
  width: 414px;
}
.demo-input .el-input-group {
  width: 100%;
}
.demo-input .demo-input-size .el-input {
  vertical-align: top;
  margin: 0 10px 10px 0;
}
.demo-input .input-with-select .el-input-group__prepend {
  background-color: #fff;
}
.demo-input .demo-autocomplete {
  text-align: center;
}
.demo-input .demo-autocomplete .sub-title {
  margin-bottom: 10px;
  font-size: 14px;
  color: #8492a6;
}
.demo-input .demo-autocomplete .el-col:not(:last-child) {
  border-right: 1px solid rgba(224, 230, 237, 0.5);
}
.demo-input .demo-autocomplete .el-autocomplete {
  text-align: left;
}
.el-autocomplete-suggestion.my-autocomplete li {
  line-height: normal;
  padding-top: 7px;
  padding-bottom: 7px;
}
.el-autocomplete-suggestion.my-autocomplete li .name {
  text-overflow: ellipsis;
  overflow: hidden;
}
.el-autocomplete-suggestion.my-autocomplete li .addr {
  font-size: 12px;
  color: #b4b4b4;
}
.el-autocomplete-suggestion.my-autocomplete li .highlighted .addr {
  color: #ddd;
}
.demo-input-suffix {
  margin-bottom: 15px;
}
.demo-input-suffix .el-input {
  margin-right: 15px;
}
.demo-layout .el-row {
  margin-bottom: 20px;
}
.demo-layout .el-row:last-child {
  margin-bottom: 0;
}
.demo-layout .el-col {
  border-radius: 4px;
}
.demo-layout .bg-purple-dark {
  background: #99a9bf;
}
.demo-layout .bg-purple {
  background: #d3dce6;
}
.demo-layout .bg-purple-light {
  background: #e5e9f2;
}
.demo-layout .grid-content {
  border-radius: 4px;
  min-height: 36px;
}
.demo-layout .row-bg {
  padding: 10px 0;
  background-color: #f9fafc;
}
.demo-loading .el-table {
  border: none;
}
.demo-block.demo-menu .el-menu-demo {
  padding-left: 55px;
}
.demo-block.demo-menu .el-menu-vertical-demo:not(.el-menu--collapse) {
  width: 240px;
  min-height: 400px;
}
.demo-block.demo-menu .line {
  height: 1px;
  background-color: #e0e6ed;
  margin: 35px -24px;
}
.demo-block.demo-menu h5 {
  font-size: 14px;
  color: #8492a6;
  margin-top: 10px;
}
.demo-block.demo-menu .tac {
  text-align: center;
}
.demo-block.demo-menu .tac .el-menu-vertical-demo {
  display: inline-block;
  text-align: left;
}
.demo-pagination .source.first {
  padding: 0;
}
.demo-pagination .first .block {
  padding: 30px 0;
  text-align: center;
  border-right: 1px solid #eff2f6;
  display: inline-block;
  width: 50%;
  box-sizing: border-box;
}
.demo-pagination .first .block:last-child {
  border-right: none;
}
.demo-pagination .first .demonstration {
  display: block;
  color: #8492a6;
  font-size: 14px;
  margin-bottom: 20px;
}
.demo-pagination .source.last {
  padding: 0;
}
.demo-pagination .last .block {
  padding: 30px 24px;
  border-bottom: 1px solid #eff2f6;
}
.demo-pagination .last .block:last-child {
  border-bottom: none;
}
.demo-pagination .last .demonstration {
  font-size: 14px;
  color: #8492a6;
  line-height: 44px;
}
.demo-pagination .last .demonstration + .el-pagination {
  width: 70%;
  margin: 5px 20px 0 0;
}
.demo-block.demo-popover .el-popover + .el-popover {
  margin-left: 10px;
}
.demo-block.demo-popover .el-input {
  width: 360px;
}
.demo-block.demo-popover .el-button {
  margin-left: 10px;
}
.demo-block.demo-progress .el-progress--line {
  margin-bottom: 15px;
  width: 350px;
}
.demo-block.demo-progress .el-progress--circle {
  margin-right: 15px;
}
.demo-rate .block {
  padding: 30px 0;
  text-align: center;
  border-right: 1px solid #eff2f6;
  display: inline-block;
  width: 49%;
  box-sizing: border-box;
}
.demo-rate .block:last-child {
  border-right: none;
}
.demo-rate .demonstration {
  display: block;
  color: #8492a6;
  font-size: 14px;
  margin-bottom: 20px;
}
.demo-select .el-select {
  width: 240px;
}
.demo-block.demo-slider .source {
  padding: 0;
}
.demo-block.demo-slider .block {
  padding: 30px 24px;
  overflow: hidden;
  border-bottom: 1px solid #eff2f6;
}
.demo-block.demo-slider .block:last-child {
  border-bottom: none;
}
.demo-block.demo-slider .demonstration {
  font-size: 14px;
  color: #8492a6;
  line-height: 44px;
}
.demo-block.demo-slider .demonstration + .el-slider {
  float: right;
  width: 70%;
  margin-right: 20px;
}
.demo-block.demo-switch .el-switch {
  margin: 20px 20px 20px 0;
}
.el-table .warning-row {
  background: #fdf5e6;
}
.el-table .success-row {
  background: #f0f9eb;
}
.demo-table .name-wrapper {
  display: inline-block;
}
.demo-table .demo-table-expand label {
  width: 90px;
  color: #99a9bf;
}
.demo-table .demo-table-expand .el-form-item {
  margin-right: 0;
  margin-bottom: 0;
  width: 50%;
}
.demo-block.demo-tag .el-tag + .el-tag {
  margin-left: 10px;
}
.demo-block.demo-tag .button-new-tag {
  margin-left: 10px;
  height: 32px;
  line-height: 30px;
  padding-top: 0;
  padding-bottom: 0;
}
.demo-block.demo-tag .input-new-tag {
  width: 90px;
  margin-left: 10px;
  vertical-align: bottom;
}
.demo-block.demo-tag .tag-group {
  display: flex;
  align-items: center;
}
.demo-block.demo-tag .tag-group__title {
  width: 45px;
  font-size: 14px;
  color: #606266;
}
.demo-block.demo-tag .tag-group + .tag-group {
  margin-top: 10px;
}
.demo-block .el-date-editor + .el-date-editor {
  margin-left: 10px;
}
.demo-timeline .source .radio {
  margin-bottom: 20px;
}
.demo-timeline .source .radio .el-radio-group {
  margin-left: 20px;
}
.demo-tooltip .el-tooltip + .el-tooltip {
  margin-left: 15px;
}
.demo-tooltip .box {
  width: 400px;
}
.demo-tooltip .box .top {
  text-align: center;
}
.demo-tooltip .box .left {
  float: left;
  width: 60px;
}
.demo-tooltip .box .right {
  float: right;
  width: 60px;
}
.demo-tooltip .box .bottom {
  clear: both;
  text-align: center;
}
.demo-tooltip .box .item {
  margin: 4px;
}
.demo-tooltip .box .left .el-tooltip__popper,
.demo-tooltip .box .right .el-tooltip__popper {
  padding: 8px 10px;
}
.demo-tooltip .box .el-tooltip {
  margin-left: 0;
}
.demo-transition .transition-box {
  margin-bottom: 10px;
  width: 200px;
  height: 100px;
  border-radius: 4px;
  background-color: #409eff;
  text-align: center;
  color: #fff;
  padding: 40px 20px;
  margin-right: 20px;
  box-sizing: border-box;
}
.demo-transfer .transfer-footer {
  margin-left: 15px;
  padding: 6px 5px;
}
.demo-tree .leaf {
  width: 20px;
  background: #ddd;
}
.demo-tree .folder {
  width: 20px;
  background: #888;
}
.demo-tree .buttons,
.demo-tree .filter-tree {
  margin-top: 20px;
}
.demo-tree .custom-tree-container {
  display: flex;
  margin: -24px;
}
.demo-tree .block {
  flex: 1;
  padding: 8px 24px 24px;
}
.demo-tree .block:first-child {
  border-right: 1px solid #eff2f6;
}
.demo-tree .block > p {
  text-align: center;
  margin: 0;
  line-height: 4;
}
.demo-tree .custom-tree-node {
  flex: 1;
  display: flex;
  align-items: center;
  justify-content: space-between;
  font-size: 14px;
  padding-right: 8px;
}
.demo-typo-size .color-dark-light {
  color: #99a9bf;
}
.demo-term-box img {
  width: 24%;
  margin: 0 4% 20px 0;
}
.lineH-left {
  display: inline-block;
  height: 80px;
}
.lineH-right {
  display: inline-block;
  list-style: none;
  padding: 0 0 0 90px;
  margin: 0;
  vertical-align: top;
}
.lineH-right li {
  font-size: 13px;
  color: #666;
  height: 20px;
  line-height: 20px;
}
.lineH-right li span {
  padding-left: 40px;
}
.upload-tip {
  color: #8492a6;
  font-size: 12px;
  margin-top: 7px;
}
.demo-block {
  margin-bottom: 24px;
}
.demo-block .upload-demo {
  width: 360px;
}
.demo-block .avatar-uploader .el-upload {
  border: 1px dashed #d9d9d9;
  border-radius: 6px;
  cursor: pointer;
  position: relative;
  overflow: hidden;
}
.demo-block .avatar-uploader .el-upload:focus,
.demo-block .avatar-uploader .el-upload:hover {
  border-color: #409eff;
}
.demo-block .avatar-uploader .avatar-uploader-icon {
  font-size: 28px;
  color: #8c939d;
  width: 178px;
  height: 178px;
  line-height: 178px;
  text-align: center;
}
.demo-block .avatar-uploader .avatar {
  width: 178px;
  height: 178px;
  display: block;
}
.demo-divider-container-1 {
  display: inline-block;
  width: 33%;
}
.demo-divider-container-2 {
  display: inline-block;
  width: 50%;
}
@keyframes dot {
  0% {
    width: 0;
    margin-right: 1em;
  }
  to {
    width: 1em;
    margin-right: 0;
  }
}
.demo-image .block,
.demo-image__error .block,
.demo-image__placeholder .block {
  padding: 30px 0;
  text-align: center;
  border-right: 1px solid #eff2f6;
  display: inline-block;
  width: 20%;
  box-sizing: border-box;
  vertical-align: top;
}
.demo-image .block:last-child,
.demo-image__error .block:last-child,
.demo-image__placeholder .block:last-child {
  border-right: none;
}
.demo-image .demonstration,
.demo-image__error .demonstration,
.demo-image__placeholder .demonstration {
  display: block;
  color: #8492a6;
  font-size: 14px;
  margin-bottom: 20px;
}
.demo-image__error .block,
.demo-image__placeholder .block {
  width: 49%;
}
.demo-image__error .el-image,
.demo-image__placeholder .el-image {
  width: 300px;
  height: 200px;
}
.demo-image__error .image-slot,
.demo-image__placeholder .image-slot {
  display: flex;
  justify-content: center;
  align-items: center;
  width: 100%;
  height: 100%;
  background: #f5f7fa;
  color: #909399;
  font-size: 14px;
}
.demo-image__placeholder .dot {
  animation: dot 2s steps(3, start) infinite;
  overflow: hidden;
}
.demo-image__error .image-slot {
  font-size: 30px;
}
.demo-image__lazy {
  height: 400px;
  overflow-y: auto;
}
.demo-image__lazy .el-image {
  display: block;
  min-height: 200px;
  margin-bottom: 10px;
}
.demo-image__lazy .el-image:last-child {
  margin-bottom: 0;
}
.infinite-list {
  height: 300px;
  padding: 0;
  margin: 0;
  list-style: none;
}
.infinite-list .infinite-list-item {
  display: flex;
  align-items: center;
  justify-content: center;
  height: 50px;
  background: #e8f3fe;
  margin: 10px;
  color: #7dbcfc;
}
.infinite-list .infinite-list-item + .list-item {
  margin-top: 10px;
}
.infinite-list-wrapper {
  height: 300px;
  text-align: center;
}
.infinite-list-wrapper .list {
  padding: 0;
  margin: 0;
  list-style: none;
}
.infinite-list-wrapper .list-item {
  display: flex;
  align-items: center;
  justify-content: center;
  height: 50px;
  background: #fff6f6;
  color: #ff8484;
}
.infinite-list-wrapper .list-item + .list-item {
  margin-top: 10px;
}
.demo-avatar.demo-basic {
  text-align: center;
}
.demo-avatar.demo-basic .demo-basic--circle,
.demo-avatar.demo-basic .demo-basic--square {
  display: flex;
  justify-content: space-between;
  align-items: center;
}
.demo-avatar.demo-basic .demo-basic--circle .block,
.demo-avatar.demo-basic .demo-basic--square .block {
  flex: 1;
}
.demo-avatar.demo-basic .demo-basic--circle .block:not(:last-child),
.demo-avatar.demo-basic .demo-basic--square .block:not(:last-child) {
  border-right: 1px solid rgba(224, 230, 237, 0.5);
}
.demo-avatar .sub-title {
  margin-bottom: 10px;
  font-size: 14px;
  color: #8492a6;
}
.demo-avatar .el-col:not(:last-child) {
  border-right: 1px solid rgba(224, 230, 237, 0.5);
}
.demo-avatar .demo-type {
  display: flex;
}
.demo-avatar .demo-type > div {
  flex: 1;
  text-align: center;
}
.demo-avatar .demo-type > div:not(:last-child) {
  border-right: 1px solid rgba(224, 230, 237, 0.5);
}
.demo-avatar .demo-fit {
  display: flex;
  text-align: center;
  justify-content: space-between;
}
.demo-avatar .demo-fit .block {
  flex: 1;
  display: flex;
  flex-direction: column;
  flex-grow: 0;
}
.demo-avatar .demo-fit .title {
  margin-bottom: 10px;
  font-size: 14px;
  color: #8492a6;
}
.demo-drawer__content {
  display: flex;
  flex-direction: column;
  height: 100%;
}
.demo-drawer__content form {
  flex: 1;
}
.demo-drawer__footer {
  display: flex;
}
.demo-drawer__footer button {
  flex: 1;
}
.el-drawer__body {
  padding: 20px;
}
body,
html {
  margin: 0;
  padding: 0;
  height: 100%;
  font-family: Helvetica Neue, Helvetica, PingFang SC, Hiragino Sans GB,
    Microsoft YaHei, SimSun, sans-serif;
  font-weight: 400;
  -webkit-font-smoothing: antialiased;
  -webkit-tap-highlight-color: transparent;
}
body.is-component,
html.is-component {
  overflow: hidden;
}
#app {
  height: 100%;
}
#app.is-component {
  overflow-y: hidden;
}
#app.is-component .main-cnt {
  padding: 0;
  margin-top: 0;
  height: 100%;
  min-height: auto;
}
#app.is-component .headerWrapper {
  position: fixed;
  width: 100%;
  left: 0;
  top: 0;
  z-index: 1500;
}
#app.is-component .headerWrapper .container {
  padding: 0;
}
a {
  color: #409eff;
  text-decoration: none;
}
code {
  background-color: #f9fafc;
  padding: 0 4px;
  border: 1px solid #eaeefb;
  border-radius: 4px;
}
button,
input,
select,
textarea {
  font-family: inherit;
  font-size: inherit;
  line-height: inherit;
  color: inherit;
}
.hljs {
  line-height: 1.8;
  font-family: Menlo, Monaco, Consolas, Courier, monospace;
  font-size: 12px;
  padding: 18px 24px;
  background-color: #fafafa;
  border: 1px solid #eaeefb;
  margin-bottom: 25px;
  border-radius: 4px;
  -webkit-font-smoothing: auto;
}
.main-cnt {
  margin-top: -80px;
  padding: 80px 0 340px;
  box-sizing: border-box;
  min-height: 100%;
}
.container,
.page-container {
  width: 1140px;
  padding: 0;
  margin: 0 auto;
}
.page-container {
  padding-top: 55px;
}
.page-container h2 {
  font-size: 28px;
  color: #1f2d3d;
  margin: 0;
}
.page-container h3 {
  font-size: 22px;
}
.page-container h2,
.page-container h3,
.page-container h4,
.page-container h5 {
  font-weight: 400;
  color: #1f2f3d;
}
.page-container h2:hover a,
.page-container h3:hover a,
.page-container h4:hover a,
.page-container h5:hover a {
  opacity: 0.4;
}
.page-container h2 a,
.page-container h3 a,
.page-container h4 a,
.page-container h5 a {
  float: left;
  margin-left: -20px;
  opacity: 0;
  cursor: pointer;
}
.page-container h2 a:hover,
.page-container h3 a:hover,
.page-container h4 a:hover,
.page-container h5 a:hover {
  opacity: 0.4;
}
.page-container p {
  font-size: 14px;
  color: #5e6d82;
  line-height: 1.5em;
}
.page-container .tip {
  padding: 8px 16px;
  background-color: #ecf8ff;
  border-radius: 4px;
  border-left: 5px solid #50bfff;
  margin: 20px 0;
}
.page-container .tip code {
  background-color: hsla(0, 0%, 100%, 0.7);
  color: #445368;
}
.page-container .warning {
  padding: 8px 16px;
  background-color: #fff6f7;
  border-radius: 4px;
  border-left: 5px solid #fe6c6f;
  margin: 20px 0;
}
.page-container .warning code {
  background-color: hsla(0, 0%, 100%, 0.7);
  color: #445368;
}
.demo {
  margin: 20px 0;
}
@media (max-width: 1140px) {
  .container,
  .page-container {
    width: 100%;
  }
}
@media (max-width: 768px) {
  .container,
  .page-container {
    padding: 0 20px;
  }
  #app.is-component .headerWrapper .container {
    padding: 0 12px;
  }
}
@font-face {
  font-family: icomoon;
  src: url(data:application/vnd.ms-fontobject;base64,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);
  src: url(data:application/vnd.ms-fontobject;base64,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#iefix)
      format("embedded-opentype"),
    url(data:font/ttf;base64,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)
      format("truetype"),
    url(data:font/woff;base64,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)
      format("woff"),
    url(data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPjxkZWZzPjxmb250IGlkPSJpY29tb29uIiBob3Jpei1hZHYteD0iMTAyNCI+PGZvbnQtZmFjZSB1bml0cy1wZXItZW09IjEwMjQiIGFzY2VudD0iOTYwIiBkZXNjZW50PSItNjQiLz48Z2x5cGggaG9yaXotYWR2LXg9IjUxMiIvPjxnbHlwaCB1bmljb2RlPSLupIAiIGdseXBoLW5hbWU9InJhdGUtZmFjZS1vZmYiIGQ9Ik0wIDQ0OGMwIDI4Mi43NjYgMjI5LjIzNCA1MTIgNTEyIDUxMnM1MTItMjI5LjIzNCA1MTItNTEyYzAtMjgyLjc2Ni0yMjkuMjM0LTUxMi01MTItNTEyUzAgMTY1LjIzNCAwIDQ0OHptOTQ3LjIgMGMwIDI0MC4zNTEtMTk0Ljg0OSA0MzUuMi00MzUuMiA0MzUuMlM3Ni44IDY4OC4zNTEgNzYuOCA0NDggMjcxLjY0OSAxMi44IDUxMiAxMi44IDk0Ny4yIDIwNy42NDkgOTQ3LjIgNDQ4ek0yOTQuNCA1ODguODUzQzI5NC40IDYxNy4xIDMxNy4xMjYgNjQwIDM0NS42IDY0MGMyOC4yNzcgMCA1MS4yLTIyLjY2NCA1MS4yLTUxLjE0N3YtNTEuMzA3YzAtMjguMjQ3LTIyLjcyNi01MS4xNDctNTEuMi01MS4xNDctMjguMjc3IDAtNTEuMiAyMi42NjQtNTEuMiA1MS4xNDd2NTEuMzA3em0zMzIuOCAwQzYyNy4yIDYxNy4xIDY0OS45MjYgNjQwIDY3OC40IDY0MGMyOC4yNzcgMCA1MS4yLTIyLjY2NCA1MS4yLTUxLjE0N3YtNTEuMzA3YzAtMjguMjQ3LTIyLjcyNi01MS4xNDctNTEuMi01MS4xNDctMjguMjc3IDAtNTEuMiAyMi42NjQtNTEuMiA1MS4xNDd2NTEuMzA3ek0zNjEuMTQzIDI4MS42QzMzOC40MzIgMjgxLjYgMzIwIDI2Mi45NjMgMzIwIDI0MHMxOC40MzItNDEuNiA0MS4xNDMtNDEuNmgzMDEuNzE0QzY4NS41NjggMTk4LjQgNzA0IDIxNy4wMzcgNzA0IDI0MHMtMTguNDMyIDQxLjYtNDEuMTQzIDQxLjZIMzYxLjE0M3oiLz48Z2x5cGggdW5pY29kZT0i7qSBIiBnbHlwaC1uYW1lPSJyYXRlLWZhY2UtMSIgZD0iTTUxMi4wMDEgOTYwQzIyOS4yMyA5NjAgMCA3MzAuNzcgMCA0NDcuOTk4IDAgMTY1LjIyOCAyMjkuMjMtNjQgNTEyLjAwMS02NCA3OTQuNzctNjQgMTAyNCAxNjUuMjI3IDEwMjQgNDQ3Ljk5OFM3OTQuNzcgOTYwIDUxMi4wMDEgOTYwek0yOTQuNCA1ODguODUzQzI5NC40IDYxNy4xIDMxNy4xMjYgNjQwIDM0NS42IDY0MGMyOC4yNzcgMCA1MS4yLTIyLjY2NCA1MS4yLTUxLjE0N3YtNTEuMzA3YzAtMjguMjQ3LTIyLjcyNi01MS4xNDctNTEuMi01MS4xNDctMjguMjc3IDAtNTEuMiAyMi42NjQtNTEuMiA1MS4xNDd2NTEuMzA3em0zMzIuOCAwQzYyNy4yIDYxNy4xIDY0OS45MjYgNjQwIDY3OC40IDY0MGMyOC4yNzcgMCA1MS4yLTIyLjY2NCA1MS4yLTUxLjE0N3YtNTEuMzA3YzAtMjguMjQ3LTIyLjcyNi01MS4xNDctNTEuMi01MS4xNDctMjguMjc3IDAtNTEuMiAyMi42NjQtNTEuMiA1MS4xNDd2NTEuMzA3em02Ny4zMjktNDA3LjY1NmwtMy40MjIgMS4yMTZjLTU2LjE1IDI3Ljg3Mi0xMTYuMzg4IDQyLjA0Ny0xNzguODgyIDQyLjA0Ny02NC41NTYgMC0xMjUuNjExLTE0LjMxNi0xODEuNTE1LTQyLjQ1bC0zLjM4Mi0xLjEzMmMtMi4xMDItLjYyOC00Ljk0NS0xLjUyOS04LjQ4OS0xLjUyOS0yMC41NTQgMC0zNy4yMzkgMTguMjktMzcuMjM5IDQwLjczNCAwIDEwLjY1NSA0LjU3MSAyMS4zNjEgMTIuMTE0IDI5LjM5OWwtLjQ1NiAyLjQ4MyA5LjUxNiA0LjY5OGM2Ni43NCAzMy4xMDQgMTM5LjMzNiA1MC41MzcgMjA5LjkwNyA1MC41MzcgNzEuODg5IDAgMTQyLjMzNi0xNi45ODQgMjEwLjMxNC01MC45NDggMTEuOTQzLTcuMTgxIDE5LjQwNS0yMC45NTMgMTkuNDA1LTM1LjkwMyAwLTI2LjMyOC0yMS43MS00Ny45NTgtNDcuODcxLTM5LjE1M3oiLz48Z2x5cGggdW5pY29kZT0i7qSCIiBnbHlwaC1uYW1lPSJyYXRlLWZhY2UtMiIgZD0iTTUxMi02NEMyMjkuMjM0LTY0IDAgMTY1LjIzNCAwIDQ0OHMyMjkuMjM0IDUxMiA1MTIgNTEyYzI4Mi43NjYgMCA1MTItMjI5LjIzNCA1MTItNTEyUzc5NC43NjYtNjQgNTEyLTY0ek0yOTQuNCA1ODguODUzdi01MS4zMDdjMC0yOC40ODIgMjIuOTIzLTUxLjE0NyA1MS4yLTUxLjE0NyAyOC40NzQgMCA1MS4yIDIyLjg5OSA1MS4yIDUxLjE0N3Y1MS4zMDdjMCAyOC40ODItMjIuOTIzIDUxLjE0Ny01MS4yIDUxLjE0Ny0yOC40NzQgMC01MS4yLTIyLjg5OS01MS4yLTUxLjE0N3ptMzMyLjggMHYtNTEuMzA3YzAtMjguNDgyIDIyLjkyMy01MS4xNDcgNTEuMi01MS4xNDcgMjguNDc0IDAgNTEuMiAyMi44OTkgNTEuMiA1MS4xNDd2NTEuMzA3YzAgMjguNDgyLTIyLjkyMyA1MS4xNDctNTEuMiA1MS4xNDctMjguNDc0IDAtNTEuMi0yMi44OTktNTEuMi01MS4xNDd6TTM2MS4xNDMgMjgxLjZDMzM4LjQzMiAyODEuNiAzMjAgMjYyLjk2MyAzMjAgMjQwczE4LjQzMi00MS42IDQxLjE0My00MS42aDMwMS43MTRDNjg1LjU2OCAxOTguNCA3MDQgMjE3LjAzNyA3MDQgMjQwcy0xOC40MzIgNDEuNi00MS4xNDMgNDEuNkgzNjEuMTQzeiIvPjxnbHlwaCB1bmljb2RlPSLupIMiIGdseXBoLW5hbWU9InJhdGUtZmFjZS0zIiBkPSJNNTEyLjAwMSA5NjBDMjI5LjIzMSA5NjAgMCA3MzAuNzcgMCA0NDguMDAxUzIyOS4yMy02NCA1MTIuMDAxLTY0Qzc5NC43NzEtNjQgMTAyNCAxNjUuMjMgMTAyNCA0NDcuOTk5Uzc5NC43NzEgOTYwIDUxMi4wMDEgOTYwem0zMDUuNDk0LTY1NC40MzVhNDAuNDA2IDQwLjQwNiAwIDAgMC0xLjU2OS00LjM1IDQwLjg1IDQwLjg1IDAgMCAwLTIuMzE3LTQuNTU2Qzc1Ny45NzggMTg5LjA0NiA2NDQuMDkxIDExNS4yIDUxMi4yODYgMTE1LjJsLS4yODYuMDAyLS4yODYtLjAwMmMtMTMxLjgwNCAwLTI0NS42OTMgNzMuODQ1LTMwMS4zMjMgMTgxLjQ1OWE0MC44NSA0MC44NSAwIDAgMC0yLjMxNyA0LjU1NiA0MC4zMjggNDAuMzI4IDAgMCAwLTEuNTY5IDQuMzUgNDAuMzE3IDQwLjMxNyAwIDAgMC0xLjcwNSAxMS41OTcgNDAuMzE0IDQwLjMxNCAwIDAgMCA0LjM3MiAxOC4yODJjNi44OTcgMTMuNjAxIDIxLjIzOSAyMi45NTUgMzcuODIyIDIyLjk1NXMzMC45MjctOS4zNTUgMzcuODIzLTIyLjk1NWguNjc2QzMyNi45MDQgMjUzLjk5MSA0MTIuNjI0IDE5Ny45IDUxMiAxOTcuNzkyYzk5LjM3NS4xMDggMTg1LjA5NSA1Ni4yIDIyNi41MDcgMTM3LjY1MmguNjc2YzYuODk3IDEzLjYwMSAyMS4yMzkgMjIuOTU1IDM3LjgyMyAyMi45NTVzMzAuOTI3LTkuMzU1IDM3LjgyMi0yMi45NTVhNDAuMjk4IDQwLjI5OCAwIDAgMCA0LjM3Mi0xOC4yODJjMC00LjAyOS0uNjAyLTcuOTE4LTEuNzA1LTExLjU5N3pNNjI3LjIgNTg4Ljg1M0M2MjcuMiA2MTcuMSA2NDkuOTI2IDY0MCA2NzguNCA2NDBjMjguMjc3IDAgNTEuMi0yMi42NjQgNTEuMi01MS4xNDd2LTUxLjMwN2MwLTI4LjI0Ny0yMi43MjYtNTEuMTQ3LTUxLjItNTEuMTQ3LTI4LjI3NyAwLTUxLjIgMjIuNjY0LTUxLjIgNTEuMTQ3djUxLjMwN3ptLTMzMi44IDBDMjk0LjQgNjE3LjEgMzE3LjEyNiA2NDAgMzQ1LjYgNjQwYzI4LjI3NyAwIDUxLjItMjIuNjY0IDUxLjItNTEuMTQ3di01MS4zMDdjMC0yOC4yNDctMjIuNzI2LTUxLjE0Ny01MS4yLTUxLjE0Ny0yOC4yNzcgMC01MS4yIDIyLjY2NC01MS4yIDUxLjE0N3Y1MS4zMDd6Ii8+PC9mb250PjwvZGVmcz48L3N2Zz4=)
      format("svg");
  font-weight: 400;
  font-style: normal;
}
[class*=" icon-"],
[class^="icon-"] {
  font-family: icomoon !important;
  speak: none;
  font-style: normal;
  font-weight: 400;
  font-variant: normal;
  text-transform: none;
  line-height: 1;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
.icon-rate-face-off:before {
  content: "\e900";
}
.icon-rate-face-1:before {
  content: "\e901";
}
.icon-rate-face-2:before {
  content: "\e902";
}
.icon-rate-face-3:before {
  content: "\e903";
}
</style>

<script>
export default {
  methods: {
    copyText(text, callback) {
      // text: 要复制的内容， callback: 回调
      var tag = document.createElement("input");
      tag.setAttribute("id", "cp_hgz_input");
      tag.value = text;
      document.getElementsByTagName("body")[0].appendChild(tag);
      document.getElementById("cp_hgz_input").select();
      document.execCommand("copy");
      document.getElementById("cp_hgz_input").remove();
      if (callback) {
        callback(text);
      }
    }
  },
  mounted() {
    var $this = this;
    var icons = document
      .getElementsByClassName("icon-list")[0]
      .getElementsByTagName("li");
    for (var i = 0; i < icons.length; i++) {
      (function(i) {
        icons[i].addEventListener(
          "click",
          function() {
            var ele = icons[i].getElementsByClassName("icon-name")[0];
            $this.copyText(ele.innerHTML, function() {
              $this.$notify({
                title: "成功",
                message: "已复制图标到剪切板",
                type: "success"
              });
            });
          },
          false
        );
      })(i);
    }
  }
};
</script>