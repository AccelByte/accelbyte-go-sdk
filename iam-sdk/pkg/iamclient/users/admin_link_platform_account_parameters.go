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

// NewAdminLinkPlatformAccountParams creates a new AdminLinkPlatformAccountParams object
// with the default values initialized.
func NewAdminLinkPlatformAccountParams() *AdminLinkPlatformAccountParams {
	var ()
	return &AdminLinkPlatformAccountParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminLinkPlatformAccountParamsWithTimeout creates a new AdminLinkPlatformAccountParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminLinkPlatformAccountParamsWithTimeout(timeout time.Duration) *AdminLinkPlatformAccountParams {
	var ()
	return &AdminLinkPlatformAccountParams{

		timeout: timeout,
	}
}

// NewAdminLinkPlatformAccountParamsWithContext creates a new AdminLinkPlatformAccountParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminLinkPlatformAccountParamsWithContext(ctx context.Context) *AdminLinkPlatformAccountParams {
	var ()
	return &AdminLinkPlatformAccountParams{

		Context: ctx,
	}
}

// NewAdminLinkPlatformAccountParamsWithHTTPClient creates a new AdminLinkPlatformAccountParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminLinkPlatformAccountParamsWithHTTPClient(client *http.Client) *AdminLinkPlatformAccountParams {
	var ()
	return &AdminLinkPlatformAccountParams{
		HTTPClient: client,
	}
}

/*AdminLinkPlatformAccountParams contains all the parameters to send to the API endpoint
for the admin link platform account operation typically these are written to a http.Request
*/
type AdminLinkPlatformAccountParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *iamclientmodels.ModelLinkPlatformAccountRequest
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*UserID
	  User ID

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin link platform account params
func (o *AdminLinkPlatformAccountParams) WithTimeout(timeout time.Duration) *AdminLinkPlatformAccountParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin link platform account params
func (o *AdminLinkPlatformAccountParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin link platform account params
func (o *AdminLinkPlatformAccountParams) WithContext(ctx context.Context) *AdminLinkPlatformAccountParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin link platform account params
func (o *AdminLinkPlatformAccountParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin link platform account params
func (o *AdminLinkPlatformAccountParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin link platform account params
func (o *AdminLinkPlatformAccountParams) WithHTTPClient(client *http.Client) *AdminLinkPlatformAccountParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin link platform account params
func (o *AdminLinkPlatformAccountParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin link platform account params
func (o *AdminLinkPlatformAccountParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the admin link platform account params
func (o *AdminLinkPlatformAccountParams) WithBody(body *iamclientmodels.ModelLinkPlatformAccountRequest) *AdminLinkPlatformAccountParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin link platform account params
func (o *AdminLinkPlatformAccountParams) SetBody(body *iamclientmodels.ModelLinkPlatformAccountRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin link platform account params
func (o *AdminLinkPlatformAccountParams) WithNamespace(namespace string) *AdminLinkPlatformAccountParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin link platform account params
func (o *AdminLinkPlatformAccountParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin link platform account params
func (o *AdminLinkPlatformAccountParams) WithUserID(userID string) *AdminLinkPlatformAccountParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin link platform account params
func (o *AdminLinkPlatformAccountParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminLinkPlatformAccountParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
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
