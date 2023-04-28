// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package user_action

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/basic-sdk/pkg/basicclientmodels"
)

// NewBanUsersParams creates a new BanUsersParams object
// with the default values initialized.
func NewBanUsersParams() *BanUsersParams {
	var ()
	return &BanUsersParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewBanUsersParamsWithTimeout creates a new BanUsersParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewBanUsersParamsWithTimeout(timeout time.Duration) *BanUsersParams {
	var ()
	return &BanUsersParams{

		timeout: timeout,
	}
}

// NewBanUsersParamsWithContext creates a new BanUsersParams object
// with the default values initialized, and the ability to set a context for a request
func NewBanUsersParamsWithContext(ctx context.Context) *BanUsersParams {
	var ()
	return &BanUsersParams{

		Context: ctx,
	}
}

// NewBanUsersParamsWithHTTPClient creates a new BanUsersParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewBanUsersParamsWithHTTPClient(client *http.Client) *BanUsersParams {
	var ()
	return &BanUsersParams{
		HTTPClient: client,
	}
}

/*BanUsersParams contains all the parameters to send to the API endpoint
for the ban users operation typically these are written to a http.Request
*/
type BanUsersParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *basicclientmodels.UserBanRequest
	/*Namespace
	  namespace, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the ban users params
func (o *BanUsersParams) WithTimeout(timeout time.Duration) *BanUsersParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the ban users params
func (o *BanUsersParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the ban users params
func (o *BanUsersParams) WithContext(ctx context.Context) *BanUsersParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the ban users params
func (o *BanUsersParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the ban users params
func (o *BanUsersParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the ban users params
func (o *BanUsersParams) WithHTTPClient(client *http.Client) *BanUsersParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the ban users params
func (o *BanUsersParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the ban users params
func (o *BanUsersParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the ban users params
func (o *BanUsersParams) WithBody(body *basicclientmodels.UserBanRequest) *BanUsersParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the ban users params
func (o *BanUsersParams) SetBody(body *basicclientmodels.UserBanRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the ban users params
func (o *BanUsersParams) WithNamespace(namespace string) *BanUsersParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the ban users params
func (o *BanUsersParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *BanUsersParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
