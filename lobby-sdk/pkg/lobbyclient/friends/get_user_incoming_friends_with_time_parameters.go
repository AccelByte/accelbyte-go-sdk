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

// NewGetUserIncomingFriendsWithTimeParams creates a new GetUserIncomingFriendsWithTimeParams object
// with the default values initialized.
func NewGetUserIncomingFriendsWithTimeParams() *GetUserIncomingFriendsWithTimeParams {
	var ()
	return &GetUserIncomingFriendsWithTimeParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetUserIncomingFriendsWithTimeParamsWithTimeout creates a new GetUserIncomingFriendsWithTimeParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetUserIncomingFriendsWithTimeParamsWithTimeout(timeout time.Duration) *GetUserIncomingFriendsWithTimeParams {
	var ()
	return &GetUserIncomingFriendsWithTimeParams{

		timeout: timeout,
	}
}

// NewGetUserIncomingFriendsWithTimeParamsWithContext creates a new GetUserIncomingFriendsWithTimeParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetUserIncomingFriendsWithTimeParamsWithContext(ctx context.Context) *GetUserIncomingFriendsWithTimeParams {
	var ()
	return &GetUserIncomingFriendsWithTimeParams{

		Context: ctx,
	}
}

// NewGetUserIncomingFriendsWithTimeParamsWithHTTPClient creates a new GetUserIncomingFriendsWithTimeParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetUserIncomingFriendsWithTimeParamsWithHTTPClient(client *http.Client) *GetUserIncomingFriendsWithTimeParams {
	var ()
	return &GetUserIncomingFriendsWithTimeParams{
		HTTPClient: client,
	}
}

/*GetUserIncomingFriendsWithTimeParams contains all the parameters to send to the API endpoint
for the get user incoming friends with time operation typically these are written to a http.Request
*/
type GetUserIncomingFriendsWithTimeParams struct {

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

// WithTimeout adds the timeout to the get user incoming friends with time params
func (o *GetUserIncomingFriendsWithTimeParams) WithTimeout(timeout time.Duration) *GetUserIncomingFriendsWithTimeParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get user incoming friends with time params
func (o *GetUserIncomingFriendsWithTimeParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get user incoming friends with time params
func (o *GetUserIncomingFriendsWithTimeParams) WithContext(ctx context.Context) *GetUserIncomingFriendsWithTimeParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get user incoming friends with time params
func (o *GetUserIncomingFriendsWithTimeParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get user incoming friends with time params
func (o *GetUserIncomingFriendsWithTimeParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get user incoming friends with time params
func (o *GetUserIncomingFriendsWithTimeParams) WithHTTPClient(client *http.Client) *GetUserIncomingFriendsWithTimeParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get user incoming friends with time params
func (o *GetUserIncomingFriendsWithTimeParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get user incoming friends with time params
func (o *GetUserIncomingFriendsWithTimeParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the get user incoming friends with time params
func (o *GetUserIncomingFriendsWithTimeParams) WithNamespace(namespace string) *GetUserIncomingFriendsWithTimeParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get user incoming friends with time params
func (o *GetUserIncomingFriendsWithTimeParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *GetUserIncomingFriendsWithTimeParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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