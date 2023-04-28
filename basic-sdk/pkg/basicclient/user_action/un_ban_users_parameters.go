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

// NewUnBanUsersParams creates a new UnBanUsersParams object
// with the default values initialized.
func NewUnBanUsersParams() *UnBanUsersParams {
	var ()
	return &UnBanUsersParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUnBanUsersParamsWithTimeout creates a new UnBanUsersParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUnBanUsersParamsWithTimeout(timeout time.Duration) *UnBanUsersParams {
	var ()
	return &UnBanUsersParams{

		timeout: timeout,
	}
}

// NewUnBanUsersParamsWithContext creates a new UnBanUsersParams object
// with the default values initialized, and the ability to set a context for a request
func NewUnBanUsersParamsWithContext(ctx context.Context) *UnBanUsersParams {
	var ()
	return &UnBanUsersParams{

		Context: ctx,
	}
}

// NewUnBanUsersParamsWithHTTPClient creates a new UnBanUsersParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUnBanUsersParamsWithHTTPClient(client *http.Client) *UnBanUsersParams {
	var ()
	return &UnBanUsersParams{
		HTTPClient: client,
	}
}

/*UnBanUsersParams contains all the parameters to send to the API endpoint
for the un ban users operation typically these are written to a http.Request
*/
type UnBanUsersParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *basicclientmodels.ADTOForUnbanUserAPICall
	/*Namespace
	  namespace, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the un ban users params
func (o *UnBanUsersParams) WithTimeout(timeout time.Duration) *UnBanUsersParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the un ban users params
func (o *UnBanUsersParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the un ban users params
func (o *UnBanUsersParams) WithContext(ctx context.Context) *UnBanUsersParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the un ban users params
func (o *UnBanUsersParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the un ban users params
func (o *UnBanUsersParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the un ban users params
func (o *UnBanUsersParams) WithHTTPClient(client *http.Client) *UnBanUsersParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the un ban users params
func (o *UnBanUsersParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the un ban users params
func (o *UnBanUsersParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the un ban users params
func (o *UnBanUsersParams) WithBody(body *basicclientmodels.ADTOForUnbanUserAPICall) *UnBanUsersParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the un ban users params
func (o *UnBanUsersParams) SetBody(body *basicclientmodels.ADTOForUnbanUserAPICall) {
	o.Body = body
}

// WithNamespace adds the namespace to the un ban users params
func (o *UnBanUsersParams) WithNamespace(namespace string) *UnBanUsersParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the un ban users params
func (o *UnBanUsersParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *UnBanUsersParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
