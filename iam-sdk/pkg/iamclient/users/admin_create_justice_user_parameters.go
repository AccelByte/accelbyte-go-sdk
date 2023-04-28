// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package users

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

// NewAdminCreateJusticeUserParams creates a new AdminCreateJusticeUserParams object
// with the default values initialized.
func NewAdminCreateJusticeUserParams() *AdminCreateJusticeUserParams {
	var ()
	return &AdminCreateJusticeUserParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminCreateJusticeUserParamsWithTimeout creates a new AdminCreateJusticeUserParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminCreateJusticeUserParamsWithTimeout(timeout time.Duration) *AdminCreateJusticeUserParams {
	var ()
	return &AdminCreateJusticeUserParams{

		timeout: timeout,
	}
}

// NewAdminCreateJusticeUserParamsWithContext creates a new AdminCreateJusticeUserParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminCreateJusticeUserParamsWithContext(ctx context.Context) *AdminCreateJusticeUserParams {
	var ()
	return &AdminCreateJusticeUserParams{

		Context: ctx,
	}
}

// NewAdminCreateJusticeUserParamsWithHTTPClient creates a new AdminCreateJusticeUserParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminCreateJusticeUserParamsWithHTTPClient(client *http.Client) *AdminCreateJusticeUserParams {
	var ()
	return &AdminCreateJusticeUserParams{
		HTTPClient: client,
	}
}

/*AdminCreateJusticeUserParams contains all the parameters to send to the API endpoint
for the admin create justice user operation typically these are written to a http.Request
*/
type AdminCreateJusticeUserParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*TargetNamespace
	  Target namespace

	*/
	TargetNamespace string
	/*UserID
	  User ID

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin create justice user params
func (o *AdminCreateJusticeUserParams) WithTimeout(timeout time.Duration) *AdminCreateJusticeUserParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin create justice user params
func (o *AdminCreateJusticeUserParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin create justice user params
func (o *AdminCreateJusticeUserParams) WithContext(ctx context.Context) *AdminCreateJusticeUserParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin create justice user params
func (o *AdminCreateJusticeUserParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin create justice user params
func (o *AdminCreateJusticeUserParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin create justice user params
func (o *AdminCreateJusticeUserParams) WithHTTPClient(client *http.Client) *AdminCreateJusticeUserParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin create justice user params
func (o *AdminCreateJusticeUserParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin create justice user params
func (o *AdminCreateJusticeUserParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the admin create justice user params
func (o *AdminCreateJusticeUserParams) WithNamespace(namespace string) *AdminCreateJusticeUserParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin create justice user params
func (o *AdminCreateJusticeUserParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithTargetNamespace adds the targetNamespace to the admin create justice user params
func (o *AdminCreateJusticeUserParams) WithTargetNamespace(targetNamespace string) *AdminCreateJusticeUserParams {
	o.SetTargetNamespace(targetNamespace)
	return o
}

// SetTargetNamespace adds the targetNamespace to the admin create justice user params
func (o *AdminCreateJusticeUserParams) SetTargetNamespace(targetNamespace string) {
	o.TargetNamespace = targetNamespace
}

// WithUserID adds the userID to the admin create justice user params
func (o *AdminCreateJusticeUserParams) WithUserID(userID string) *AdminCreateJusticeUserParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin create justice user params
func (o *AdminCreateJusticeUserParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminCreateJusticeUserParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param targetNamespace
	if err := r.SetPathParam("targetNamespace", o.TargetNamespace); err != nil {
		return err
	}

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
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
