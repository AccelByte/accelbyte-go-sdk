// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package data_retrieval

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

// NewAdminGeneratePersonalDataURLParams creates a new AdminGeneratePersonalDataURLParams object
// with the default values initialized.
func NewAdminGeneratePersonalDataURLParams() *AdminGeneratePersonalDataURLParams {
	var ()
	return &AdminGeneratePersonalDataURLParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGeneratePersonalDataURLParamsWithTimeout creates a new AdminGeneratePersonalDataURLParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGeneratePersonalDataURLParamsWithTimeout(timeout time.Duration) *AdminGeneratePersonalDataURLParams {
	var ()
	return &AdminGeneratePersonalDataURLParams{

		timeout: timeout,
	}
}

// NewAdminGeneratePersonalDataURLParamsWithContext creates a new AdminGeneratePersonalDataURLParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGeneratePersonalDataURLParamsWithContext(ctx context.Context) *AdminGeneratePersonalDataURLParams {
	var ()
	return &AdminGeneratePersonalDataURLParams{

		Context: ctx,
	}
}

// NewAdminGeneratePersonalDataURLParamsWithHTTPClient creates a new AdminGeneratePersonalDataURLParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGeneratePersonalDataURLParamsWithHTTPClient(client *http.Client) *AdminGeneratePersonalDataURLParams {
	var ()
	return &AdminGeneratePersonalDataURLParams{
		HTTPClient: client,
	}
}

/*AdminGeneratePersonalDataURLParams contains all the parameters to send to the API endpoint
for the admin generate personal data URL operation typically these are written to a http.Request
*/
type AdminGeneratePersonalDataURLParams struct {

	/*Namespace
	  namespace of the user

	*/
	Namespace string
	/*Password
	  IAM password of the user

	*/
	Password string
	/*RequestDate
	  Request date in RFC3339 format

	*/
	RequestDate string
	/*UserID
	  IAM id of the user

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin generate personal data URL params
func (o *AdminGeneratePersonalDataURLParams) WithTimeout(timeout time.Duration) *AdminGeneratePersonalDataURLParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin generate personal data URL params
func (o *AdminGeneratePersonalDataURLParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin generate personal data URL params
func (o *AdminGeneratePersonalDataURLParams) WithContext(ctx context.Context) *AdminGeneratePersonalDataURLParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin generate personal data URL params
func (o *AdminGeneratePersonalDataURLParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin generate personal data URL params
func (o *AdminGeneratePersonalDataURLParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin generate personal data URL params
func (o *AdminGeneratePersonalDataURLParams) WithHTTPClient(client *http.Client) *AdminGeneratePersonalDataURLParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin generate personal data URL params
func (o *AdminGeneratePersonalDataURLParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// WithNamespace adds the namespace to the admin generate personal data URL params
func (o *AdminGeneratePersonalDataURLParams) WithNamespace(namespace string) *AdminGeneratePersonalDataURLParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin generate personal data URL params
func (o *AdminGeneratePersonalDataURLParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPassword adds the password to the admin generate personal data URL params
func (o *AdminGeneratePersonalDataURLParams) WithPassword(password string) *AdminGeneratePersonalDataURLParams {
	o.SetPassword(password)
	return o
}

// SetPassword adds the password to the admin generate personal data URL params
func (o *AdminGeneratePersonalDataURLParams) SetPassword(password string) {
	o.Password = password
}

// WithRequestDate adds the requestDate to the admin generate personal data URL params
func (o *AdminGeneratePersonalDataURLParams) WithRequestDate(requestDate string) *AdminGeneratePersonalDataURLParams {
	o.SetRequestDate(requestDate)
	return o
}

// SetRequestDate adds the requestDate to the admin generate personal data URL params
func (o *AdminGeneratePersonalDataURLParams) SetRequestDate(requestDate string) {
	o.RequestDate = requestDate
}

// WithUserID adds the userID to the admin generate personal data URL params
func (o *AdminGeneratePersonalDataURLParams) WithUserID(userID string) *AdminGeneratePersonalDataURLParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin generate personal data URL params
func (o *AdminGeneratePersonalDataURLParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGeneratePersonalDataURLParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// form param password
	frPassword := o.Password
	fPassword := frPassword
	if fPassword != "" {
		if err := r.SetFormParam("password", fPassword); err != nil {
			return err
		}
	}

	// path param requestDate
	if err := r.SetPathParam("requestDate", o.RequestDate); err != nil {
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
