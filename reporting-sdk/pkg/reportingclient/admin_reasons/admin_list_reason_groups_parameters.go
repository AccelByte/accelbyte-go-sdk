// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_reasons

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

// NewAdminListReasonGroupsParams creates a new AdminListReasonGroupsParams object
// with the default values initialized.
func NewAdminListReasonGroupsParams() *AdminListReasonGroupsParams {
	var ()
	return &AdminListReasonGroupsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminListReasonGroupsParamsWithTimeout creates a new AdminListReasonGroupsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminListReasonGroupsParamsWithTimeout(timeout time.Duration) *AdminListReasonGroupsParams {
	var ()
	return &AdminListReasonGroupsParams{

		timeout: timeout,
	}
}

// NewAdminListReasonGroupsParamsWithContext creates a new AdminListReasonGroupsParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminListReasonGroupsParamsWithContext(ctx context.Context) *AdminListReasonGroupsParams {
	var ()
	return &AdminListReasonGroupsParams{

		Context: ctx,
	}
}

// NewAdminListReasonGroupsParamsWithHTTPClient creates a new AdminListReasonGroupsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminListReasonGroupsParamsWithHTTPClient(client *http.Client) *AdminListReasonGroupsParams {
	var ()
	return &AdminListReasonGroupsParams{
		HTTPClient: client,
	}
}

/*AdminListReasonGroupsParams contains all the parameters to send to the API endpoint
for the admin list reason groups operation typically these are written to a http.Request
*/
type AdminListReasonGroupsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*Limit
	  number of data requested (default 25)

	*/
	Limit *int64
	/*Offset
	  number of data offset (default 0)

	*/
	Offset *int64

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin list reason groups params
func (o *AdminListReasonGroupsParams) WithTimeout(timeout time.Duration) *AdminListReasonGroupsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin list reason groups params
func (o *AdminListReasonGroupsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin list reason groups params
func (o *AdminListReasonGroupsParams) WithContext(ctx context.Context) *AdminListReasonGroupsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin list reason groups params
func (o *AdminListReasonGroupsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin list reason groups params
func (o *AdminListReasonGroupsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin list reason groups params
func (o *AdminListReasonGroupsParams) WithHTTPClient(client *http.Client) *AdminListReasonGroupsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin list reason groups params
func (o *AdminListReasonGroupsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin list reason groups params
func (o *AdminListReasonGroupsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the admin list reason groups params
func (o *AdminListReasonGroupsParams) WithNamespace(namespace string) *AdminListReasonGroupsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin list reason groups params
func (o *AdminListReasonGroupsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the admin list reason groups params
func (o *AdminListReasonGroupsParams) WithLimit(limit *int64) *AdminListReasonGroupsParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the admin list reason groups params
func (o *AdminListReasonGroupsParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the admin list reason groups params
func (o *AdminListReasonGroupsParams) WithOffset(offset *int64) *AdminListReasonGroupsParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the admin list reason groups params
func (o *AdminListReasonGroupsParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *AdminListReasonGroupsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
