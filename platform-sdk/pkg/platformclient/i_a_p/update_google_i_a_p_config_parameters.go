// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package i_a_p

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"context"
	"net/http"
	"time"

	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
)

// NewUpdateGoogleIAPConfigParams creates a new UpdateGoogleIAPConfigParams object
// with the default values initialized.
func NewUpdateGoogleIAPConfigParams() *UpdateGoogleIAPConfigParams {
	var ()
	return &UpdateGoogleIAPConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateGoogleIAPConfigParamsWithTimeout creates a new UpdateGoogleIAPConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateGoogleIAPConfigParamsWithTimeout(timeout time.Duration) *UpdateGoogleIAPConfigParams {
	var ()
	return &UpdateGoogleIAPConfigParams{

		timeout: timeout,
	}
}

// NewUpdateGoogleIAPConfigParamsWithContext creates a new UpdateGoogleIAPConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateGoogleIAPConfigParamsWithContext(ctx context.Context) *UpdateGoogleIAPConfigParams {
	var ()
	return &UpdateGoogleIAPConfigParams{

		Context: ctx,
	}
}

// NewUpdateGoogleIAPConfigParamsWithHTTPClient creates a new UpdateGoogleIAPConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateGoogleIAPConfigParamsWithHTTPClient(client *http.Client) *UpdateGoogleIAPConfigParams {
	var ()
	return &UpdateGoogleIAPConfigParams{
		HTTPClient: client,
	}
}

/*UpdateGoogleIAPConfigParams contains all the parameters to send to the API endpoint
for the update google i a p config operation typically these are written to a http.Request
*/
type UpdateGoogleIAPConfigParams struct {

	/*Body*/
	Body *platformclientmodels.GoogleIAPConfigRequest
	/*Namespace*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the update google i a p config params
func (o *UpdateGoogleIAPConfigParams) WithTimeout(timeout time.Duration) *UpdateGoogleIAPConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update google i a p config params
func (o *UpdateGoogleIAPConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update google i a p config params
func (o *UpdateGoogleIAPConfigParams) WithContext(ctx context.Context) *UpdateGoogleIAPConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update google i a p config params
func (o *UpdateGoogleIAPConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update google i a p config params
func (o *UpdateGoogleIAPConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update google i a p config params
func (o *UpdateGoogleIAPConfigParams) WithHTTPClient(client *http.Client) *UpdateGoogleIAPConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update google i a p config params
func (o *UpdateGoogleIAPConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// WithBody adds the body to the update google i a p config params
func (o *UpdateGoogleIAPConfigParams) WithBody(body *platformclientmodels.GoogleIAPConfigRequest) *UpdateGoogleIAPConfigParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update google i a p config params
func (o *UpdateGoogleIAPConfigParams) SetBody(body *platformclientmodels.GoogleIAPConfigRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the update google i a p config params
func (o *UpdateGoogleIAPConfigParams) WithNamespace(namespace string) *UpdateGoogleIAPConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update google i a p config params
func (o *UpdateGoogleIAPConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateGoogleIAPConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}
