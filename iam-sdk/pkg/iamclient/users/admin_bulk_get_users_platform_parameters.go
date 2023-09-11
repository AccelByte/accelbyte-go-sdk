// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package users

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/iam-sdk/pkg/iamclientmodels"
)

// NewAdminBulkGetUsersPlatformParams creates a new AdminBulkGetUsersPlatformParams object
// with the default values initialized.
func NewAdminBulkGetUsersPlatformParams() *AdminBulkGetUsersPlatformParams {
	var ()
	return &AdminBulkGetUsersPlatformParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminBulkGetUsersPlatformParamsWithTimeout creates a new AdminBulkGetUsersPlatformParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminBulkGetUsersPlatformParamsWithTimeout(timeout time.Duration) *AdminBulkGetUsersPlatformParams {
	var ()
	return &AdminBulkGetUsersPlatformParams{

		timeout: timeout,
	}
}

// NewAdminBulkGetUsersPlatformParamsWithContext creates a new AdminBulkGetUsersPlatformParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminBulkGetUsersPlatformParamsWithContext(ctx context.Context) *AdminBulkGetUsersPlatformParams {
	var ()
	return &AdminBulkGetUsersPlatformParams{

		Context: ctx,
	}
}

// NewAdminBulkGetUsersPlatformParamsWithHTTPClient creates a new AdminBulkGetUsersPlatformParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminBulkGetUsersPlatformParamsWithHTTPClient(client *http.Client) *AdminBulkGetUsersPlatformParams {
	var ()
	return &AdminBulkGetUsersPlatformParams{
		HTTPClient: client,
	}
}

/*AdminBulkGetUsersPlatformParams contains all the parameters to send to the API endpoint
for the admin bulk get users platform operation typically these are written to a http.Request
*/
type AdminBulkGetUsersPlatformParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.ModelUserIDsRequest
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin bulk get users platform params
func (o *AdminBulkGetUsersPlatformParams) WithTimeout(timeout time.Duration) *AdminBulkGetUsersPlatformParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin bulk get users platform params
func (o *AdminBulkGetUsersPlatformParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin bulk get users platform params
func (o *AdminBulkGetUsersPlatformParams) WithContext(ctx context.Context) *AdminBulkGetUsersPlatformParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin bulk get users platform params
func (o *AdminBulkGetUsersPlatformParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin bulk get users platform params
func (o *AdminBulkGetUsersPlatformParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin bulk get users platform params
func (o *AdminBulkGetUsersPlatformParams) WithHTTPClient(client *http.Client) *AdminBulkGetUsersPlatformParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin bulk get users platform params
func (o *AdminBulkGetUsersPlatformParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin bulk get users platform params
func (o *AdminBulkGetUsersPlatformParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the admin bulk get users platform params
func (o *AdminBulkGetUsersPlatformParams) WithBody(body *iamclientmodels.ModelUserIDsRequest) *AdminBulkGetUsersPlatformParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin bulk get users platform params
func (o *AdminBulkGetUsersPlatformParams) SetBody(body *iamclientmodels.ModelUserIDsRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin bulk get users platform params
func (o *AdminBulkGetUsersPlatformParams) WithNamespace(namespace string) *AdminBulkGetUsersPlatformParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin bulk get users platform params
func (o *AdminBulkGetUsersPlatformParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminBulkGetUsersPlatformParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
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
