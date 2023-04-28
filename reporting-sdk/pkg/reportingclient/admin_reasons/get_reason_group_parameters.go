// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_reasons

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

// NewGetReasonGroupParams creates a new GetReasonGroupParams object
// with the default values initialized.
func NewGetReasonGroupParams() *GetReasonGroupParams {
	var ()
	return &GetReasonGroupParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetReasonGroupParamsWithTimeout creates a new GetReasonGroupParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetReasonGroupParamsWithTimeout(timeout time.Duration) *GetReasonGroupParams {
	var ()
	return &GetReasonGroupParams{

		timeout: timeout,
	}
}

// NewGetReasonGroupParamsWithContext creates a new GetReasonGroupParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetReasonGroupParamsWithContext(ctx context.Context) *GetReasonGroupParams {
	var ()
	return &GetReasonGroupParams{

		Context: ctx,
	}
}

// NewGetReasonGroupParamsWithHTTPClient creates a new GetReasonGroupParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetReasonGroupParamsWithHTTPClient(client *http.Client) *GetReasonGroupParams {
	var ()
	return &GetReasonGroupParams{
		HTTPClient: client,
	}
}

/*GetReasonGroupParams contains all the parameters to send to the API endpoint
for the get reason group operation typically these are written to a http.Request
*/
type GetReasonGroupParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*GroupID
	  Reason group ID

	*/
	GroupID string
	/*Namespace*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the get reason group params
func (o *GetReasonGroupParams) WithTimeout(timeout time.Duration) *GetReasonGroupParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get reason group params
func (o *GetReasonGroupParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get reason group params
func (o *GetReasonGroupParams) WithContext(ctx context.Context) *GetReasonGroupParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get reason group params
func (o *GetReasonGroupParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get reason group params
func (o *GetReasonGroupParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get reason group params
func (o *GetReasonGroupParams) WithHTTPClient(client *http.Client) *GetReasonGroupParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get reason group params
func (o *GetReasonGroupParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get reason group params
func (o *GetReasonGroupParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithGroupID adds the groupID to the get reason group params
func (o *GetReasonGroupParams) WithGroupID(groupID string) *GetReasonGroupParams {
	o.SetGroupID(groupID)
	return o
}

// SetGroupID adds the groupId to the get reason group params
func (o *GetReasonGroupParams) SetGroupID(groupID string) {
	o.GroupID = groupID
}

// WithNamespace adds the namespace to the get reason group params
func (o *GetReasonGroupParams) WithNamespace(namespace string) *GetReasonGroupParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get reason group params
func (o *GetReasonGroupParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *GetReasonGroupParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
