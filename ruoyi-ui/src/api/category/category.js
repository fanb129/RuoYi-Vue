import request from '@/utils/request'

// 查询资源分类列表
export function listCategory(query) {
  return request({
    url: '/category/category/list',
    method: 'get',
    params: query
  })
}

// 查询资源分类详细
export function getCategory(id) {
  return request({
    url: '/category/category/' + id,
    method: 'get'
  })
}

// 新增资源分类
export function addCategory(data) {
  return request({
    url: '/category/category',
    method: 'post',
    data: data
  })
}

// 修改资源分类
export function updateCategory(data) {
  return request({
    url: '/category/category',
    method: 'put',
    data: data
  })
}

// 删除资源分类
export function delCategory(id) {
  return request({
    url: '/category/category/' + id,
    method: 'delete'
  })
}
