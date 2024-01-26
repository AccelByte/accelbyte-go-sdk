// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package backfill

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

// NewDeleteBackfillParams creates a new DeleteBackfillParams object
// with the default values initialized.
func NewDeleteBackfillParams() *DeleteBackfillParams {
	var ()
	return &DeleteBackfillParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteBackfillParamsWithTimeout creates a new DeleteBackfillParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteBackfillParamsWithTimeout(timeout time.Duration) *DeleteBackfillParams {
	var ()
	return &DeleteBackfillParams{

		timeout: timeout,
	}
}

// NewDeleteBackfillParamsWithContext creates a new DeleteBackfillParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteBackfillParamsWithContext(ctx context.Context) *DeleteBackfillParams {
	var ()
	return &DeleteBackfillParams{

		Context: ctx,
	}
}

// NewDeleteBackfillParamsWithHTTPClient creates a new DeleteBackfillParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteBackfillParamsWithHTTPClient(client *http.Client) *DeleteBackfillParams {
	var ()
	return &DeleteBackfillParams{
		HTTPClient: client,
	}
}

/*DeleteBackfillParams contains all the parameters to send to the API endpoint
for the delete backfill operation typically these are written to a http.Request
*/
type DeleteBackfillParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*BackfillID
	  backfill Ticket ID

	*/
	BackfillID string
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

// WithTimeout adds the timeout to the delete backfill params
func (o *DeleteBackfillParams) WithTimeout(timeout time.Duration) *DeleteBackfillParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete backfill params
func (o *DeleteBackfillParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete backfill params
func (o *DeleteBackfillParams) WithContext(ctx context.Context) *DeleteBackfillParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete backfill params
func (o *DeleteBackfillParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete backfill params
func (o *DeleteBackfillParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete backfill params
func (o *DeleteBackfillParams) WithHTTPClient(client *http.Client) *DeleteBackfillParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete backfill params
func (o *DeleteBackfillParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete backfill params
func (o *DeleteBackfillParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *DeleteBackfillParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBackfillID adds the backfillID to the delete backfill params
func (o *DeleteBackfillParams) WithBackfillID(backfillID string) *DeleteBackfillParams {
	o.SetBackfillID(backfillID)
	return o
}

// SetBackfillID adds the backfillId to the delete backfill params
func (o *DeleteBackfillParams) SetBackfillID(backfillID string) {
	o.BackfillID = backfillID
}

// WithNamespace adds the namespace to the delete backfill params
func (o *DeleteBackfillParams) WithNamespace(namespace string) *DeleteBackfillParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the delete backfill params
func (o *DeleteBackfillParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteBackfillParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param backfillID
	if err := r.SetPathParam("backfillID", o.BackfillID); err != nil {
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
