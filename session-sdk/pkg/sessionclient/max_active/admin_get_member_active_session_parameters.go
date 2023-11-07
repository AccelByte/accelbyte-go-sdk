// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package max_active

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

// NewAdminGetMemberActiveSessionParams creates a new AdminGetMemberActiveSessionParams object
// with the default values initialized.
func NewAdminGetMemberActiveSessionParams() *AdminGetMemberActiveSessionParams {
	var ()
	return &AdminGetMemberActiveSessionParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetMemberActiveSessionParamsWithTimeout creates a new AdminGetMemberActiveSessionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetMemberActiveSessionParamsWithTimeout(timeout time.Duration) *AdminGetMemberActiveSessionParams {
	var ()
	return &AdminGetMemberActiveSessionParams{

		timeout: timeout,
	}
}

// NewAdminGetMemberActiveSessionParamsWithContext creates a new AdminGetMemberActiveSessionParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetMemberActiveSessionParamsWithContext(ctx context.Context) *AdminGetMemberActiveSessionParams {
	var ()
	return &AdminGetMemberActiveSessionParams{

		Context: ctx,
	}
}

// NewAdminGetMemberActiveSessionParamsWithHTTPClient creates a new AdminGetMemberActiveSessionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetMemberActiveSessionParamsWithHTTPClient(client *http.Client) *AdminGetMemberActiveSessionParams {
	var ()
	return &AdminGetMemberActiveSessionParams{
		HTTPClient: client,
	}
}

/*AdminGetMemberActiveSessionParams contains all the parameters to send to the API endpoint
for the admin get member active session operation typically these are written to a http.Request
*/
type AdminGetMemberActiveSessionParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Name
	  configuration name

	*/
	Name string
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*UserID
	  User ID

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin get member active session params
func (o *AdminGetMemberActiveSessionParams) WithTimeout(timeout time.Duration) *AdminGetMemberActiveSessionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get member active session params
func (o *AdminGetMemberActiveSessionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get member active session params
func (o *AdminGetMemberActiveSessionParams) WithContext(ctx context.Context) *AdminGetMemberActiveSessionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get member active session params
func (o *AdminGetMemberActiveSessionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get member active session params
func (o *AdminGetMemberActiveSessionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get member active session params
func (o *AdminGetMemberActiveSessionParams) WithHTTPClient(client *http.Client) *AdminGetMemberActiveSessionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get member active session params
func (o *AdminGetMemberActiveSessionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get member active session params
func (o *AdminGetMemberActiveSessionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithName adds the name to the admin get member active session params
func (o *AdminGetMemberActiveSessionParams) WithName(name string) *AdminGetMemberActiveSessionParams {
	o.SetName(name)
	return o
}

// SetName adds the name to the admin get member active session params
func (o *AdminGetMemberActiveSessionParams) SetName(name string) {
	o.Name = name
}

// WithNamespace adds the namespace to the admin get member active session params
func (o *AdminGetMemberActiveSessionParams) WithNamespace(namespace string) *AdminGetMemberActiveSessionParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get member active session params
func (o *AdminGetMemberActiveSessionParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin get member active session params
func (o *AdminGetMemberActiveSessionParams) WithUserID(userID string) *AdminGetMemberActiveSessionParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin get member active session params
func (o *AdminGetMemberActiveSessionParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetMemberActiveSessionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param name
	if err := r.SetPathParam("name", o.Name); err != nil {
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
