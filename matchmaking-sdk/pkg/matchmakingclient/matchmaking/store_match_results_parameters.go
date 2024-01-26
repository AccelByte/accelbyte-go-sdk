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

// NewStoreMatchResultsParams creates a new StoreMatchResultsParams object
// with the default values initialized.
func NewStoreMatchResultsParams() *StoreMatchResultsParams {
	var ()
	return &StoreMatchResultsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewStoreMatchResultsParamsWithTimeout creates a new StoreMatchResultsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewStoreMatchResultsParamsWithTimeout(timeout time.Duration) *StoreMatchResultsParams {
	var ()
	return &StoreMatchResultsParams{

		timeout: timeout,
	}
}

// NewStoreMatchResultsParamsWithContext creates a new StoreMatchResultsParams object
// with the default values initialized, and the ability to set a context for a request
func NewStoreMatchResultsParamsWithContext(ctx context.Context) *StoreMatchResultsParams {
	var ()
	return &StoreMatchResultsParams{

		Context: ctx,
	}
}

// NewStoreMatchResultsParamsWithHTTPClient creates a new StoreMatchResultsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewStoreMatchResultsParamsWithHTTPClient(client *http.Client) *StoreMatchResultsParams {
	var ()
	return &StoreMatchResultsParams{
		HTTPClient: client,
	}
}

/*StoreMatchResultsParams contains all the parameters to send to the API endpoint
for the store match results operation typically these are written to a http.Request
*/
type StoreMatchResultsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *matchmakingclientmodels.ModelsMatchResultRequest
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

// WithTimeout adds the timeout to the store match results params
func (o *StoreMatchResultsParams) WithTimeout(timeout time.Duration) *StoreMatchResultsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the store match results params
func (o *StoreMatchResultsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the store match results params
func (o *StoreMatchResultsParams) WithContext(ctx context.Context) *StoreMatchResultsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the store match results params
func (o *StoreMatchResultsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the store match results params
func (o *StoreMatchResultsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the store match results params
func (o *StoreMatchResultsParams) WithHTTPClient(client *http.Client) *StoreMatchResultsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the store match results params
func (o *StoreMatchResultsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the store match results params
func (o *StoreMatchResultsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *StoreMatchResultsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the store match results params
func (o *StoreMatchResultsParams) WithBody(body *matchmakingclientmodels.ModelsMatchResultRequest) *StoreMatchResultsParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the store match results params
func (o *StoreMatchResultsParams) SetBody(body *matchmakingclientmodels.ModelsMatchResultRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the store match results params
func (o *StoreMatchResultsParams) WithNamespace(namespace string) *StoreMatchResultsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the store match results params
func (o *StoreMatchResultsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *StoreMatchResultsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
