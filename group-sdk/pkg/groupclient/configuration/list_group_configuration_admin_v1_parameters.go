// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package configuration

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

// NewListGroupConfigurationAdminV1Params creates a new ListGroupConfigurationAdminV1Params object
// with the default values initialized.
func NewListGroupConfigurationAdminV1Params() *ListGroupConfigurationAdminV1Params {
	var ()
	return &ListGroupConfigurationAdminV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewListGroupConfigurationAdminV1ParamsWithTimeout creates a new ListGroupConfigurationAdminV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewListGroupConfigurationAdminV1ParamsWithTimeout(timeout time.Duration) *ListGroupConfigurationAdminV1Params {
	var ()
	return &ListGroupConfigurationAdminV1Params{

		timeout: timeout,
	}
}

// NewListGroupConfigurationAdminV1ParamsWithContext creates a new ListGroupConfigurationAdminV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewListGroupConfigurationAdminV1ParamsWithContext(ctx context.Context) *ListGroupConfigurationAdminV1Params {
	var ()
	return &ListGroupConfigurationAdminV1Params{

		Context: ctx,
	}
}

// NewListGroupConfigurationAdminV1ParamsWithHTTPClient creates a new ListGroupConfigurationAdminV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewListGroupConfigurationAdminV1ParamsWithHTTPClient(client *http.Client) *ListGroupConfigurationAdminV1Params {
	var ()
	return &ListGroupConfigurationAdminV1Params{
		HTTPClient: client,
	}
}

/*ListGroupConfigurationAdminV1Params contains all the parameters to send to the API endpoint
for the list group configuration admin v1 operation typically these are written to a http.Request
*/
type ListGroupConfigurationAdminV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string
	/*Limit
	  size of displayed data

	*/
	Limit *int64
	/*Offset
	  The start position that points to query data

	*/
	Offset *int64

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the list group configuration admin v1 params
func (o *ListGroupConfigurationAdminV1Params) WithTimeout(timeout time.Duration) *ListGroupConfigurationAdminV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the list group configuration admin v1 params
func (o *ListGroupConfigurationAdminV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the list group configuration admin v1 params
func (o *ListGroupConfigurationAdminV1Params) WithContext(ctx context.Context) *ListGroupConfigurationAdminV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the list group configuration admin v1 params
func (o *ListGroupConfigurationAdminV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the list group configuration admin v1 params
func (o *ListGroupConfigurationAdminV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the list group configuration admin v1 params
func (o *ListGroupConfigurationAdminV1Params) WithHTTPClient(client *http.Client) *ListGroupConfigurationAdminV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the list group configuration admin v1 params
func (o *ListGroupConfigurationAdminV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the list group configuration admin v1 params
func (o *ListGroupConfigurationAdminV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the list group configuration admin v1 params
func (o *ListGroupConfigurationAdminV1Params) WithNamespace(namespace string) *ListGroupConfigurationAdminV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the list group configuration admin v1 params
func (o *ListGroupConfigurationAdminV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the list group configuration admin v1 params
func (o *ListGroupConfigurationAdminV1Params) WithLimit(limit *int64) *ListGroupConfigurationAdminV1Params {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the list group configuration admin v1 params
func (o *ListGroupConfigurationAdminV1Params) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the list group configuration admin v1 params
func (o *ListGroupConfigurationAdminV1Params) WithOffset(offset *int64) *ListGroupConfigurationAdminV1Params {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the list group configuration admin v1 params
func (o *ListGroupConfigurationAdminV1Params) SetOffset(offset *int64) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *ListGroupConfigurationAdminV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
