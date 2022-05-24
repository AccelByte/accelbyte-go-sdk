// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package image_config

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// NewListImagesParams creates a new ListImagesParams object
// with the default values initialized.
func NewListImagesParams() *ListImagesParams {
	var (
		sortByDefault        = string("createdAt")
		sortDirectionDefault = string("asc")
	)
	return &ListImagesParams{
		SortBy:        &sortByDefault,
		SortDirection: &sortDirectionDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewListImagesParamsWithTimeout creates a new ListImagesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewListImagesParamsWithTimeout(timeout time.Duration) *ListImagesParams {
	var (
		sortByDefault        = string("createdAt")
		sortDirectionDefault = string("asc")
	)
	return &ListImagesParams{
		SortBy:        &sortByDefault,
		SortDirection: &sortDirectionDefault,

		timeout: timeout,
	}
}

// NewListImagesParamsWithContext creates a new ListImagesParams object
// with the default values initialized, and the ability to set a context for a request
func NewListImagesParamsWithContext(ctx context.Context) *ListImagesParams {
	var (
		sortByDefault        = string("createdAt")
		sortDirectionDefault = string("asc")
	)
	return &ListImagesParams{
		SortBy:        &sortByDefault,
		SortDirection: &sortDirectionDefault,

		Context: ctx,
	}
}

// NewListImagesParamsWithHTTPClient creates a new ListImagesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewListImagesParamsWithHTTPClient(client *http.Client) *ListImagesParams {
	var (
		sortByDefault        = string("createdAt")
		sortDirectionDefault = string("asc")
	)
	return &ListImagesParams{
		SortBy:        &sortByDefault,
		SortDirection: &sortDirectionDefault,
		HTTPClient:    client,
	}
}

/*ListImagesParams contains all the parameters to send to the API endpoint
for the list images operation typically these are written to a http.Request
*/
type ListImagesParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Count
	  how many items to return

	*/
	Count *int64
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*Offset
	  offset from list to query from

	*/
	Offset *int64
	/*Q
	  image name or image version. In UI this is from search text box

	*/
	Q *string
	/*SortBy
	  sort by a specific field

	*/
	SortBy *string
	/*SortDirection
	  sort direction

	*/
	SortDirection *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the list images params
func (o *ListImagesParams) WithTimeout(timeout time.Duration) *ListImagesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the list images params
func (o *ListImagesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the list images params
func (o *ListImagesParams) WithContext(ctx context.Context) *ListImagesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the list images params
func (o *ListImagesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the list images params
func (o *ListImagesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the list images params
func (o *ListImagesParams) WithHTTPClient(client *http.Client) *ListImagesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the list images params
func (o *ListImagesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the list images params
func (o *ListImagesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithCount adds the count to the list images params
func (o *ListImagesParams) WithCount(count *int64) *ListImagesParams {
	o.SetCount(count)
	return o
}

// SetCount adds the count to the list images params
func (o *ListImagesParams) SetCount(count *int64) {
	o.Count = count
}

// WithNamespace adds the namespace to the list images params
func (o *ListImagesParams) WithNamespace(namespace string) *ListImagesParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the list images params
func (o *ListImagesParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithOffset adds the offset to the list images params
func (o *ListImagesParams) WithOffset(offset *int64) *ListImagesParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the list images params
func (o *ListImagesParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithQ adds the q to the list images params
func (o *ListImagesParams) WithQ(q *string) *ListImagesParams {
	o.SetQ(q)
	return o
}

// SetQ adds the q to the list images params
func (o *ListImagesParams) SetQ(q *string) {
	o.Q = q
}

// WithSortBy adds the sortBy to the list images params
func (o *ListImagesParams) WithSortBy(sortBy *string) *ListImagesParams {
	o.SetSortBy(sortBy)
	return o
}

// SetSortBy adds the sortBy to the list images params
func (o *ListImagesParams) SetSortBy(sortBy *string) {
	o.SortBy = sortBy
}

// WithSortDirection adds the sortDirection to the list images params
func (o *ListImagesParams) WithSortDirection(sortDirection *string) *ListImagesParams {
	o.SetSortDirection(sortDirection)
	return o
}

// SetSortDirection adds the sortDirection to the list images params
func (o *ListImagesParams) SetSortDirection(sortDirection *string) {
	o.SortDirection = sortDirection
}

// WriteToRequest writes these params to a swagger request
func (o *ListImagesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Count != nil {

		// query param count
		var qrCount int64
		if o.Count != nil {
			qrCount = *o.Count
		}
		qCount := swag.FormatInt64(qrCount)
		if qCount != "" {
			if err := r.SetQueryParam("count", qCount); err != nil {
				return err
			}
		}

	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.Offset != nil {

		// query param offset
		var qrOffset int64
		if o.Offset != nil {
			qrOffset = *o.Offset
		}
		qOffset := swag.FormatInt64(qrOffset)
		if qOffset != "" {
			if err := r.SetQueryParam("offset", qOffset); err != nil {
				return err
			}
		}

	}

	if o.Q != nil {

		// query param q
		var qrQ string
		if o.Q != nil {
			qrQ = *o.Q
		}
		qQ := qrQ
		if qQ != "" {
			if err := r.SetQueryParam("q", qQ); err != nil {
				return err
			}
		}

	}

	if o.SortBy != nil {

		// query param sortBy
		var qrSortBy string
		if o.SortBy != nil {
			qrSortBy = *o.SortBy
		}
		qSortBy := qrSortBy
		if qSortBy != "" {
			if err := r.SetQueryParam("sortBy", qSortBy); err != nil {
				return err
			}
		}

	}

	if o.SortDirection != nil {

		// query param sortDirection
		var qrSortDirection string
		if o.SortDirection != nil {
			qrSortDirection = *o.SortDirection
		}
		qSortDirection := qrSortDirection
		if qSortDirection != "" {
			if err := r.SetQueryParam("sortDirection", qSortDirection); err != nil {
				return err
			}
		}

	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
