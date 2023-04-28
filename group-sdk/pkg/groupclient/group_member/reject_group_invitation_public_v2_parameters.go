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

// NewRejectGroupInvitationPublicV2Params creates a new RejectGroupInvitationPublicV2Params object
// with the default values initialized.
func NewRejectGroupInvitationPublicV2Params() *RejectGroupInvitationPublicV2Params {
	var ()
	return &RejectGroupInvitationPublicV2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewRejectGroupInvitationPublicV2ParamsWithTimeout creates a new RejectGroupInvitationPublicV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewRejectGroupInvitationPublicV2ParamsWithTimeout(timeout time.Duration) *RejectGroupInvitationPublicV2Params {
	var ()
	return &RejectGroupInvitationPublicV2Params{

		timeout: timeout,
	}
}

// NewRejectGroupInvitationPublicV2ParamsWithContext creates a new RejectGroupInvitationPublicV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewRejectGroupInvitationPublicV2ParamsWithContext(ctx context.Context) *RejectGroupInvitationPublicV2Params {
	var ()
	return &RejectGroupInvitationPublicV2Params{

		Context: ctx,
	}
}

// NewRejectGroupInvitationPublicV2ParamsWithHTTPClient creates a new RejectGroupInvitationPublicV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewRejectGroupInvitationPublicV2ParamsWithHTTPClient(client *http.Client) *RejectGroupInvitationPublicV2Params {
	var ()
	return &RejectGroupInvitationPublicV2Params{
		HTTPClient: client,
	}
}

/*RejectGroupInvitationPublicV2Params contains all the parameters to send to the API endpoint
for the reject group invitation public v2 operation typically these are written to a http.Request
*/
type RejectGroupInvitationPublicV2Params struct {

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

// WithTimeout adds the timeout to the reject group invitation public v2 params
func (o *RejectGroupInvitationPublicV2Params) WithTimeout(timeout time.Duration) *RejectGroupInvitationPublicV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the reject group invitation public v2 params
func (o *RejectGroupInvitationPublicV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the reject group invitation public v2 params
func (o *RejectGroupInvitationPublicV2Params) WithContext(ctx context.Context) *RejectGroupInvitationPublicV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the reject group invitation public v2 params
func (o *RejectGroupInvitationPublicV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the reject group invitation public v2 params
func (o *RejectGroupInvitationPublicV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the reject group invitation public v2 params
func (o *RejectGroupInvitationPublicV2Params) WithHTTPClient(client *http.Client) *RejectGroupInvitationPublicV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the reject group invitation public v2 params
func (o *RejectGroupInvitationPublicV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the reject group invitation public v2 params
func (o *RejectGroupInvitationPublicV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithGroupID adds the groupID to the reject group invitation public v2 params
func (o *RejectGroupInvitationPublicV2Params) WithGroupID(groupID string) *RejectGroupInvitationPublicV2Params {
	o.SetGroupID(groupID)
	return o
}

// SetGroupID adds the groupId to the reject group invitation public v2 params
func (o *RejectGroupInvitationPublicV2Params) SetGroupID(groupID string) {
	o.GroupID = groupID
}

// WithNamespace adds the namespace to the reject group invitation public v2 params
func (o *RejectGroupInvitationPublicV2Params) WithNamespace(namespace string) *RejectGroupInvitationPublicV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the reject group invitation public v2 params
func (o *RejectGroupInvitationPublicV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *RejectGroupInvitationPublicV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
