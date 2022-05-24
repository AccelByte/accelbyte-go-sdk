// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package public_channel

// This file was generated by the swagger tool.
// Editing this file might prove futile when you re-run the swagger generate command

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/ugc-sdk/pkg/ugcclientmodels"
)

// NewCreateChannelParams creates a new CreateChannelParams object
// with the default values initialized.
func NewCreateChannelParams() *CreateChannelParams {
	var ()
	return &CreateChannelParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewCreateChannelParamsWithTimeout creates a new CreateChannelParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewCreateChannelParamsWithTimeout(timeout time.Duration) *CreateChannelParams {
	var ()
	return &CreateChannelParams{

		timeout: timeout,
	}
}

// NewCreateChannelParamsWithContext creates a new CreateChannelParams object
// with the default values initialized, and the ability to set a context for a request
func NewCreateChannelParamsWithContext(ctx context.Context) *CreateChannelParams {
	var ()
	return &CreateChannelParams{

		Context: ctx,
	}
}

// NewCreateChannelParamsWithHTTPClient creates a new CreateChannelParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewCreateChannelParamsWithHTTPClient(client *http.Client) *CreateChannelParams {
	var ()
	return &CreateChannelParams{
		HTTPClient: client,
	}
}

/*CreateChannelParams contains all the parameters to send to the API endpoint
for the create channel operation typically these are written to a http.Request
*/
type CreateChannelParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *ugcclientmodels.ModelsChannelRequest
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*UserID
	  userID

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the create channel params
func (o *CreateChannelParams) WithTimeout(timeout time.Duration) *CreateChannelParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the create channel params
func (o *CreateChannelParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the create channel params
func (o *CreateChannelParams) WithContext(ctx context.Context) *CreateChannelParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the create channel params
func (o *CreateChannelParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the create channel params
func (o *CreateChannelParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the create channel params
func (o *CreateChannelParams) WithHTTPClient(client *http.Client) *CreateChannelParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the create channel params
func (o *CreateChannelParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the create channel params
func (o *CreateChannelParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the create channel params
func (o *CreateChannelParams) WithBody(body *ugcclientmodels.ModelsChannelRequest) *CreateChannelParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the create channel params
func (o *CreateChannelParams) SetBody(body *ugcclientmodels.ModelsChannelRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the create channel params
func (o *CreateChannelParams) WithNamespace(namespace string) *CreateChannelParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the create channel params
func (o *CreateChannelParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the create channel params
func (o *CreateChannelParams) WithUserID(userID string) *CreateChannelParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the create channel params
func (o *CreateChannelParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *CreateChannelParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
