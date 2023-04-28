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

	"github.com/AccelByte/accelbyte-go-sdk/reporting-sdk/pkg/reportingclientmodels"
)

// NewUpdateModerationRuleParams creates a new UpdateModerationRuleParams object
// with the default values initialized.
func NewUpdateModerationRuleParams() *UpdateModerationRuleParams {
	var ()
	return &UpdateModerationRuleParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewUpdateModerationRuleParamsWithTimeout creates a new UpdateModerationRuleParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewUpdateModerationRuleParamsWithTimeout(timeout time.Duration) *UpdateModerationRuleParams {
	var ()
	return &UpdateModerationRuleParams{

		timeout: timeout,
	}
}

// NewUpdateModerationRuleParamsWithContext creates a new UpdateModerationRuleParams object
// with the default values initialized, and the ability to set a context for a request
func NewUpdateModerationRuleParamsWithContext(ctx context.Context) *UpdateModerationRuleParams {
	var ()
	return &UpdateModerationRuleParams{

		Context: ctx,
	}
}

// NewUpdateModerationRuleParamsWithHTTPClient creates a new UpdateModerationRuleParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewUpdateModerationRuleParamsWithHTTPClient(client *http.Client) *UpdateModerationRuleParams {
	var ()
	return &UpdateModerationRuleParams{
		HTTPClient: client,
	}
}

/*UpdateModerationRuleParams contains all the parameters to send to the API endpoint
for the update moderation rule operation typically these are written to a http.Request
*/
type UpdateModerationRuleParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *reportingclientmodels.RestapiModerationRuleRequest
	/*Namespace*/
	Namespace string
	/*RuleID*/
	RuleID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the update moderation rule params
func (o *UpdateModerationRuleParams) WithTimeout(timeout time.Duration) *UpdateModerationRuleParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the update moderation rule params
func (o *UpdateModerationRuleParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the update moderation rule params
func (o *UpdateModerationRuleParams) WithContext(ctx context.Context) *UpdateModerationRuleParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the update moderation rule params
func (o *UpdateModerationRuleParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the update moderation rule params
func (o *UpdateModerationRuleParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the update moderation rule params
func (o *UpdateModerationRuleParams) WithHTTPClient(client *http.Client) *UpdateModerationRuleParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the update moderation rule params
func (o *UpdateModerationRuleParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the update moderation rule params
func (o *UpdateModerationRuleParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the update moderation rule params
func (o *UpdateModerationRuleParams) WithBody(body *reportingclientmodels.RestapiModerationRuleRequest) *UpdateModerationRuleParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the update moderation rule params
func (o *UpdateModerationRuleParams) SetBody(body *reportingclientmodels.RestapiModerationRuleRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the update moderation rule params
func (o *UpdateModerationRuleParams) WithNamespace(namespace string) *UpdateModerationRuleParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the update moderation rule params
func (o *UpdateModerationRuleParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithRuleID adds the ruleID to the update moderation rule params
func (o *UpdateModerationRuleParams) WithRuleID(ruleID string) *UpdateModerationRuleParams {
	o.SetRuleID(ruleID)
	return o
}

// SetRuleID adds the ruleId to the update moderation rule params
func (o *UpdateModerationRuleParams) SetRuleID(ruleID string) {
	o.RuleID = ruleID
}

// WriteToRequest writes these params to a swagger request
func (o *UpdateModerationRuleParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
