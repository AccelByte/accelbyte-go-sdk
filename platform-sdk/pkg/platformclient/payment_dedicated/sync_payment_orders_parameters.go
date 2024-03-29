// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package payment_dedicated

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

// NewSyncPaymentOrdersParams creates a new SyncPaymentOrdersParams object
// with the default values initialized.
func NewSyncPaymentOrdersParams() *SyncPaymentOrdersParams {
	var ()
	return &SyncPaymentOrdersParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewSyncPaymentOrdersParamsWithTimeout creates a new SyncPaymentOrdersParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewSyncPaymentOrdersParamsWithTimeout(timeout time.Duration) *SyncPaymentOrdersParams {
	var ()
	return &SyncPaymentOrdersParams{

		timeout: timeout,
	}
}

// NewSyncPaymentOrdersParamsWithContext creates a new SyncPaymentOrdersParams object
// with the default values initialized, and the ability to set a context for a request
func NewSyncPaymentOrdersParamsWithContext(ctx context.Context) *SyncPaymentOrdersParams {
	var ()
	return &SyncPaymentOrdersParams{

		Context: ctx,
	}
}

// NewSyncPaymentOrdersParamsWithHTTPClient creates a new SyncPaymentOrdersParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewSyncPaymentOrdersParamsWithHTTPClient(client *http.Client) *SyncPaymentOrdersParams {
	var ()
	return &SyncPaymentOrdersParams{
		HTTPClient: client,
	}
}

/*SyncPaymentOrdersParams contains all the parameters to send to the API endpoint
for the sync payment orders operation typically these are written to a http.Request
*/
type SyncPaymentOrdersParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*NextEvaluatedKey*/
	NextEvaluatedKey *string
	/*End
	  exclude ISODateTimeFormat no millis like yyyy-MM-dd'T'HH:mm:ssZZ

	*/
	End string
	/*Start
	  include ISODateTimeFormat no millis like yyyy-MM-dd'T'HH:mm:ssZZ

	*/
	Start string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the sync payment orders params
func (o *SyncPaymentOrdersParams) WithTimeout(timeout time.Duration) *SyncPaymentOrdersParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the sync payment orders params
func (o *SyncPaymentOrdersParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the sync payment orders params
func (o *SyncPaymentOrdersParams) WithContext(ctx context.Context) *SyncPaymentOrdersParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the sync payment orders params
func (o *SyncPaymentOrdersParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the sync payment orders params
func (o *SyncPaymentOrdersParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the sync payment orders params
func (o *SyncPaymentOrdersParams) WithHTTPClient(client *http.Client) *SyncPaymentOrdersParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the sync payment orders params
func (o *SyncPaymentOrdersParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the sync payment orders params
func (o *SyncPaymentOrdersParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *SyncPaymentOrdersParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNextEvaluatedKey adds the nextEvaluatedKey to the sync payment orders params
func (o *SyncPaymentOrdersParams) WithNextEvaluatedKey(nextEvaluatedKey *string) *SyncPaymentOrdersParams {
	o.SetNextEvaluatedKey(nextEvaluatedKey)
	return o
}

// SetNextEvaluatedKey adds the nextEvaluatedKey to the sync payment orders params
func (o *SyncPaymentOrdersParams) SetNextEvaluatedKey(nextEvaluatedKey *string) {
	o.NextEvaluatedKey = nextEvaluatedKey
}

// WithEnd adds the end to the sync payment orders params
func (o *SyncPaymentOrdersParams) WithEnd(end string) *SyncPaymentOrdersParams {
	o.SetEnd(end)
	return o
}

// SetEnd adds the end to the sync payment orders params
func (o *SyncPaymentOrdersParams) SetEnd(end string) {
	o.End = end
}

// WithStart adds the start to the sync payment orders params
func (o *SyncPaymentOrdersParams) WithStart(start string) *SyncPaymentOrdersParams {
	o.SetStart(start)
	return o
}

// SetStart adds the start to the sync payment orders params
func (o *SyncPaymentOrdersParams) SetStart(start string) {
	o.Start = start
}

// WriteToRequest writes these params to a swagger request
func (o *SyncPaymentOrdersParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.NextEvaluatedKey != nil {

		// query param nextEvaluatedKey
		var qrNextEvaluatedKey string
		if o.NextEvaluatedKey != nil {
			qrNextEvaluatedKey = *o.NextEvaluatedKey
		}
		qNextEvaluatedKey := qrNextEvaluatedKey
		if qNextEvaluatedKey != "" {
			if err := r.SetQueryParam("nextEvaluatedKey", qNextEvaluatedKey); err != nil {
				return err
			}
		}

	}

	// query param end
	qrEnd := o.End
	qEnd := qrEnd
	if qEnd != "" {
		if err := r.SetQueryParam("end", qEnd); err != nil {
			return err
		}
	}

	// query param start
	qrStart := o.Start
	qStart := qrStart
	if qStart != "" {
		if err := r.SetQueryParam("start", qStart); err != nil {
			return err
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
