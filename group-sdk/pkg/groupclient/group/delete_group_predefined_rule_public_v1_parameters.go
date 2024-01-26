// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package group

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

// NewDeleteGroupPredefinedRulePublicV1Params creates a new DeleteGroupPredefinedRulePublicV1Params object
// with the default values initialized.
func NewDeleteGroupPredefinedRulePublicV1Params() *DeleteGroupPredefinedRulePublicV1Params {
	var ()
	return &DeleteGroupPredefinedRulePublicV1Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteGroupPredefinedRulePublicV1ParamsWithTimeout creates a new DeleteGroupPredefinedRulePublicV1Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteGroupPredefinedRulePublicV1ParamsWithTimeout(timeout time.Duration) *DeleteGroupPredefinedRulePublicV1Params {
	var ()
	return &DeleteGroupPredefinedRulePublicV1Params{

		timeout: timeout,
	}
}

// NewDeleteGroupPredefinedRulePublicV1ParamsWithContext creates a new DeleteGroupPredefinedRulePublicV1Params object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteGroupPredefinedRulePublicV1ParamsWithContext(ctx context.Context) *DeleteGroupPredefinedRulePublicV1Params {
	var ()
	return &DeleteGroupPredefinedRulePublicV1Params{

		Context: ctx,
	}
}

// NewDeleteGroupPredefinedRulePublicV1ParamsWithHTTPClient creates a new DeleteGroupPredefinedRulePublicV1Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteGroupPredefinedRulePublicV1ParamsWithHTTPClient(client *http.Client) *DeleteGroupPredefinedRulePublicV1Params {
	var ()
	return &DeleteGroupPredefinedRulePublicV1Params{
		HTTPClient: client,
	}
}

/*DeleteGroupPredefinedRulePublicV1Params contains all the parameters to send to the API endpoint
for the delete group predefined rule public v1 operation typically these are written to a http.Request
*/
type DeleteGroupPredefinedRulePublicV1Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*AllowedAction
	  Allowed action, any available action in service

	*/
	AllowedAction string
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

// WithTimeout adds the timeout to the delete group predefined rule public v1 params
func (o *DeleteGroupPredefinedRulePublicV1Params) WithTimeout(timeout time.Duration) *DeleteGroupPredefinedRulePublicV1Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete group predefined rule public v1 params
func (o *DeleteGroupPredefinedRulePublicV1Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete group predefined rule public v1 params
func (o *DeleteGroupPredefinedRulePublicV1Params) WithContext(ctx context.Context) *DeleteGroupPredefinedRulePublicV1Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete group predefined rule public v1 params
func (o *DeleteGroupPredefinedRulePublicV1Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete group predefined rule public v1 params
func (o *DeleteGroupPredefinedRulePublicV1Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete group predefined rule public v1 params
func (o *DeleteGroupPredefinedRulePublicV1Params) WithHTTPClient(client *http.Client) *DeleteGroupPredefinedRulePublicV1Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete group predefined rule public v1 params
func (o *DeleteGroupPredefinedRulePublicV1Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete group predefined rule public v1 params
func (o *DeleteGroupPredefinedRulePublicV1Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DeleteGroupPredefinedRulePublicV1Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithAllowedAction adds the allowedAction to the delete group predefined rule public v1 params
func (o *DeleteGroupPredefinedRulePublicV1Params) WithAllowedAction(allowedAction string) *DeleteGroupPredefinedRulePublicV1Params {
	o.SetAllowedAction(allowedAction)
	return o
}

// SetAllowedAction adds the allowedAction to the delete group predefined rule public v1 params
func (o *DeleteGroupPredefinedRulePublicV1Params) SetAllowedAction(allowedAction string) {
	o.AllowedAction = allowedAction
}

// WithGroupID adds the groupID to the delete group predefined rule public v1 params
func (o *DeleteGroupPredefinedRulePublicV1Params) WithGroupID(groupID string) *DeleteGroupPredefinedRulePublicV1Params {
	o.SetGroupID(groupID)
	return o
}

// SetGroupID adds the groupId to the delete group predefined rule public v1 params
func (o *DeleteGroupPredefinedRulePublicV1Params) SetGroupID(groupID string) {
	o.GroupID = groupID
}

// WithNamespace adds the namespace to the delete group predefined rule public v1 params
func (o *DeleteGroupPredefinedRulePublicV1Params) WithNamespace(namespace string) *DeleteGroupPredefinedRulePublicV1Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete group predefined rule public v1 params
func (o *DeleteGroupPredefinedRulePublicV1Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteGroupPredefinedRulePublicV1Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param allowedAction
	if err := r.SetPathParam("allowedAction", o.AllowedAction); err != nil {
		return err
	}

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
