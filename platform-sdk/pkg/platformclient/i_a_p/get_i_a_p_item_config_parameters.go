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
)

// NewGetIAPItemConfigParams creates a new GetIAPItemConfigParams object
// with the default values initialized.
func NewGetIAPItemConfigParams() *GetIAPItemConfigParams {
	var ()
	return &GetIAPItemConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetIAPItemConfigParamsWithTimeout creates a new GetIAPItemConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetIAPItemConfigParamsWithTimeout(timeout time.Duration) *GetIAPItemConfigParams {
	var ()
	return &GetIAPItemConfigParams{

		timeout: timeout,
	}
}

// NewGetIAPItemConfigParamsWithContext creates a new GetIAPItemConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetIAPItemConfigParamsWithContext(ctx context.Context) *GetIAPItemConfigParams {
	var ()
	return &GetIAPItemConfigParams{

		Context: ctx,
	}
}

// NewGetIAPItemConfigParamsWithHTTPClient creates a new GetIAPItemConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetIAPItemConfigParamsWithHTTPClient(client *http.Client) *GetIAPItemConfigParams {
	var ()
	return &GetIAPItemConfigParams{
		HTTPClient: client,
	}
}

/*GetIAPItemConfigParams contains all the parameters to send to the API endpoint
for the get i a p item config operation typically these are written to a http.Request
*/
type GetIAPItemConfigParams struct {

	/*Namespace*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the get i a p item config params
func (o *GetIAPItemConfigParams) WithTimeout(timeout time.Duration) *GetIAPItemConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get i a p item config params
func (o *GetIAPItemConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get i a p item config params
func (o *GetIAPItemConfigParams) WithContext(ctx context.Context) *GetIAPItemConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get i a p item config params
func (o *GetIAPItemConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get i a p item config params
func (o *GetIAPItemConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get i a p item config params
func (o *GetIAPItemConfigParams) WithHTTPClient(client *http.Client) *GetIAPItemConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get i a p item config params
func (o *GetIAPItemConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// WithNamespace adds the namespace to the get i a p item config params
func (o *GetIAPItemConfigParams) WithNamespace(namespace string) *GetIAPItemConfigParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get i a p item config params
func (o *GetIAPItemConfigParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *GetIAPItemConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}
