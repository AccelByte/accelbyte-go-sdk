// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package profanity

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

// NewAdminProfanityQueryParams creates a new AdminProfanityQueryParams object
// with the default values initialized.
func NewAdminProfanityQueryParams() *AdminProfanityQueryParams {
	var ()
	return &AdminProfanityQueryParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminProfanityQueryParamsWithTimeout creates a new AdminProfanityQueryParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminProfanityQueryParamsWithTimeout(timeout time.Duration) *AdminProfanityQueryParams {
	var ()
	return &AdminProfanityQueryParams{

		timeout: timeout,
	}
}

// NewAdminProfanityQueryParamsWithContext creates a new AdminProfanityQueryParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminProfanityQueryParamsWithContext(ctx context.Context) *AdminProfanityQueryParams {
	var ()
	return &AdminProfanityQueryParams{

		Context: ctx,
	}
}

// NewAdminProfanityQueryParamsWithHTTPClient creates a new AdminProfanityQueryParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminProfanityQueryParamsWithHTTPClient(client *http.Client) *AdminProfanityQueryParams {
	var ()
	return &AdminProfanityQueryParams{
		HTTPClient: client,
	}
}

/*AdminProfanityQueryParams contains all the parameters to send to the API endpoint
for the admin profanity query operation typically these are written to a http.Request
*/
type AdminProfanityQueryParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string
	/*FilterMask
	  filter mask

	*/
	FilterMask *string
	/*IncludeChildren
	  include false positives and false negatives

	*/
	IncludeChildren *bool
	/*Limit
	  limit

	*/
	Limit *int64
	/*Offset
	  offset

	*/
	Offset *int64
	/*ParentID
	  parent ID of the word

	*/
	ParentID *string
	/*StartWith
	  word start with

	*/
	StartWith *string
	/*WordType
	  type of the word: PROFANITY, FALSEPOSITIVE, FALSENEGATIVE

	*/
	WordType *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin profanity query params
func (o *AdminProfanityQueryParams) WithTimeout(timeout time.Duration) *AdminProfanityQueryParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin profanity query params
func (o *AdminProfanityQueryParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin profanity query params
func (o *AdminProfanityQueryParams) WithContext(ctx context.Context) *AdminProfanityQueryParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin profanity query params
func (o *AdminProfanityQueryParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin profanity query params
func (o *AdminProfanityQueryParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin profanity query params
func (o *AdminProfanityQueryParams) WithHTTPClient(client *http.Client) *AdminProfanityQueryParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin profanity query params
func (o *AdminProfanityQueryParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin profanity query params
func (o *AdminProfanityQueryParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the admin profanity query params
func (o *AdminProfanityQueryParams) WithNamespace(namespace string) *AdminProfanityQueryParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin profanity query params
func (o *AdminProfanityQueryParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithFilterMask adds the filterMask to the admin profanity query params
func (o *AdminProfanityQueryParams) WithFilterMask(filterMask *string) *AdminProfanityQueryParams {
	o.SetFilterMask(filterMask)
	return o
}

// SetFilterMask adds the filterMask to the admin profanity query params
func (o *AdminProfanityQueryParams) SetFilterMask(filterMask *string) {
	o.FilterMask = filterMask
}

// WithIncludeChildren adds the includeChildren to the admin profanity query params
func (o *AdminProfanityQueryParams) WithIncludeChildren(includeChildren *bool) *AdminProfanityQueryParams {
	o.SetIncludeChildren(includeChildren)
	return o
}

// SetIncludeChildren adds the includeChildren to the admin profanity query params
func (o *AdminProfanityQueryParams) SetIncludeChildren(includeChildren *bool) {
	o.IncludeChildren = includeChildren
}

// WithLimit adds the limit to the admin profanity query params
func (o *AdminProfanityQueryParams) WithLimit(limit *int64) *AdminProfanityQueryParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the admin profanity query params
func (o *AdminProfanityQueryParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the admin profanity query params
func (o *AdminProfanityQueryParams) WithOffset(offset *int64) *AdminProfanityQueryParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the admin profanity query params
func (o *AdminProfanityQueryParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WithParentID adds the parentID to the admin profanity query params
func (o *AdminProfanityQueryParams) WithParentID(parentID *string) *AdminProfanityQueryParams {
	o.SetParentID(parentID)
	return o
}

// SetParentID adds the parentId to the admin profanity query params
func (o *AdminProfanityQueryParams) SetParentID(parentID *string) {
	o.ParentID = parentID
}

// WithStartWith adds the startWith to the admin profanity query params
func (o *AdminProfanityQueryParams) WithStartWith(startWith *string) *AdminProfanityQueryParams {
	o.SetStartWith(startWith)
	return o
}

// SetStartWith adds the startWith to the admin profanity query params
func (o *AdminProfanityQueryParams) SetStartWith(startWith *string) {
	o.StartWith = startWith
}

// WithWordType adds the wordType to the admin profanity query params
func (o *AdminProfanityQueryParams) WithWordType(wordType *string) *AdminProfanityQueryParams {
	o.SetWordType(wordType)
	return o
}

// SetWordType adds the wordType to the admin profanity query params
func (o *AdminProfanityQueryParams) SetWordType(wordType *string) {
	o.WordType = wordType
}

// WriteToRequest writes these params to a swagger request
func (o *AdminProfanityQueryParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.FilterMask != nil {

		// query param filterMask
		var qrFilterMask string
		if o.FilterMask != nil {
			qrFilterMask = *o.FilterMask
		}
		qFilterMask := qrFilterMask
		if qFilterMask != "" {
			if err := r.SetQueryParam("filterMask", qFilterMask); err != nil {
				return err
			}
		}

	}

	if o.IncludeChildren != nil {

		// query param includeChildren
		var qrIncludeChildren bool
		if o.IncludeChildren != nil {
			qrIncludeChildren = *o.IncludeChildren
		}
		qIncludeChildren := swag.FormatBool(qrIncludeChildren)
		if qIncludeChildren != "" {
			if err := r.SetQueryParam("includeChildren", qIncludeChildren); err != nil {
				return err
			}
		}

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

	if o.ParentID != nil {

		// query param parentId
		var qrParentID string
		if o.ParentID != nil {
			qrParentID = *o.ParentID
		}
		qParentID := qrParentID
		if qParentID != "" {
			if err := r.SetQueryParam("parentId", qParentID); err != nil {
				return err
			}
		}

	}

	if o.StartWith != nil {

		// query param startWith
		var qrStartWith string
		if o.StartWith != nil {
			qrStartWith = *o.StartWith
		}
		qStartWith := qrStartWith
		if qStartWith != "" {
			if err := r.SetQueryParam("startWith", qStartWith); err != nil {
				return err
			}
		}

	}

	if o.WordType != nil {

		// query param wordType
		var qrWordType string
		if o.WordType != nil {
			qrWordType = *o.WordType
		}
		qWordType := qrWordType
		if qWordType != "" {
			if err := r.SetQueryParam("wordType", qWordType); err != nil {
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
