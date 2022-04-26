// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package admin_player_record

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

// NewAdminGetPlayerPublicRecordHandlerV1Params creates a new AdminGetPlayerPublicRecordHandlerV1Params object
// with the default values initialized.
func NewAdminGetPlayerPublicRecordHandlerV1Params() *AdminGetPlayerPublicRecordHandlerV1Params {
	var ()
	return &AdminGetPlayerPublicRecordHandlerV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetPlayerPublicRecordHandlerV1ParamsWithTimeout creates a new AdminGetPlayerPublicRecordHandlerV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetPlayerPublicRecordHandlerV1ParamsWithTimeout(timeout time.Duration) *AdminGetPlayerPublicRecordHandlerV1Params {
	var ()
	return &AdminGetPlayerPublicRecordHandlerV1Params{

		timeout: timeout,
	}
}

// NewAdminGetPlayerPublicRecordHandlerV1ParamsWithContext creates a new AdminGetPlayerPublicRecordHandlerV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetPlayerPublicRecordHandlerV1ParamsWithContext(ctx context.Context) *AdminGetPlayerPublicRecordHandlerV1Params {
	var ()
	return &AdminGetPlayerPublicRecordHandlerV1Params{

		Context: ctx,
	}
}

// NewAdminGetPlayerPublicRecordHandlerV1ParamsWithHTTPClient creates a new AdminGetPlayerPublicRecordHandlerV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetPlayerPublicRecordHandlerV1ParamsWithHTTPClient(client *http.Client) *AdminGetPlayerPublicRecordHandlerV1Params {
	var ()
	return &AdminGetPlayerPublicRecordHandlerV1Params{
		HTTPClient: client,
	}
}

/*AdminGetPlayerPublicRecordHandlerV1Params contains all the parameters to send to the API endpoint
for the admin get player public record handler v1 operation typically these are written to a http.Request
*/
type AdminGetPlayerPublicRecordHandlerV1Params struct {

	/*Key
	  key of record

	*/
	Key string
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*UserID
	  user ID who own the record

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin get player public record handler v1 params
func (o *AdminGetPlayerPublicRecordHandlerV1Params) WithTimeout(timeout time.Duration) *AdminGetPlayerPublicRecordHandlerV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get player public record handler v1 params
func (o *AdminGetPlayerPublicRecordHandlerV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get player public record handler v1 params
func (o *AdminGetPlayerPublicRecordHandlerV1Params) WithContext(ctx context.Context) *AdminGetPlayerPublicRecordHandlerV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get player public record handler v1 params
func (o *AdminGetPlayerPublicRecordHandlerV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get player public record handler v1 params
func (o *AdminGetPlayerPublicRecordHandlerV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get player public record handler v1 params
func (o *AdminGetPlayerPublicRecordHandlerV1Params) WithHTTPClient(client *http.Client) *AdminGetPlayerPublicRecordHandlerV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get player public record handler v1 params
func (o *AdminGetPlayerPublicRecordHandlerV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// WithKey adds the key to the admin get player public record handler v1 params
func (o *AdminGetPlayerPublicRecordHandlerV1Params) WithKey(key string) *AdminGetPlayerPublicRecordHandlerV1Params {
	o.SetKey(key)
	return o
}

// SetKey adds the key to the admin get player public record handler v1 params
func (o *AdminGetPlayerPublicRecordHandlerV1Params) SetKey(key string) {
	o.Key = key
}

// WithNamespace adds the namespace to the admin get player public record handler v1 params
func (o *AdminGetPlayerPublicRecordHandlerV1Params) WithNamespace(namespace string) *AdminGetPlayerPublicRecordHandlerV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get player public record handler v1 params
func (o *AdminGetPlayerPublicRecordHandlerV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin get player public record handler v1 params
func (o *AdminGetPlayerPublicRecordHandlerV1Params) WithUserID(userID string) *AdminGetPlayerPublicRecordHandlerV1Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin get player public record handler v1 params
func (o *AdminGetPlayerPublicRecordHandlerV1Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetPlayerPublicRecordHandlerV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param key
	if err := r.SetPathParam("key", o.Key); err != nil {
		return err
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
