// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package tags

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

// NewAdminListTagsParams creates a new AdminListTagsParams object
// with the default values initialized.
func NewAdminListTagsParams() *AdminListTagsParams {
	var (
		limitDefault  = int64(10)
		offsetDefault = int64(0)
		sortByDefault = string("name:asc")
	)
	return &AdminListTagsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,
		SortBy: &sortByDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminListTagsParamsWithTimeout creates a new AdminListTagsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminListTagsParamsWithTimeout(timeout time.Duration) *AdminListTagsParams {
	var (
		limitDefault  = int64(10)
		offsetDefault = int64(0)
		sortByDefault = string("name:asc")
	)
	return &AdminListTagsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,
		SortBy: &sortByDefault,

		timeout: timeout,
	}
}

// NewAdminListTagsParamsWithContext creates a new AdminListTagsParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminListTagsParamsWithContext(ctx context.Context) *AdminListTagsParams {
	var (
		limitDefault  = int64(10)
		offsetDefault = int64(0)
		sortByDefault = string("name:asc")
	)
	return &AdminListTagsParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,
		SortBy: &sortByDefault,

		Context: ctx,
	}
}

// NewAdminListTagsParamsWithHTTPClient creates a new AdminListTagsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminListTagsParamsWithHTTPClient(client *http.Client) *AdminListTagsParams {
	var (
		limitDefault  = int64(10)
		offsetDefault = int64(0)
		sortByDefault = string("name:asc")
	)
	return &AdminListTagsParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		SortBy:     &sortByDefault,
		HTTPClient: client,
	}
}

/*AdminListTagsParams contains all the parameters to send to the API endpoint
for the admin list tags operation typically these are written to a http.Request
*/
type AdminListTagsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*Limit
	  the maximum number of data that may be returned (1...100)

	*/
	Limit *int64
	/*Name
	  like's query by tag name

	*/
	Name *string
	/*Offset
	  offset

	*/
	Offset *int64
	/*SortBy
	  sort by, default is 'name:asc', allow values: [name, name:asc, name:desc, createdAt, createdAt:asc, createdAt:desc]

	*/
	SortBy *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin list tags params
func (o *AdminListTagsParams) WithTimeout(timeout time.Duration) *AdminListTagsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin list tags params
func (o *AdminListTagsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin list tags params
func (o *AdminListTagsParams) WithContext(ctx context.Context) *AdminListTagsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin list tags params
func (o *AdminListTagsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin list tags params
func (o *AdminListTagsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin list tags params
func (o *AdminListTagsParams) WithHTTPClient(client *http.Client) *AdminListTagsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin list tags params
func (o *AdminListTagsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin list tags params
func (o *AdminListTagsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the admin list tags params
func (o *AdminListTagsParams) WithNamespace(namespace string) *AdminListTagsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin list tags params
func (o *AdminListTagsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the admin list tags params
func (o *AdminListTagsParams) WithLimit(limit *int64) *AdminListTagsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the admin list tags params
func (o *AdminListTagsParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithName adds the name to the admin list tags params
func (o *AdminListTagsParams) WithName(name *string) *AdminListTagsParams {
	o.SetName(name)
	return o
}

// SetName adds the name to the admin list tags params
func (o *AdminListTagsParams) SetName(name *string) {
	o.Name = name
}

// WithOffset adds the offset to the admin list tags params
func (o *AdminListTagsParams) WithOffset(offset *int64) *AdminListTagsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the admin list tags params
func (o *AdminListTagsParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithSortBy adds the sortBy to the admin list tags params
func (o *AdminListTagsParams) WithSortBy(sortBy *string) *AdminListTagsParams {
	o.SetSortBy(sortBy)
	return o
}

// SetSortBy adds the sortBy to the admin list tags params
func (o *AdminListTagsParams) SetSortBy(sortBy *string) {
	o.SortBy = sortBy
}

// WriteToRequest writes these params to a swagger request
func (o *AdminListTagsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.Limit != nil {

		// query param limit
		var qrLimit int64
		if o.Limit != nil {
			qrLimit = *o.Limit
		}
		qLimit := swag.FormatInt64(qrLimit)
		if qLimit != "" {
			if err := r.SetQueryParam("limit", qLimit); err != nil {
				return err
			}
		}

	}

	if o.Name != nil {

		// query param name
		var qrName string
		if o.Name != nil {
			qrName = *o.Name
		}
		qName := qrName
		if qName != "" {
			if err := r.SetQueryParam("name", qName); err != nil {
				return err
			}
		}

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

	// setting the default header value
	if err := r.SetHeaderParam("User-Agent", utils.UserAgentGen()); err != nil {
		return err
	}

	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
