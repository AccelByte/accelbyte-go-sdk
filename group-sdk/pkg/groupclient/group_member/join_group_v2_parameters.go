// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package group_member

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

// NewJoinGroupV2Params creates a new JoinGroupV2Params object
// with the default values initialized.
func NewJoinGroupV2Params() *JoinGroupV2Params {
	var ()
	return &JoinGroupV2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewJoinGroupV2ParamsWithTimeout creates a new JoinGroupV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewJoinGroupV2ParamsWithTimeout(timeout time.Duration) *JoinGroupV2Params {
	var ()
	return &JoinGroupV2Params{

		timeout: timeout,
	}
}

// NewJoinGroupV2ParamsWithContext creates a new JoinGroupV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewJoinGroupV2ParamsWithContext(ctx context.Context) *JoinGroupV2Params {
	var ()
	return &JoinGroupV2Params{

		Context: ctx,
	}
}

// NewJoinGroupV2ParamsWithHTTPClient creates a new JoinGroupV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewJoinGroupV2ParamsWithHTTPClient(client *http.Client) *JoinGroupV2Params {
	var ()
	return &JoinGroupV2Params{
		HTTPClient: client,
	}
}

/*JoinGroupV2Params contains all the parameters to send to the API endpoint
for the join group v2 operation typically these are written to a http.Request
*/
type JoinGroupV2Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*GroupID
	  Group ID

	*/
	GroupID string
	/*Namespace
	  namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the join group v2 params
func (o *JoinGroupV2Params) WithTimeout(timeout time.Duration) *JoinGroupV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the join group v2 params
func (o *JoinGroupV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the join group v2 params
func (o *JoinGroupV2Params) WithContext(ctx context.Context) *JoinGroupV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the join group v2 params
func (o *JoinGroupV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the join group v2 params
func (o *JoinGroupV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the join group v2 params
func (o *JoinGroupV2Params) WithHTTPClient(client *http.Client) *JoinGroupV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the join group v2 params
func (o *JoinGroupV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the join group v2 params
func (o *JoinGroupV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithGroupID adds the groupID to the join group v2 params
func (o *JoinGroupV2Params) WithGroupID(groupID string) *JoinGroupV2Params {
	o.SetGroupID(groupID)
	return o
}

// SetGroupID adds the groupId to the join group v2 params
func (o *JoinGroupV2Params) SetGroupID(groupID string) {
	o.GroupID = groupID
}

// WithNamespace adds the namespace to the join group v2 params
func (o *JoinGroupV2Params) WithNamespace(namespace string) *JoinGroupV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the join group v2 params
func (o *JoinGroupV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *JoinGroupV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
