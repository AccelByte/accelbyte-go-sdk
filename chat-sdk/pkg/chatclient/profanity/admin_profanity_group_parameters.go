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

// NewAdminProfanityGroupParams creates a new AdminProfanityGroupParams object
// with the default values initialized.
func NewAdminProfanityGroupParams() *AdminProfanityGroupParams {
	var ()
	return &AdminProfanityGroupParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminProfanityGroupParamsWithTimeout creates a new AdminProfanityGroupParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminProfanityGroupParamsWithTimeout(timeout time.Duration) *AdminProfanityGroupParams {
	var ()
	return &AdminProfanityGroupParams{

		timeout: timeout,
	}
}

// NewAdminProfanityGroupParamsWithContext creates a new AdminProfanityGroupParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminProfanityGroupParamsWithContext(ctx context.Context) *AdminProfanityGroupParams {
	var ()
	return &AdminProfanityGroupParams{

		Context: ctx,
	}
}

// NewAdminProfanityGroupParamsWithHTTPClient creates a new AdminProfanityGroupParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminProfanityGroupParamsWithHTTPClient(client *http.Client) *AdminProfanityGroupParams {
	var ()
	return &AdminProfanityGroupParams{
		HTTPClient: client,
	}
}

/*AdminProfanityGroupParams contains all the parameters to send to the API endpoint
for the admin profanity group operation typically these are written to a http.Request
*/
type AdminProfanityGroupParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string
	/*Limit
	  default: 100

	*/
	Limit *int64
	/*Offset
	  offset

	*/
	Offset *int64

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin profanity group params
func (o *AdminProfanityGroupParams) WithTimeout(timeout time.Duration) *AdminProfanityGroupParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin profanity group params
func (o *AdminProfanityGroupParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin profanity group params
func (o *AdminProfanityGroupParams) WithContext(ctx context.Context) *AdminProfanityGroupParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin profanity group params
func (o *AdminProfanityGroupParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin profanity group params
func (o *AdminProfanityGroupParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin profanity group params
func (o *AdminProfanityGroupParams) WithHTTPClient(client *http.Client) *AdminProfanityGroupParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin profanity group params
func (o *AdminProfanityGroupParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin profanity group params
func (o *AdminProfanityGroupParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the admin profanity group params
func (o *AdminProfanityGroupParams) WithNamespace(namespace string) *AdminProfanityGroupParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin profanity group params
func (o *AdminProfanityGroupParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the admin profanity group params
func (o *AdminProfanityGroupParams) WithLimit(limit *int64) *AdminProfanityGroupParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the admin profanity group params
func (o *AdminProfanityGroupParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithOffset adds the offset to the admin profanity group params
func (o *AdminProfanityGroupParams) WithOffset(offset *int64) *AdminProfanityGroupParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the admin profanity group params
func (o *AdminProfanityGroupParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *AdminProfanityGroupParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
