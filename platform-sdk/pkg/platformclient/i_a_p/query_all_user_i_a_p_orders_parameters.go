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

// NewQueryAllUserIAPOrdersParams creates a new QueryAllUserIAPOrdersParams object
// with the default values initialized.
func NewQueryAllUserIAPOrdersParams() *QueryAllUserIAPOrdersParams {
	var ()
	return &QueryAllUserIAPOrdersParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewQueryAllUserIAPOrdersParamsWithTimeout creates a new QueryAllUserIAPOrdersParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewQueryAllUserIAPOrdersParamsWithTimeout(timeout time.Duration) *QueryAllUserIAPOrdersParams {
	var ()
	return &QueryAllUserIAPOrdersParams{

		timeout: timeout,
	}
}

// NewQueryAllUserIAPOrdersParamsWithContext creates a new QueryAllUserIAPOrdersParams object
// with the default values initialized, and the ability to set a context for a request
func NewQueryAllUserIAPOrdersParamsWithContext(ctx context.Context) *QueryAllUserIAPOrdersParams {
	var ()
	return &QueryAllUserIAPOrdersParams{

		Context: ctx,
	}
}

// NewQueryAllUserIAPOrdersParamsWithHTTPClient creates a new QueryAllUserIAPOrdersParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewQueryAllUserIAPOrdersParamsWithHTTPClient(client *http.Client) *QueryAllUserIAPOrdersParams {
	var ()
	return &QueryAllUserIAPOrdersParams{
		HTTPClient: client,
	}
}

/*QueryAllUserIAPOrdersParams contains all the parameters to send to the API endpoint
for the query all user i a p orders operation typically these are written to a http.Request
*/
type QueryAllUserIAPOrdersParams struct {

	/*Namespace*/
	Namespace string
	/*UserID*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the query all user i a p orders params
func (o *QueryAllUserIAPOrdersParams) WithTimeout(timeout time.Duration) *QueryAllUserIAPOrdersParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the query all user i a p orders params
func (o *QueryAllUserIAPOrdersParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the query all user i a p orders params
func (o *QueryAllUserIAPOrdersParams) WithContext(ctx context.Context) *QueryAllUserIAPOrdersParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the query all user i a p orders params
func (o *QueryAllUserIAPOrdersParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the query all user i a p orders params
func (o *QueryAllUserIAPOrdersParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the query all user i a p orders params
func (o *QueryAllUserIAPOrdersParams) WithHTTPClient(client *http.Client) *QueryAllUserIAPOrdersParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the query all user i a p orders params
func (o *QueryAllUserIAPOrdersParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// WithNamespace adds the namespace to the query all user i a p orders params
func (o *QueryAllUserIAPOrdersParams) WithNamespace(namespace string) *QueryAllUserIAPOrdersParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the query all user i a p orders params
func (o *QueryAllUserIAPOrdersParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the query all user i a p orders params
func (o *QueryAllUserIAPOrdersParams) WithUserID(userID string) *QueryAllUserIAPOrdersParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the query all user i a p orders params
func (o *QueryAllUserIAPOrdersParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *QueryAllUserIAPOrdersParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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
