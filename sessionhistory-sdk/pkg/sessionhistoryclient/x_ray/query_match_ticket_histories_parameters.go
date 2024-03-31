// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package x_ray

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

// NewQueryMatchTicketHistoriesParams creates a new QueryMatchTicketHistoriesParams object
// with the default values initialized.
func NewQueryMatchTicketHistoriesParams() *QueryMatchTicketHistoriesParams {
	var ()
	return &QueryMatchTicketHistoriesParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewQueryMatchTicketHistoriesParamsWithTimeout creates a new QueryMatchTicketHistoriesParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewQueryMatchTicketHistoriesParamsWithTimeout(timeout time.Duration) *QueryMatchTicketHistoriesParams {
	var ()
	return &QueryMatchTicketHistoriesParams{

		timeout: timeout,
	}
}

// NewQueryMatchTicketHistoriesParamsWithContext creates a new QueryMatchTicketHistoriesParams object
// with the default values initialized, and the ability to set a context for a request
func NewQueryMatchTicketHistoriesParamsWithContext(ctx context.Context) *QueryMatchTicketHistoriesParams {
	var ()
	return &QueryMatchTicketHistoriesParams{

		Context: ctx,
	}
}

// NewQueryMatchTicketHistoriesParamsWithHTTPClient creates a new QueryMatchTicketHistoriesParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewQueryMatchTicketHistoriesParamsWithHTTPClient(client *http.Client) *QueryMatchTicketHistoriesParams {
	var ()
	return &QueryMatchTicketHistoriesParams{
		HTTPClient: client,
	}
}

/*QueryMatchTicketHistoriesParams contains all the parameters to send to the API endpoint
for the query match ticket histories operation typically these are written to a http.Request
*/
type QueryMatchTicketHistoriesParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*MatchID
	  match id

	*/
	MatchID string
	/*Namespace
	  namespace of the game

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the query match ticket histories params
func (o *QueryMatchTicketHistoriesParams) WithTimeout(timeout time.Duration) *QueryMatchTicketHistoriesParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the query match ticket histories params
func (o *QueryMatchTicketHistoriesParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the query match ticket histories params
func (o *QueryMatchTicketHistoriesParams) WithContext(ctx context.Context) *QueryMatchTicketHistoriesParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the query match ticket histories params
func (o *QueryMatchTicketHistoriesParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the query match ticket histories params
func (o *QueryMatchTicketHistoriesParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the query match ticket histories params
func (o *QueryMatchTicketHistoriesParams) WithHTTPClient(client *http.Client) *QueryMatchTicketHistoriesParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the query match ticket histories params
func (o *QueryMatchTicketHistoriesParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the query match ticket histories params
func (o *QueryMatchTicketHistoriesParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *QueryMatchTicketHistoriesParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithMatchID adds the matchID to the query match ticket histories params
func (o *QueryMatchTicketHistoriesParams) WithMatchID(matchID string) *QueryMatchTicketHistoriesParams {
	o.SetMatchID(matchID)
	return o
}

// SetMatchID adds the matchId to the query match ticket histories params
func (o *QueryMatchTicketHistoriesParams) SetMatchID(matchID string) {
	o.MatchID = matchID
}

// WithNamespace adds the namespace to the query match ticket histories params
func (o *QueryMatchTicketHistoriesParams) WithNamespace(namespace string) *QueryMatchTicketHistoriesParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the query match ticket histories params
func (o *QueryMatchTicketHistoriesParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *QueryMatchTicketHistoriesParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param matchId
	if err := r.SetPathParam("matchId", o.MatchID); err != nil {
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
