// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package data_deletion_s2_s

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

// NewS2SGetListFinishedAccountDeletionRequestParams creates a new S2SGetListFinishedAccountDeletionRequestParams object
// with the default values initialized.
func NewS2SGetListFinishedAccountDeletionRequestParams() *S2SGetListFinishedAccountDeletionRequestParams {
	var ()
	return &S2SGetListFinishedAccountDeletionRequestParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewS2SGetListFinishedAccountDeletionRequestParamsWithTimeout creates a new S2SGetListFinishedAccountDeletionRequestParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewS2SGetListFinishedAccountDeletionRequestParamsWithTimeout(timeout time.Duration) *S2SGetListFinishedAccountDeletionRequestParams {
	var ()
	return &S2SGetListFinishedAccountDeletionRequestParams{

		timeout: timeout,
	}
}

// NewS2SGetListFinishedAccountDeletionRequestParamsWithContext creates a new S2SGetListFinishedAccountDeletionRequestParams object
// with the default values initialized, and the ability to set a context for a request
func NewS2SGetListFinishedAccountDeletionRequestParamsWithContext(ctx context.Context) *S2SGetListFinishedAccountDeletionRequestParams {
	var ()
	return &S2SGetListFinishedAccountDeletionRequestParams{

		Context: ctx,
	}
}

// NewS2SGetListFinishedAccountDeletionRequestParamsWithHTTPClient creates a new S2SGetListFinishedAccountDeletionRequestParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewS2SGetListFinishedAccountDeletionRequestParamsWithHTTPClient(client *http.Client) *S2SGetListFinishedAccountDeletionRequestParams {
	var ()
	return &S2SGetListFinishedAccountDeletionRequestParams{
		HTTPClient: client,
	}
}

/*S2SGetListFinishedAccountDeletionRequestParams contains all the parameters to send to the API endpoint
for the s2s get list finished account deletion request operation typically these are written to a http.Request
*/
type S2SGetListFinishedAccountDeletionRequestParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Publisher Namespace

	*/
	Namespace string
	/*End
	  Finished end time (RFC3339 format, example: 2024-01-01T01:30:59.12Z). Cannot exceed current time. End time is exclusive

	*/
	End string
	/*Start
	  Finished start time (RFC3339 format, example: 2024-01-01T01:30:59.12Z). Start time is inclusive

	*/
	Start string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the s2s get list finished account deletion request params
func (o *S2SGetListFinishedAccountDeletionRequestParams) WithTimeout(timeout time.Duration) *S2SGetListFinishedAccountDeletionRequestParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the s2s get list finished account deletion request params
func (o *S2SGetListFinishedAccountDeletionRequestParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the s2s get list finished account deletion request params
func (o *S2SGetListFinishedAccountDeletionRequestParams) WithContext(ctx context.Context) *S2SGetListFinishedAccountDeletionRequestParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the s2s get list finished account deletion request params
func (o *S2SGetListFinishedAccountDeletionRequestParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the s2s get list finished account deletion request params
func (o *S2SGetListFinishedAccountDeletionRequestParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the s2s get list finished account deletion request params
func (o *S2SGetListFinishedAccountDeletionRequestParams) WithHTTPClient(client *http.Client) *S2SGetListFinishedAccountDeletionRequestParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the s2s get list finished account deletion request params
func (o *S2SGetListFinishedAccountDeletionRequestParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the s2s get list finished account deletion request params
func (o *S2SGetListFinishedAccountDeletionRequestParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *S2SGetListFinishedAccountDeletionRequestParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the s2s get list finished account deletion request params
func (o *S2SGetListFinishedAccountDeletionRequestParams) WithNamespace(namespace string) *S2SGetListFinishedAccountDeletionRequestParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the s2s get list finished account deletion request params
func (o *S2SGetListFinishedAccountDeletionRequestParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithEnd adds the end to the s2s get list finished account deletion request params
func (o *S2SGetListFinishedAccountDeletionRequestParams) WithEnd(end string) *S2SGetListFinishedAccountDeletionRequestParams {
	o.SetEnd(end)
	return o
}

// SetEnd adds the end to the s2s get list finished account deletion request params
func (o *S2SGetListFinishedAccountDeletionRequestParams) SetEnd(end string) {
	o.End = end
}

// WithStart adds the start to the s2s get list finished account deletion request params
func (o *S2SGetListFinishedAccountDeletionRequestParams) WithStart(start string) *S2SGetListFinishedAccountDeletionRequestParams {
	o.SetStart(start)
	return o
}

// SetStart adds the start to the s2s get list finished account deletion request params
func (o *S2SGetListFinishedAccountDeletionRequestParams) SetStart(start string) {
	o.Start = start
}

// WriteToRequest writes these params to a swagger request
func (o *S2SGetListFinishedAccountDeletionRequestParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
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
