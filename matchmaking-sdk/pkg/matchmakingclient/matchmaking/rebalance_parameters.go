// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package matchmaking

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/matchmaking-sdk/pkg/matchmakingclientmodels"
)

// NewRebalanceParams creates a new RebalanceParams object
// with the default values initialized.
func NewRebalanceParams() *RebalanceParams {
	var ()
	return &RebalanceParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewRebalanceParamsWithTimeout creates a new RebalanceParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewRebalanceParamsWithTimeout(timeout time.Duration) *RebalanceParams {
	var ()
	return &RebalanceParams{

		timeout: timeout,
	}
}

// NewRebalanceParamsWithContext creates a new RebalanceParams object
// with the default values initialized, and the ability to set a context for a request
func NewRebalanceParamsWithContext(ctx context.Context) *RebalanceParams {
	var ()
	return &RebalanceParams{

		Context: ctx,
	}
}

// NewRebalanceParamsWithHTTPClient creates a new RebalanceParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewRebalanceParamsWithHTTPClient(client *http.Client) *RebalanceParams {
	var ()
	return &RebalanceParams{
		HTTPClient: client,
	}
}

/*RebalanceParams contains all the parameters to send to the API endpoint
for the rebalance operation typically these are written to a http.Request
*/
type RebalanceParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *matchmakingclientmodels.ModelsRebalanceRequest
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

// WithTimeout adds the timeout to the rebalance params
func (o *RebalanceParams) WithTimeout(timeout time.Duration) *RebalanceParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the rebalance params
func (o *RebalanceParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the rebalance params
func (o *RebalanceParams) WithContext(ctx context.Context) *RebalanceParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the rebalance params
func (o *RebalanceParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the rebalance params
func (o *RebalanceParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the rebalance params
func (o *RebalanceParams) WithHTTPClient(client *http.Client) *RebalanceParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the rebalance params
func (o *RebalanceParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the rebalance params
func (o *RebalanceParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *RebalanceParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the rebalance params
func (o *RebalanceParams) WithBody(body *matchmakingclientmodels.ModelsRebalanceRequest) *RebalanceParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the rebalance params
func (o *RebalanceParams) SetBody(body *matchmakingclientmodels.ModelsRebalanceRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the rebalance params
func (o *RebalanceParams) WithNamespace(namespace string) *RebalanceParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the rebalance params
func (o *RebalanceParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *RebalanceParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
