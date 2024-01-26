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

// NewKickGroupMemberPublicV2Params creates a new KickGroupMemberPublicV2Params object
// with the default values initialized.
func NewKickGroupMemberPublicV2Params() *KickGroupMemberPublicV2Params {
	var ()
	return &KickGroupMemberPublicV2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewKickGroupMemberPublicV2ParamsWithTimeout creates a new KickGroupMemberPublicV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewKickGroupMemberPublicV2ParamsWithTimeout(timeout time.Duration) *KickGroupMemberPublicV2Params {
	var ()
	return &KickGroupMemberPublicV2Params{

		timeout: timeout,
	}
}

// NewKickGroupMemberPublicV2ParamsWithContext creates a new KickGroupMemberPublicV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewKickGroupMemberPublicV2ParamsWithContext(ctx context.Context) *KickGroupMemberPublicV2Params {
	var ()
	return &KickGroupMemberPublicV2Params{

		Context: ctx,
	}
}

// NewKickGroupMemberPublicV2ParamsWithHTTPClient creates a new KickGroupMemberPublicV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewKickGroupMemberPublicV2ParamsWithHTTPClient(client *http.Client) *KickGroupMemberPublicV2Params {
	var ()
	return &KickGroupMemberPublicV2Params{
		HTTPClient: client,
	}
}

/*KickGroupMemberPublicV2Params contains all the parameters to send to the API endpoint
for the kick group member public v2 operation typically these are written to a http.Request
*/
type KickGroupMemberPublicV2Params struct {

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

// WithTimeout adds the timeout to the kick group member public v2 params
func (o *KickGroupMemberPublicV2Params) WithTimeout(timeout time.Duration) *KickGroupMemberPublicV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the kick group member public v2 params
func (o *KickGroupMemberPublicV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the kick group member public v2 params
func (o *KickGroupMemberPublicV2Params) WithContext(ctx context.Context) *KickGroupMemberPublicV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the kick group member public v2 params
func (o *KickGroupMemberPublicV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the kick group member public v2 params
func (o *KickGroupMemberPublicV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the kick group member public v2 params
func (o *KickGroupMemberPublicV2Params) WithHTTPClient(client *http.Client) *KickGroupMemberPublicV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the kick group member public v2 params
func (o *KickGroupMemberPublicV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the kick group member public v2 params
func (o *KickGroupMemberPublicV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *KickGroupMemberPublicV2Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithGroupID adds the groupID to the kick group member public v2 params
func (o *KickGroupMemberPublicV2Params) WithGroupID(groupID string) *KickGroupMemberPublicV2Params {
	o.SetGroupID(groupID)
	return o
}

// SetGroupID adds the groupId to the kick group member public v2 params
func (o *KickGroupMemberPublicV2Params) SetGroupID(groupID string) {
	o.GroupID = groupID
}

// WithNamespace adds the namespace to the kick group member public v2 params
func (o *KickGroupMemberPublicV2Params) WithNamespace(namespace string) *KickGroupMemberPublicV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the kick group member public v2 params
func (o *KickGroupMemberPublicV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the kick group member public v2 params
func (o *KickGroupMemberPublicV2Params) WithUserID(userID string) *KickGroupMemberPublicV2Params {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the kick group member public v2 params
func (o *KickGroupMemberPublicV2Params) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *KickGroupMemberPublicV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
