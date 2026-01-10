import request from '@/utils/request'

// 查询资源信息列表
export function listItem(query) {
  return request({
    url: '/item/item/list',
    method: 'get',
    params: query
  })
}

// 查询资源信息详细
export function getItem(id) {
  return request({
    url: '/item/item/' + id,
    method: 'get'
  })
}

// 新增资源信息
export function addItem(data) {
  return request({
    url: '/item/item',
    method: 'post',
    data: data
  })
}

// 修改资源信息
export function updateItem(data) {
  return request({
    url: '/item/item',
    method: 'put',
    data: data
  })
}

// 删除资源信息
export function delItem(id) {
  return request({
    url: '/item/item/' + id,
    method: 'delete'
  })
}

// 查询公开资源信息列表（用于首页浏览）
export function listPublicItem(query) {
  return request({
    url: '/item/item/public/list',
    method: 'get',
    params: query
  })
}