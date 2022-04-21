// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated by go-swagger; DO NOT EDIT.

package users

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
	"github.com/go-openapi/swag"
)

// NewAdminGetUserPlatformAccountsV3Params creates a new AdminGetUserPlatformAccountsV3Params object
// with the default values initialized.
func NewAdminGetUserPlatformAccountsV3Params() *AdminGetUserPlatformAccountsV3Params {
	var ()
	return &AdminGetUserPlatformAccountsV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetUserPlatformAccountsV3ParamsWithTimeout creates a new AdminGetUserPlatformAccountsV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetUserPlatformAccountsV3ParamsWithTimeout(timeout time.Duration) *AdminGetUserPlatformAccountsV3Params {
	var ()
	return &AdminGetUserPlatformAccountsV3Params{

		timeout: timeout,
	}
}

// NewAdminGetUserPlatformAccountsV3ParamsWithContext creates a new AdminGetUserPlatformAccountsV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetUserPlatformAccountsV3ParamsWithContext(ctx context.Context) *AdminGetUserPlatformAccountsV3Params {
	var ()
	return &AdminGetUserPlatformAccountsV3Params{

		Context: ctx,
	}
}

// NewAdminGetUserPlatformAccountsV3ParamsWithHTTPClient creates a new AdminGetUserPlatformAccountsV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetUserPlatformAccountsV3ParamsWithHTTPClient(client *http.Client) *AdminGetUserPlatformAccountsV3Params {
	var ()
	return &AdminGetUserPlatformAccountsV3Params{
		HTTPClient: client,
	}
}

/*AdminGetUserPlatformAccountsV3Params contains all the parameters to send to the API endpoint
for the admin get user platform accounts v3 operation typically these are written to a http.Request
*/
type AdminGetUserPlatformAccountsV3Params struct {

	/*After
	  The cursor that points to query data for the next page

	*/
	After *string
	/*Before
	  The cursor that points to query data for the previous page

	*/
	Before *string
	/*Limit
	  the maximum number of data that may be returned (1...100)

	*/
	Limit *int64
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*UserID
	  User ID, should follow UUID version 4 without hyphen

	*/
	UserID string

	timeout    time.Duration
	Context    context.Context
	HTTPClient *http.Client
}

// WithTimeout adds the timeout to the admin get user platform accounts v3 params
func (o *AdminGetUserPlatformAccountsV3Params) WithTimeout(timeout time.Duration) *AdminGetUserPlatformAccountsV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get user platform accounts v3 params
func (o *AdminGetUserPlatformAccountsV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get user platform accounts v3 params
func (o *AdminGetUserPlatformAccountsV3Params) WithContext(ctx context.Context) *AdminGetUserPlatformAccountsV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get user platform accounts v3 params
func (o *AdminGetUserPlatformAccountsV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// WithHTTPClient adds the HTTPClient to the admin get user platform accounts v3 params
func (o *AdminGetUserPlatformAccountsV3Params) WithHTTPClient(client *http.Client) *AdminGetUserPlatformAccountsV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get user platform accounts v3 params
func (o *AdminGetUserPlatformAccountsV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// WithAfter adds the after to the admin get user platform accounts v3 params
func (o *AdminGetUserPlatformAccountsV3Params) WithAfter(after *string) *AdminGetUserPlatformAccountsV3Params {
	o.SetAfter(after)
	return o
}

// SetAfter adds the after to the admin get user platform accounts v3 params
func (o *AdminGetUserPlatformAccountsV3Params) SetAfter(after *string) {
	o.After = after
}

// WithBefore adds the before to the admin get user platform accounts v3 params
func (o *AdminGetUserPlatformAccountsV3Params) WithBefore(before *string) *AdminGetUserPlatformAccountsV3Params {
	o.SetBefore(before)
	return o
}

// SetBefore adds the before to the admin get user platform accounts v3 params
func (o *AdminGetUserPlatformAccountsV3Params) SetBefore(before *string) {
	o.Before = before
}

// WithLimit adds the limit to the admin get user platform accounts v3 params
func (o *AdminGetUserPlatformAccountsV3Params) WithLimit(limit *int64) *AdminGetUserPlatformAccountsV3Params {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the admin get user platform accounts v3 params
func (o *AdminGetUserPlatformAccountsV3Params) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithNamespace adds the namespace to the admin get user platform accounts v3 params
func (o *AdminGetUserPlatformAccountsV3Params) WithNamespace(namespace string) *AdminGetUserPlatformAccountsV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get user platform accounts v3 params
func (o *AdminGetUserPlatformAccountsV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin get user platform accounts v3 params
func (o *AdminGetUserPlatformAccountsV3Params) WithUserID(userID string) *AdminGetUserPlatformAccountsV3Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin get user platform accounts v3 params
func (o *AdminGetUserPlatformAccountsV3Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetUserPlatformAccountsV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.After != nil {

		// query param after
		var qrAfter string
		if o.After != nil {
			qrAfter = *o.After
		}
		qAfter := qrAfter
		if qAfter != "" {
			if err := r.SetQueryParam("after", qAfter); err != nil {
				return err
			}
		}

	}

	if o.Before != nil {

		// query param before
		var qrBefore string
		if o.Before != nil {
			qrBefore = *o.Before
		}
		qBefore := qrBefore
		if qBefore != "" {
			if err := r.SetQueryParam("before", qBefore); err != nil {
				return err
			}
		}

	}

	if o.Limit != nil {

		// query param limit
		var qrLimit int64
		if o.Limit != nil {
			qrLimit = *o.Limit
		}
		qLimit := swag.FormatInt64(qrLimit)
		if qLimit != "" {
			if err := r.SetQueryParam("limit", qLimit); err != nil {
				return err
			}
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
