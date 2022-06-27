// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package friends

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
)

// NewGetUserOutgoingFriendsParams creates a new GetUserOutgoingFriendsParams object
// with the default values initialized.
func NewGetUserOutgoingFriendsParams() *GetUserOutgoingFriendsParams {
	var ()
	return &GetUserOutgoingFriendsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetUserOutgoingFriendsParamsWithTimeout creates a new GetUserOutgoingFriendsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetUserOutgoingFriendsParamsWithTimeout(timeout time.Duration) *GetUserOutgoingFriendsParams {
	var ()
	return &GetUserOutgoingFriendsParams{

		timeout: timeout,
	}
}

// NewGetUserOutgoingFriendsParamsWithContext creates a new GetUserOutgoingFriendsParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetUserOutgoingFriendsParamsWithContext(ctx context.Context) *GetUserOutgoingFriendsParams {
	var ()
	return &GetUserOutgoingFriendsParams{

		Context: ctx,
	}
}

// NewGetUserOutgoingFriendsParamsWithHTTPClient creates a new GetUserOutgoingFriendsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetUserOutgoingFriendsParamsWithHTTPClient(client *http.Client) *GetUserOutgoingFriendsParams {
	var ()
	return &GetUserOutgoingFriendsParams{
		HTTPClient: client,
	}
}

/*GetUserOutgoingFriendsParams contains all the parameters to send to the API endpoint
for the get user outgoing friends operation typically these are written to a http.Request
*/
type GetUserOutgoingFriendsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the get user outgoing friends params
func (o *GetUserOutgoingFriendsParams) WithTimeout(timeout time.Duration) *GetUserOutgoingFriendsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get user outgoing friends params
func (o *GetUserOutgoingFriendsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get user outgoing friends params
func (o *GetUserOutgoingFriendsParams) WithContext(ctx context.Context) *GetUserOutgoingFriendsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get user outgoing friends params
func (o *GetUserOutgoingFriendsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get user outgoing friends params
func (o *GetUserOutgoingFriendsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get user outgoing friends params
func (o *GetUserOutgoingFriendsParams) WithHTTPClient(client *http.Client) *GetUserOutgoingFriendsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get user outgoing friends params
func (o *GetUserOutgoingFriendsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get user outgoing friends params
func (o *GetUserOutgoingFriendsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the get user outgoing friends params
func (o *GetUserOutgoingFriendsParams) WithNamespace(namespace string) *GetUserOutgoingFriendsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get user outgoing friends params
func (o *GetUserOutgoingFriendsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *GetUserOutgoingFriendsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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
