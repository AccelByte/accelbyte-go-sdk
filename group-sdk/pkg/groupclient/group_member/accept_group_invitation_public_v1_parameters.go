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

// NewAcceptGroupInvitationPublicV1Params creates a new AcceptGroupInvitationPublicV1Params object
// with the default values initialized.
func NewAcceptGroupInvitationPublicV1Params() *AcceptGroupInvitationPublicV1Params {
	var ()
	return &AcceptGroupInvitationPublicV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAcceptGroupInvitationPublicV1ParamsWithTimeout creates a new AcceptGroupInvitationPublicV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAcceptGroupInvitationPublicV1ParamsWithTimeout(timeout time.Duration) *AcceptGroupInvitationPublicV1Params {
	var ()
	return &AcceptGroupInvitationPublicV1Params{

		timeout: timeout,
	}
}

// NewAcceptGroupInvitationPublicV1ParamsWithContext creates a new AcceptGroupInvitationPublicV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewAcceptGroupInvitationPublicV1ParamsWithContext(ctx context.Context) *AcceptGroupInvitationPublicV1Params {
	var ()
	return &AcceptGroupInvitationPublicV1Params{

		Context: ctx,
	}
}

// NewAcceptGroupInvitationPublicV1ParamsWithHTTPClient creates a new AcceptGroupInvitationPublicV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAcceptGroupInvitationPublicV1ParamsWithHTTPClient(client *http.Client) *AcceptGroupInvitationPublicV1Params {
	var ()
	return &AcceptGroupInvitationPublicV1Params{
		HTTPClient: client,
	}
}

/*AcceptGroupInvitationPublicV1Params contains all the parameters to send to the API endpoint
for the accept group invitation public v1 operation typically these are written to a http.Request
*/
type AcceptGroupInvitationPublicV1Params struct {

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

// WithTimeout adds the timeout to the accept group invitation public v1 params
func (o *AcceptGroupInvitationPublicV1Params) WithTimeout(timeout time.Duration) *AcceptGroupInvitationPublicV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the accept group invitation public v1 params
func (o *AcceptGroupInvitationPublicV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the accept group invitation public v1 params
func (o *AcceptGroupInvitationPublicV1Params) WithContext(ctx context.Context) *AcceptGroupInvitationPublicV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the accept group invitation public v1 params
func (o *AcceptGroupInvitationPublicV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the accept group invitation public v1 params
func (o *AcceptGroupInvitationPublicV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the accept group invitation public v1 params
func (o *AcceptGroupInvitationPublicV1Params) WithHTTPClient(client *http.Client) *AcceptGroupInvitationPublicV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the accept group invitation public v1 params
func (o *AcceptGroupInvitationPublicV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the accept group invitation public v1 params
func (o *AcceptGroupInvitationPublicV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithGroupID adds the groupID to the accept group invitation public v1 params
func (o *AcceptGroupInvitationPublicV1Params) WithGroupID(groupID string) *AcceptGroupInvitationPublicV1Params {
	o.SetGroupID(groupID)
	return o
}

// SetGroupID adds the groupId to the accept group invitation public v1 params
func (o *AcceptGroupInvitationPublicV1Params) SetGroupID(groupID string) {
	o.GroupID = groupID
}

// WithNamespace adds the namespace to the accept group invitation public v1 params
func (o *AcceptGroupInvitationPublicV1Params) WithNamespace(namespace string) *AcceptGroupInvitationPublicV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the accept group invitation public v1 params
func (o *AcceptGroupInvitationPublicV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AcceptGroupInvitationPublicV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
