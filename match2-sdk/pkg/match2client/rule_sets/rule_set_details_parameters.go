// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package rule_sets

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

// NewRuleSetDetailsParams creates a new RuleSetDetailsParams object
// with the default values initialized.
func NewRuleSetDetailsParams() *RuleSetDetailsParams {
	var ()
	return &RuleSetDetailsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewRuleSetDetailsParamsWithTimeout creates a new RuleSetDetailsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewRuleSetDetailsParamsWithTimeout(timeout time.Duration) *RuleSetDetailsParams {
	var ()
	return &RuleSetDetailsParams{

		timeout: timeout,
	}
}

// NewRuleSetDetailsParamsWithContext creates a new RuleSetDetailsParams object
// with the default values initialized, and the ability to set a context for a request
func NewRuleSetDetailsParamsWithContext(ctx context.Context) *RuleSetDetailsParams {
	var ()
	return &RuleSetDetailsParams{

		Context: ctx,
	}
}

// NewRuleSetDetailsParamsWithHTTPClient creates a new RuleSetDetailsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewRuleSetDetailsParamsWithHTTPClient(client *http.Client) *RuleSetDetailsParams {
	var ()
	return &RuleSetDetailsParams{
		HTTPClient: client,
	}
}

/*RuleSetDetailsParams contains all the parameters to send to the API endpoint
for the rule set details operation typically these are written to a http.Request
*/
type RuleSetDetailsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*Ruleset
	  Name of the rule set

	*/
	Ruleset string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the rule set details params
func (o *RuleSetDetailsParams) WithTimeout(timeout time.Duration) *RuleSetDetailsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the rule set details params
func (o *RuleSetDetailsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the rule set details params
func (o *RuleSetDetailsParams) WithContext(ctx context.Context) *RuleSetDetailsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the rule set details params
func (o *RuleSetDetailsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the rule set details params
func (o *RuleSetDetailsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the rule set details params
func (o *RuleSetDetailsParams) WithHTTPClient(client *http.Client) *RuleSetDetailsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the rule set details params
func (o *RuleSetDetailsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the rule set details params
func (o *RuleSetDetailsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *RuleSetDetailsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the rule set details params
func (o *RuleSetDetailsParams) WithNamespace(namespace string) *RuleSetDetailsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the rule set details params
func (o *RuleSetDetailsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithRuleset adds the ruleset to the rule set details params
func (o *RuleSetDetailsParams) WithRuleset(ruleset string) *RuleSetDetailsParams {
	o.SetRuleset(ruleset)
	return o
}

// SetRuleset adds the ruleset to the rule set details params
func (o *RuleSetDetailsParams) SetRuleset(ruleset string) {
	o.Ruleset = ruleset
}

// WriteToRequest writes these params to a swagger request
func (o *RuleSetDetailsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param ruleset
	if err := r.SetPathParam("ruleset", o.Ruleset); err != nil {
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
