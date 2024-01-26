// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_moderation_rule

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

// NewDeleteModerationRuleParams creates a new DeleteModerationRuleParams object
// with the default values initialized.
func NewDeleteModerationRuleParams() *DeleteModerationRuleParams {
	var ()
	return &DeleteModerationRuleParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteModerationRuleParamsWithTimeout creates a new DeleteModerationRuleParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteModerationRuleParamsWithTimeout(timeout time.Duration) *DeleteModerationRuleParams {
	var ()
	return &DeleteModerationRuleParams{

		timeout: timeout,
	}
}

// NewDeleteModerationRuleParamsWithContext creates a new DeleteModerationRuleParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteModerationRuleParamsWithContext(ctx context.Context) *DeleteModerationRuleParams {
	var ()
	return &DeleteModerationRuleParams{

		Context: ctx,
	}
}

// NewDeleteModerationRuleParamsWithHTTPClient creates a new DeleteModerationRuleParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteModerationRuleParamsWithHTTPClient(client *http.Client) *DeleteModerationRuleParams {
	var ()
	return &DeleteModerationRuleParams{
		HTTPClient: client,
	}
}

/*DeleteModerationRuleParams contains all the parameters to send to the API endpoint
for the delete moderation rule operation typically these are written to a http.Request
*/
type DeleteModerationRuleParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace*/
	Namespace string
	/*RuleID*/
	RuleID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the delete moderation rule params
func (o *DeleteModerationRuleParams) WithTimeout(timeout time.Duration) *DeleteModerationRuleParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete moderation rule params
func (o *DeleteModerationRuleParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete moderation rule params
func (o *DeleteModerationRuleParams) WithContext(ctx context.Context) *DeleteModerationRuleParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete moderation rule params
func (o *DeleteModerationRuleParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete moderation rule params
func (o *DeleteModerationRuleParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete moderation rule params
func (o *DeleteModerationRuleParams) WithHTTPClient(client *http.Client) *DeleteModerationRuleParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete moderation rule params
func (o *DeleteModerationRuleParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete moderation rule params
func (o *DeleteModerationRuleParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DeleteModerationRuleParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the delete moderation rule params
func (o *DeleteModerationRuleParams) WithNamespace(namespace string) *DeleteModerationRuleParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete moderation rule params
func (o *DeleteModerationRuleParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithRuleID adds the ruleID to the delete moderation rule params
func (o *DeleteModerationRuleParams) WithRuleID(ruleID string) *DeleteModerationRuleParams {
	o.SetRuleID(ruleID)
	return o
}

// SetRuleID adds the ruleId to the delete moderation rule params
func (o *DeleteModerationRuleParams) SetRuleID(ruleID string) {
	o.RuleID = ruleID
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteModerationRuleParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param ruleId
	if err := r.SetPathParam("ruleId", o.RuleID); err != nil {
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
