// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package data_retrieval_s2_s

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

// NewS2SGeneratePersonalDataURLParams creates a new S2SGeneratePersonalDataURLParams object
// with the default values initialized.
func NewS2SGeneratePersonalDataURLParams() *S2SGeneratePersonalDataURLParams {
	var ()
	return &S2SGeneratePersonalDataURLParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewS2SGeneratePersonalDataURLParamsWithTimeout creates a new S2SGeneratePersonalDataURLParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewS2SGeneratePersonalDataURLParamsWithTimeout(timeout time.Duration) *S2SGeneratePersonalDataURLParams {
	var ()
	return &S2SGeneratePersonalDataURLParams{

		timeout: timeout,
	}
}

// NewS2SGeneratePersonalDataURLParamsWithContext creates a new S2SGeneratePersonalDataURLParams object
// with the default values initialized, and the ability to set a context for a request
func NewS2SGeneratePersonalDataURLParamsWithContext(ctx context.Context) *S2SGeneratePersonalDataURLParams {
	var ()
	return &S2SGeneratePersonalDataURLParams{

		Context: ctx,
	}
}

// NewS2SGeneratePersonalDataURLParamsWithHTTPClient creates a new S2SGeneratePersonalDataURLParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewS2SGeneratePersonalDataURLParamsWithHTTPClient(client *http.Client) *S2SGeneratePersonalDataURLParams {
	var ()
	return &S2SGeneratePersonalDataURLParams{
		HTTPClient: client,
	}
}

/*S2SGeneratePersonalDataURLParams contains all the parameters to send to the API endpoint
for the s2s generate personal data url operation typically these are written to a http.Request
*/
type S2SGeneratePersonalDataURLParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Publisher Namespace

	*/
	Namespace string
	/*RequestDate
	  Request date in RFC3339 format

	*/
	RequestDate string
	/*UserID
	  Publisher User Id

	*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the s2s generate personal data url params
func (o *S2SGeneratePersonalDataURLParams) WithTimeout(timeout time.Duration) *S2SGeneratePersonalDataURLParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the s2s generate personal data url params
func (o *S2SGeneratePersonalDataURLParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the s2s generate personal data url params
func (o *S2SGeneratePersonalDataURLParams) WithContext(ctx context.Context) *S2SGeneratePersonalDataURLParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the s2s generate personal data url params
func (o *S2SGeneratePersonalDataURLParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the s2s generate personal data url params
func (o *S2SGeneratePersonalDataURLParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the s2s generate personal data url params
func (o *S2SGeneratePersonalDataURLParams) WithHTTPClient(client *http.Client) *S2SGeneratePersonalDataURLParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the s2s generate personal data url params
func (o *S2SGeneratePersonalDataURLParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the s2s generate personal data url params
func (o *S2SGeneratePersonalDataURLParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *S2SGeneratePersonalDataURLParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the s2s generate personal data url params
func (o *S2SGeneratePersonalDataURLParams) WithNamespace(namespace string) *S2SGeneratePersonalDataURLParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the s2s generate personal data url params
func (o *S2SGeneratePersonalDataURLParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithRequestDate adds the requestDate to the s2s generate personal data url params
func (o *S2SGeneratePersonalDataURLParams) WithRequestDate(requestDate string) *S2SGeneratePersonalDataURLParams {
	o.SetRequestDate(requestDate)
	return o
}

// SetRequestDate adds the requestDate to the s2s generate personal data url params
func (o *S2SGeneratePersonalDataURLParams) SetRequestDate(requestDate string) {
	o.RequestDate = requestDate
}

// WithUserID adds the userID to the s2s generate personal data url params
func (o *S2SGeneratePersonalDataURLParams) WithUserID(userID string) *S2SGeneratePersonalDataURLParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the s2s generate personal data url params
func (o *S2SGeneratePersonalDataURLParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *S2SGeneratePersonalDataURLParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param requestDate
	if err := r.SetPathParam("requestDate", o.RequestDate); err != nil {
		return err
	}

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
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
