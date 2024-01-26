// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package event_descriptions

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

// NewSpecificAgentTypeDescriptionHandlerParams creates a new SpecificAgentTypeDescriptionHandlerParams object
// with the default values initialized.
func NewSpecificAgentTypeDescriptionHandlerParams() *SpecificAgentTypeDescriptionHandlerParams {
	var ()
	return &SpecificAgentTypeDescriptionHandlerParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewSpecificAgentTypeDescriptionHandlerParamsWithTimeout creates a new SpecificAgentTypeDescriptionHandlerParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewSpecificAgentTypeDescriptionHandlerParamsWithTimeout(timeout time.Duration) *SpecificAgentTypeDescriptionHandlerParams {
	var ()
	return &SpecificAgentTypeDescriptionHandlerParams{

		timeout: timeout,
	}
}

// NewSpecificAgentTypeDescriptionHandlerParamsWithContext creates a new SpecificAgentTypeDescriptionHandlerParams object
// with the default values initialized, and the ability to set a context for a request
func NewSpecificAgentTypeDescriptionHandlerParamsWithContext(ctx context.Context) *SpecificAgentTypeDescriptionHandlerParams {
	var ()
	return &SpecificAgentTypeDescriptionHandlerParams{

		Context: ctx,
	}
}

// NewSpecificAgentTypeDescriptionHandlerParamsWithHTTPClient creates a new SpecificAgentTypeDescriptionHandlerParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewSpecificAgentTypeDescriptionHandlerParamsWithHTTPClient(client *http.Client) *SpecificAgentTypeDescriptionHandlerParams {
	var ()
	return &SpecificAgentTypeDescriptionHandlerParams{
		HTTPClient: client,
	}
}

/*SpecificAgentTypeDescriptionHandlerParams contains all the parameters to send to the API endpoint
for the specific agent type description handler operation typically these are written to a http.Request
*/
type SpecificAgentTypeDescriptionHandlerParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*AgentTypes
	  Comma separated value of agent types

	*/
	AgentTypes *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the specific agent type description handler params
func (o *SpecificAgentTypeDescriptionHandlerParams) WithTimeout(timeout time.Duration) *SpecificAgentTypeDescriptionHandlerParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the specific agent type description handler params
func (o *SpecificAgentTypeDescriptionHandlerParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the specific agent type description handler params
func (o *SpecificAgentTypeDescriptionHandlerParams) WithContext(ctx context.Context) *SpecificAgentTypeDescriptionHandlerParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the specific agent type description handler params
func (o *SpecificAgentTypeDescriptionHandlerParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the specific agent type description handler params
func (o *SpecificAgentTypeDescriptionHandlerParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the specific agent type description handler params
func (o *SpecificAgentTypeDescriptionHandlerParams) WithHTTPClient(client *http.Client) *SpecificAgentTypeDescriptionHandlerParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the specific agent type description handler params
func (o *SpecificAgentTypeDescriptionHandlerParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the specific agent type description handler params
func (o *SpecificAgentTypeDescriptionHandlerParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *SpecificAgentTypeDescriptionHandlerParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithAgentTypes adds the agentTypes to the specific agent type description handler params
func (o *SpecificAgentTypeDescriptionHandlerParams) WithAgentTypes(agentTypes *string) *SpecificAgentTypeDescriptionHandlerParams {
	o.SetAgentTypes(agentTypes)
	return o
}

// SetAgentTypes adds the agentTypes to the specific agent type description handler params
func (o *SpecificAgentTypeDescriptionHandlerParams) SetAgentTypes(agentTypes *string) {
	o.AgentTypes = agentTypes
}

// WriteToRequest writes these params to a swagger request
func (o *SpecificAgentTypeDescriptionHandlerParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.AgentTypes != nil {

		// query param agentTypes
		var qrAgentTypes string
		if o.AgentTypes != nil {
			qrAgentTypes = *o.AgentTypes
		}
		qAgentTypes := qrAgentTypes
		if qAgentTypes != "" {
			if err := r.SetQueryParam("agentTypes", qAgentTypes); err != nil {
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
