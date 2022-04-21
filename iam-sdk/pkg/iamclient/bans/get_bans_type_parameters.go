// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package bans

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

// NewGetBansTypeParams creates a new GetBansTypeParams object
// with the default values initialized.
func NewGetBansTypeParams() *GetBansTypeParams {

	return &GetBansTypeParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetBansTypeParamsWithTimeout creates a new GetBansTypeParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetBansTypeParamsWithTimeout(timeout time.Duration) *GetBansTypeParams {

	return &GetBansTypeParams{

		timeout: timeout,
	}
}

// NewGetBansTypeParamsWithContext creates a new GetBansTypeParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetBansTypeParamsWithContext(ctx context.Context) *GetBansTypeParams {

	return &GetBansTypeParams{

		Context: ctx,
	}
}

// NewGetBansTypeParamsWithHTTPClient creates a new GetBansTypeParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetBansTypeParamsWithHTTPClient(client *http.Client) *GetBansTypeParams {

	return &GetBansTypeParams{
		HTTPClient: client,
	}
}

/*GetBansTypeParams contains all the parameters to send to the API endpoint
for the get bans type operation typically these are written to a http.Request
*/
type GetBansTypeParams struct {
	timeout    time.Duration
	Context    context.Context
	HTTPClient *http.Client
}

// WithTimeout adds the timeout to the get bans type params
func (o *GetBansTypeParams) WithTimeout(timeout time.Duration) *GetBansTypeParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get bans type params
func (o *GetBansTypeParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get bans type params
func (o *GetBansTypeParams) WithContext(ctx context.Context) *GetBansTypeParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get bans type params
func (o *GetBansTypeParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// WithHTTPClient adds the HTTPClient to the get bans type params
func (o *GetBansTypeParams) WithHTTPClient(client *http.Client) *GetBansTypeParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get bans type params
func (o *GetBansTypeParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// WriteToRequest writes these params to a swagger request
func (o *GetBansTypeParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}
	return nil
}
