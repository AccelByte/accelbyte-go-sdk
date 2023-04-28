// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_group

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

// NewSingleAdminGetGroupParams creates a new SingleAdminGetGroupParams object
// with the default values initialized.
func NewSingleAdminGetGroupParams() *SingleAdminGetGroupParams {
	var ()
	return &SingleAdminGetGroupParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewSingleAdminGetGroupParamsWithTimeout creates a new SingleAdminGetGroupParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewSingleAdminGetGroupParamsWithTimeout(timeout time.Duration) *SingleAdminGetGroupParams {
	var ()
	return &SingleAdminGetGroupParams{

		timeout: timeout,
	}
}

// NewSingleAdminGetGroupParamsWithContext creates a new SingleAdminGetGroupParams object
// with the default values initialized, and the ability to set a context for a request
func NewSingleAdminGetGroupParamsWithContext(ctx context.Context) *SingleAdminGetGroupParams {
	var ()
	return &SingleAdminGetGroupParams{

		Context: ctx,
	}
}

// NewSingleAdminGetGroupParamsWithHTTPClient creates a new SingleAdminGetGroupParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewSingleAdminGetGroupParamsWithHTTPClient(client *http.Client) *SingleAdminGetGroupParams {
	var ()
	return &SingleAdminGetGroupParams{
		HTTPClient: client,
	}
}

/*SingleAdminGetGroupParams contains all the parameters to send to the API endpoint
for the single admin get group operation typically these are written to a http.Request
*/
type SingleAdminGetGroupParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*GroupID
	  group ID

	*/
	GroupID string
	/*Namespace
	  namespace of the game

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the single admin get group params
func (o *SingleAdminGetGroupParams) WithTimeout(timeout time.Duration) *SingleAdminGetGroupParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the single admin get group params
func (o *SingleAdminGetGroupParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the single admin get group params
func (o *SingleAdminGetGroupParams) WithContext(ctx context.Context) *SingleAdminGetGroupParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the single admin get group params
func (o *SingleAdminGetGroupParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the single admin get group params
func (o *SingleAdminGetGroupParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the single admin get group params
func (o *SingleAdminGetGroupParams) WithHTTPClient(client *http.Client) *SingleAdminGetGroupParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the single admin get group params
func (o *SingleAdminGetGroupParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the single admin get group params
func (o *SingleAdminGetGroupParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithGroupID adds the groupID to the single admin get group params
func (o *SingleAdminGetGroupParams) WithGroupID(groupID string) *SingleAdminGetGroupParams {
	o.SetGroupID(groupID)
	return o
}

// SetGroupID adds the groupId to the single admin get group params
func (o *SingleAdminGetGroupParams) SetGroupID(groupID string) {
	o.GroupID = groupID
}

// WithNamespace adds the namespace to the single admin get group params
func (o *SingleAdminGetGroupParams) WithNamespace(namespace string) *SingleAdminGetGroupParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the single admin get group params
func (o *SingleAdminGetGroupParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *SingleAdminGetGroupParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param groupId
	if err := r.SetPathParam("groupId", o.GroupID); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
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
