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

// NewDeleteRuleSetParams creates a new DeleteRuleSetParams object
// with the default values initialized.
func NewDeleteRuleSetParams() *DeleteRuleSetParams {
	var ()
	return &DeleteRuleSetParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteRuleSetParamsWithTimeout creates a new DeleteRuleSetParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteRuleSetParamsWithTimeout(timeout time.Duration) *DeleteRuleSetParams {
	var ()
	return &DeleteRuleSetParams{

		timeout: timeout,
	}
}

// NewDeleteRuleSetParamsWithContext creates a new DeleteRuleSetParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteRuleSetParamsWithContext(ctx context.Context) *DeleteRuleSetParams {
	var ()
	return &DeleteRuleSetParams{

		Context: ctx,
	}
}

// NewDeleteRuleSetParamsWithHTTPClient creates a new DeleteRuleSetParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteRuleSetParamsWithHTTPClient(client *http.Client) *DeleteRuleSetParams {
	var ()
	return &DeleteRuleSetParams{
		HTTPClient: client,
	}
}

/*DeleteRuleSetParams contains all the parameters to send to the API endpoint
for the delete rule set operation typically these are written to a http.Request
*/
type DeleteRuleSetParams struct {

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

// WithTimeout adds the timeout to the delete rule set params
func (o *DeleteRuleSetParams) WithTimeout(timeout time.Duration) *DeleteRuleSetParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete rule set params
func (o *DeleteRuleSetParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete rule set params
func (o *DeleteRuleSetParams) WithContext(ctx context.Context) *DeleteRuleSetParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete rule set params
func (o *DeleteRuleSetParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete rule set params
func (o *DeleteRuleSetParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete rule set params
func (o *DeleteRuleSetParams) WithHTTPClient(client *http.Client) *DeleteRuleSetParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete rule set params
func (o *DeleteRuleSetParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete rule set params
func (o *DeleteRuleSetParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DeleteRuleSetParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the delete rule set params
func (o *DeleteRuleSetParams) WithNamespace(namespace string) *DeleteRuleSetParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete rule set params
func (o *DeleteRuleSetParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithRuleset adds the ruleset to the delete rule set params
func (o *DeleteRuleSetParams) WithRuleset(ruleset string) *DeleteRuleSetParams {
	o.SetRuleset(ruleset)
	return o
}

// SetRuleset adds the ruleset to the delete rule set params
func (o *DeleteRuleSetParams) SetRuleset(ruleset string) {
	o.Ruleset = ruleset
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteRuleSetParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
