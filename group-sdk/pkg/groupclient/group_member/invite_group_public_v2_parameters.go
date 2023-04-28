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

// NewInviteGroupPublicV2Params creates a new InviteGroupPublicV2Params object
// with the default values initialized.
func NewInviteGroupPublicV2Params() *InviteGroupPublicV2Params {
	var ()
	return &InviteGroupPublicV2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewInviteGroupPublicV2ParamsWithTimeout creates a new InviteGroupPublicV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewInviteGroupPublicV2ParamsWithTimeout(timeout time.Duration) *InviteGroupPublicV2Params {
	var ()
	return &InviteGroupPublicV2Params{

		timeout: timeout,
	}
}

// NewInviteGroupPublicV2ParamsWithContext creates a new InviteGroupPublicV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewInviteGroupPublicV2ParamsWithContext(ctx context.Context) *InviteGroupPublicV2Params {
	var ()
	return &InviteGroupPublicV2Params{

		Context: ctx,
	}
}

// NewInviteGroupPublicV2ParamsWithHTTPClient creates a new InviteGroupPublicV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewInviteGroupPublicV2ParamsWithHTTPClient(client *http.Client) *InviteGroupPublicV2Params {
	var ()
	return &InviteGroupPublicV2Params{
		HTTPClient: client,
	}
}

/*InviteGroupPublicV2Params contains all the parameters to send to the API endpoint
for the invite group public v2 operation typically these are written to a http.Request
*/
type InviteGroupPublicV2Params struct {

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
	/*UserID
	  User ID

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the invite group public v2 params
func (o *InviteGroupPublicV2Params) WithTimeout(timeout time.Duration) *InviteGroupPublicV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the invite group public v2 params
func (o *InviteGroupPublicV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the invite group public v2 params
func (o *InviteGroupPublicV2Params) WithContext(ctx context.Context) *InviteGroupPublicV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the invite group public v2 params
func (o *InviteGroupPublicV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the invite group public v2 params
func (o *InviteGroupPublicV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the invite group public v2 params
func (o *InviteGroupPublicV2Params) WithHTTPClient(client *http.Client) *InviteGroupPublicV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the invite group public v2 params
func (o *InviteGroupPublicV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the invite group public v2 params
func (o *InviteGroupPublicV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithGroupID adds the groupID to the invite group public v2 params
func (o *InviteGroupPublicV2Params) WithGroupID(groupID string) *InviteGroupPublicV2Params {
	o.SetGroupID(groupID)
	return o
}

// SetGroupID adds the groupId to the invite group public v2 params
func (o *InviteGroupPublicV2Params) SetGroupID(groupID string) {
	o.GroupID = groupID
}

// WithNamespace adds the namespace to the invite group public v2 params
func (o *InviteGroupPublicV2Params) WithNamespace(namespace string) *InviteGroupPublicV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the invite group public v2 params
func (o *InviteGroupPublicV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the invite group public v2 params
func (o *InviteGroupPublicV2Params) WithUserID(userID string) *InviteGroupPublicV2Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the invite group public v2 params
func (o *InviteGroupPublicV2Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *InviteGroupPublicV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
