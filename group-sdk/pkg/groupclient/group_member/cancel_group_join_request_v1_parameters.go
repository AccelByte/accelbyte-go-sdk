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

// NewCancelGroupJoinRequestV1Params creates a new CancelGroupJoinRequestV1Params object
// with the default values initialized.
func NewCancelGroupJoinRequestV1Params() *CancelGroupJoinRequestV1Params {
	var ()
	return &CancelGroupJoinRequestV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewCancelGroupJoinRequestV1ParamsWithTimeout creates a new CancelGroupJoinRequestV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewCancelGroupJoinRequestV1ParamsWithTimeout(timeout time.Duration) *CancelGroupJoinRequestV1Params {
	var ()
	return &CancelGroupJoinRequestV1Params{

		timeout: timeout,
	}
}

// NewCancelGroupJoinRequestV1ParamsWithContext creates a new CancelGroupJoinRequestV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewCancelGroupJoinRequestV1ParamsWithContext(ctx context.Context) *CancelGroupJoinRequestV1Params {
	var ()
	return &CancelGroupJoinRequestV1Params{

		Context: ctx,
	}
}

// NewCancelGroupJoinRequestV1ParamsWithHTTPClient creates a new CancelGroupJoinRequestV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewCancelGroupJoinRequestV1ParamsWithHTTPClient(client *http.Client) *CancelGroupJoinRequestV1Params {
	var ()
	return &CancelGroupJoinRequestV1Params{
		HTTPClient: client,
	}
}

/*CancelGroupJoinRequestV1Params contains all the parameters to send to the API endpoint
for the cancel group join request v1 operation typically these are written to a http.Request
*/
type CancelGroupJoinRequestV1Params struct {

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

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the cancel group join request v1 params
func (o *CancelGroupJoinRequestV1Params) WithTimeout(timeout time.Duration) *CancelGroupJoinRequestV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the cancel group join request v1 params
func (o *CancelGroupJoinRequestV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the cancel group join request v1 params
func (o *CancelGroupJoinRequestV1Params) WithContext(ctx context.Context) *CancelGroupJoinRequestV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the cancel group join request v1 params
func (o *CancelGroupJoinRequestV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the cancel group join request v1 params
func (o *CancelGroupJoinRequestV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the cancel group join request v1 params
func (o *CancelGroupJoinRequestV1Params) WithHTTPClient(client *http.Client) *CancelGroupJoinRequestV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the cancel group join request v1 params
func (o *CancelGroupJoinRequestV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the cancel group join request v1 params
func (o *CancelGroupJoinRequestV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *CancelGroupJoinRequestV1Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithGroupID adds the groupID to the cancel group join request v1 params
func (o *CancelGroupJoinRequestV1Params) WithGroupID(groupID string) *CancelGroupJoinRequestV1Params {
	o.SetGroupID(groupID)
	return o
}

// SetGroupID adds the groupId to the cancel group join request v1 params
func (o *CancelGroupJoinRequestV1Params) SetGroupID(groupID string) {
	o.GroupID = groupID
}

// WithNamespace adds the namespace to the cancel group join request v1 params
func (o *CancelGroupJoinRequestV1Params) WithNamespace(namespace string) *CancelGroupJoinRequestV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the cancel group join request v1 params
func (o *CancelGroupJoinRequestV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *CancelGroupJoinRequestV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
