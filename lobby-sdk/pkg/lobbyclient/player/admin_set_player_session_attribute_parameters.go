// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package player

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

	"github.com/AccelByte/accelbyte-go-sdk/lobby-sdk/pkg/lobbyclientmodels"
)

// NewAdminSetPlayerSessionAttributeParams creates a new AdminSetPlayerSessionAttributeParams object
// with the default values initialized.
func NewAdminSetPlayerSessionAttributeParams() *AdminSetPlayerSessionAttributeParams {
	var ()
	return &AdminSetPlayerSessionAttributeParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminSetPlayerSessionAttributeParamsWithTimeout creates a new AdminSetPlayerSessionAttributeParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminSetPlayerSessionAttributeParamsWithTimeout(timeout time.Duration) *AdminSetPlayerSessionAttributeParams {
	var ()
	return &AdminSetPlayerSessionAttributeParams{

		timeout: timeout,
	}
}

// NewAdminSetPlayerSessionAttributeParamsWithContext creates a new AdminSetPlayerSessionAttributeParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminSetPlayerSessionAttributeParamsWithContext(ctx context.Context) *AdminSetPlayerSessionAttributeParams {
	var ()
	return &AdminSetPlayerSessionAttributeParams{

		Context: ctx,
	}
}

// NewAdminSetPlayerSessionAttributeParamsWithHTTPClient creates a new AdminSetPlayerSessionAttributeParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminSetPlayerSessionAttributeParamsWithHTTPClient(client *http.Client) *AdminSetPlayerSessionAttributeParams {
	var ()
	return &AdminSetPlayerSessionAttributeParams{
		HTTPClient: client,
	}
}

/*AdminSetPlayerSessionAttributeParams contains all the parameters to send to the API endpoint
for the admin set player session attribute operation typically these are written to a http.Request
*/
type AdminSetPlayerSessionAttributeParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body
	  player attributes

	*/
	Body *lobbyclientmodels.ModelsSetPlayerSessionAttributeRequest
	/*Namespace
	  namespace

	*/
	Namespace string
	/*UserID
	  user ID

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin set player session attribute params
func (o *AdminSetPlayerSessionAttributeParams) WithTimeout(timeout time.Duration) *AdminSetPlayerSessionAttributeParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin set player session attribute params
func (o *AdminSetPlayerSessionAttributeParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin set player session attribute params
func (o *AdminSetPlayerSessionAttributeParams) WithContext(ctx context.Context) *AdminSetPlayerSessionAttributeParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin set player session attribute params
func (o *AdminSetPlayerSessionAttributeParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin set player session attribute params
func (o *AdminSetPlayerSessionAttributeParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin set player session attribute params
func (o *AdminSetPlayerSessionAttributeParams) WithHTTPClient(client *http.Client) *AdminSetPlayerSessionAttributeParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin set player session attribute params
func (o *AdminSetPlayerSessionAttributeParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin set player session attribute params
func (o *AdminSetPlayerSessionAttributeParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the admin set player session attribute params
func (o *AdminSetPlayerSessionAttributeParams) WithBody(body *lobbyclientmodels.ModelsSetPlayerSessionAttributeRequest) *AdminSetPlayerSessionAttributeParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin set player session attribute params
func (o *AdminSetPlayerSessionAttributeParams) SetBody(body *lobbyclientmodels.ModelsSetPlayerSessionAttributeRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin set player session attribute params
func (o *AdminSetPlayerSessionAttributeParams) WithNamespace(namespace string) *AdminSetPlayerSessionAttributeParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin set player session attribute params
func (o *AdminSetPlayerSessionAttributeParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin set player session attribute params
func (o *AdminSetPlayerSessionAttributeParams) WithUserID(userID string) *AdminSetPlayerSessionAttributeParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin set player session attribute params
func (o *AdminSetPlayerSessionAttributeParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminSetPlayerSessionAttributeParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
