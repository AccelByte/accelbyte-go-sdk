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

// NewAcceptGroupJoinRequestPublicV2Params creates a new AcceptGroupJoinRequestPublicV2Params object
// with the default values initialized.
func NewAcceptGroupJoinRequestPublicV2Params() *AcceptGroupJoinRequestPublicV2Params {
	var ()
	return &AcceptGroupJoinRequestPublicV2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewAcceptGroupJoinRequestPublicV2ParamsWithTimeout creates a new AcceptGroupJoinRequestPublicV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewAcceptGroupJoinRequestPublicV2ParamsWithTimeout(timeout time.Duration) *AcceptGroupJoinRequestPublicV2Params {
	var ()
	return &AcceptGroupJoinRequestPublicV2Params{

		timeout: timeout,
	}
}

// NewAcceptGroupJoinRequestPublicV2ParamsWithContext creates a new AcceptGroupJoinRequestPublicV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewAcceptGroupJoinRequestPublicV2ParamsWithContext(ctx context.Context) *AcceptGroupJoinRequestPublicV2Params {
	var ()
	return &AcceptGroupJoinRequestPublicV2Params{

		Context: ctx,
	}
}

// NewAcceptGroupJoinRequestPublicV2ParamsWithHTTPClient creates a new AcceptGroupJoinRequestPublicV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAcceptGroupJoinRequestPublicV2ParamsWithHTTPClient(client *http.Client) *AcceptGroupJoinRequestPublicV2Params {
	var ()
	return &AcceptGroupJoinRequestPublicV2Params{
		HTTPClient: client,
	}
}

/*AcceptGroupJoinRequestPublicV2Params contains all the parameters to send to the API endpoint
for the accept group join request public v2 operation typically these are written to a http.Request
*/
type AcceptGroupJoinRequestPublicV2Params struct {

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

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the accept group join request public v2 params
func (o *AcceptGroupJoinRequestPublicV2Params) WithTimeout(timeout time.Duration) *AcceptGroupJoinRequestPublicV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the accept group join request public v2 params
func (o *AcceptGroupJoinRequestPublicV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the accept group join request public v2 params
func (o *AcceptGroupJoinRequestPublicV2Params) WithContext(ctx context.Context) *AcceptGroupJoinRequestPublicV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the accept group join request public v2 params
func (o *AcceptGroupJoinRequestPublicV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the accept group join request public v2 params
func (o *AcceptGroupJoinRequestPublicV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the accept group join request public v2 params
func (o *AcceptGroupJoinRequestPublicV2Params) WithHTTPClient(client *http.Client) *AcceptGroupJoinRequestPublicV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the accept group join request public v2 params
func (o *AcceptGroupJoinRequestPublicV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the accept group join request public v2 params
func (o *AcceptGroupJoinRequestPublicV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AcceptGroupJoinRequestPublicV2Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithGroupID adds the groupID to the accept group join request public v2 params
func (o *AcceptGroupJoinRequestPublicV2Params) WithGroupID(groupID string) *AcceptGroupJoinRequestPublicV2Params {
	o.SetGroupID(groupID)
	return o
}

// SetGroupID adds the groupId to the accept group join request public v2 params
func (o *AcceptGroupJoinRequestPublicV2Params) SetGroupID(groupID string) {
	o.GroupID = groupID
}

// WithNamespace adds the namespace to the accept group join request public v2 params
func (o *AcceptGroupJoinRequestPublicV2Params) WithNamespace(namespace string) *AcceptGroupJoinRequestPublicV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the accept group join request public v2 params
func (o *AcceptGroupJoinRequestPublicV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the accept group join request public v2 params
func (o *AcceptGroupJoinRequestPublicV2Params) WithUserID(userID string) *AcceptGroupJoinRequestPublicV2Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the accept group join request public v2 params
func (o *AcceptGroupJoinRequestPublicV2Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AcceptGroupJoinRequestPublicV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.XFlightId == nil {
		if err := r.SetHeaderParam("X-Flight-Id", utils.GetDefaultFlightID().Value); err != nil {
			return err
		}
	} else {
		if err := r.SetHeaderParam("X-Flight-Id", *o.XFlightId); err != nil {
			return err
		}
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
