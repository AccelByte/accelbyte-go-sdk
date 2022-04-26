// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package store

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

// NewGetPublishedStoreParams creates a new GetPublishedStoreParams object
// with the default values initialized.
func NewGetPublishedStoreParams() *GetPublishedStoreParams {
	var ()
	return &GetPublishedStoreParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetPublishedStoreParamsWithTimeout creates a new GetPublishedStoreParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetPublishedStoreParamsWithTimeout(timeout time.Duration) *GetPublishedStoreParams {
	var ()
	return &GetPublishedStoreParams{

		timeout: timeout,
	}
}

// NewGetPublishedStoreParamsWithContext creates a new GetPublishedStoreParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetPublishedStoreParamsWithContext(ctx context.Context) *GetPublishedStoreParams {
	var ()
	return &GetPublishedStoreParams{

		Context: ctx,
	}
}

// NewGetPublishedStoreParamsWithHTTPClient creates a new GetPublishedStoreParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetPublishedStoreParamsWithHTTPClient(client *http.Client) *GetPublishedStoreParams {
	var ()
	return &GetPublishedStoreParams{
		HTTPClient: client,
	}
}

/*GetPublishedStoreParams contains all the parameters to send to the API endpoint
for the get published store operation typically these are written to a http.Request
*/
type GetPublishedStoreParams struct {

	/*Namespace
	  Namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the get published store params
func (o *GetPublishedStoreParams) WithTimeout(timeout time.Duration) *GetPublishedStoreParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get published store params
func (o *GetPublishedStoreParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get published store params
func (o *GetPublishedStoreParams) WithContext(ctx context.Context) *GetPublishedStoreParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get published store params
func (o *GetPublishedStoreParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get published store params
func (o *GetPublishedStoreParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get published store params
func (o *GetPublishedStoreParams) WithHTTPClient(client *http.Client) *GetPublishedStoreParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get published store params
func (o *GetPublishedStoreParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// WithNamespace adds the namespace to the get published store params
func (o *GetPublishedStoreParams) WithNamespace(namespace string) *GetPublishedStoreParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get published store params
func (o *GetPublishedStoreParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *GetPublishedStoreParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
