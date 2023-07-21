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
	"github.com/go-openapi/swag"
)

// NewRuleSetListParams creates a new RuleSetListParams object
// with the default values initialized.
func NewRuleSetListParams() *RuleSetListParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &RuleSetListParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewRuleSetListParamsWithTimeout creates a new RuleSetListParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewRuleSetListParamsWithTimeout(timeout time.Duration) *RuleSetListParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &RuleSetListParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		timeout: timeout,
	}
}

// NewRuleSetListParamsWithContext creates a new RuleSetListParams object
// with the default values initialized, and the ability to set a context for a request
func NewRuleSetListParamsWithContext(ctx context.Context) *RuleSetListParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &RuleSetListParams{
		Limit:  &limitDefault,
		Offset: &offsetDefault,

		Context: ctx,
	}
}

// NewRuleSetListParamsWithHTTPClient creates a new RuleSetListParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewRuleSetListParamsWithHTTPClient(client *http.Client) *RuleSetListParams {
	var (
		limitDefault  = int64(20)
		offsetDefault = int64(0)
	)
	return &RuleSetListParams{
		Limit:      &limitDefault,
		Offset:     &offsetDefault,
		HTTPClient: client,
	}
}

/*RuleSetListParams contains all the parameters to send to the API endpoint
for the rule set list operation typically these are written to a http.Request
*/
type RuleSetListParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*Limit
	  Pagination limit

	*/
	Limit *int64
	/*Name
	  Rule Set name

	*/
	Name *string
	/*Offset
	  Pagination offset

	*/
	Offset *int64

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the rule set list params
func (o *RuleSetListParams) WithTimeout(timeout time.Duration) *RuleSetListParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the rule set list params
func (o *RuleSetListParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the rule set list params
func (o *RuleSetListParams) WithContext(ctx context.Context) *RuleSetListParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the rule set list params
func (o *RuleSetListParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the rule set list params
func (o *RuleSetListParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the rule set list params
func (o *RuleSetListParams) WithHTTPClient(client *http.Client) *RuleSetListParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the rule set list params
func (o *RuleSetListParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the rule set list params
func (o *RuleSetListParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the rule set list params
func (o *RuleSetListParams) WithNamespace(namespace string) *RuleSetListParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the rule set list params
func (o *RuleSetListParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithLimit adds the limit to the rule set list params
func (o *RuleSetListParams) WithLimit(limit *int64) *RuleSetListParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the rule set list params
func (o *RuleSetListParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithName adds the name to the rule set list params
func (o *RuleSetListParams) WithName(name *string) *RuleSetListParams {
	o.SetName(name)
	return o
}

// SetName adds the name to the rule set list params
func (o *RuleSetListParams) SetName(name *string) {
	o.Name = name
}

// WithOffset adds the offset to the rule set list params
func (o *RuleSetListParams) WithOffset(offset *int64) *RuleSetListParams {
	o.SetOffset(offset)
	return o
}

// SetOffset adds the offset to the rule set list params
func (o *RuleSetListParams) SetOffset(offset *int64) {
	o.Offset = offset
}

// WriteToRequest writes these params to a swagger request
func (o *RuleSetListParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.Limit != nil {

		// query param limit
		var qrLimit int64
		if o.Limit != nil {
			qrLimit = *o.Limit
		}
		qLimit := swag.FormatInt64(qrLimit)
		if qLimit != "" {
			if err := r.SetQueryParam("limit", qLimit); err != nil {
				return err
			}
		}

	}

	if o.Name != nil {

		// query param name
		var qrName string
		if o.Name != nil {
			qrName = *o.Name
		}
		qName := qrName
		if qName != "" {
			if err := r.SetQueryParam("name", qName); err != nil {
				return err
			}
		}

	}

	if o.Offset != nil {

		// query param offset
		var qrOffset int64
		if o.Offset != nil {
			qrOffset = *o.Offset
		}
		qOffset := swag.FormatInt64(qrOffset)
		if qOffset != "" {
			if err := r.SetQueryParam("offset", qOffset); err != nil {
				return err
			}
		}

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
