// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package game_session

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

// NewGetGameSessionByPodNameParams creates a new GetGameSessionByPodNameParams object
// with the default values initialized.
func NewGetGameSessionByPodNameParams() *GetGameSessionByPodNameParams {
	var ()
	return &GetGameSessionByPodNameParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetGameSessionByPodNameParamsWithTimeout creates a new GetGameSessionByPodNameParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetGameSessionByPodNameParamsWithTimeout(timeout time.Duration) *GetGameSessionByPodNameParams {
	var ()
	return &GetGameSessionByPodNameParams{

		timeout: timeout,
	}
}

// NewGetGameSessionByPodNameParamsWithContext creates a new GetGameSessionByPodNameParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetGameSessionByPodNameParamsWithContext(ctx context.Context) *GetGameSessionByPodNameParams {
	var ()
	return &GetGameSessionByPodNameParams{

		Context: ctx,
	}
}

// NewGetGameSessionByPodNameParamsWithHTTPClient creates a new GetGameSessionByPodNameParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetGameSessionByPodNameParamsWithHTTPClient(client *http.Client) *GetGameSessionByPodNameParams {
	var ()
	return &GetGameSessionByPodNameParams{
		HTTPClient: client,
	}
}

/*GetGameSessionByPodNameParams contains all the parameters to send to the API endpoint
for the get game session by pod name operation typically these are written to a http.Request
*/
type GetGameSessionByPodNameParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*PodName
	  Pod Name

	*/
	PodName string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the get game session by pod name params
func (o *GetGameSessionByPodNameParams) WithTimeout(timeout time.Duration) *GetGameSessionByPodNameParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get game session by pod name params
func (o *GetGameSessionByPodNameParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get game session by pod name params
func (o *GetGameSessionByPodNameParams) WithContext(ctx context.Context) *GetGameSessionByPodNameParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get game session by pod name params
func (o *GetGameSessionByPodNameParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get game session by pod name params
func (o *GetGameSessionByPodNameParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get game session by pod name params
func (o *GetGameSessionByPodNameParams) WithHTTPClient(client *http.Client) *GetGameSessionByPodNameParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get game session by pod name params
func (o *GetGameSessionByPodNameParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get game session by pod name params
func (o *GetGameSessionByPodNameParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *GetGameSessionByPodNameParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the get game session by pod name params
func (o *GetGameSessionByPodNameParams) WithNamespace(namespace string) *GetGameSessionByPodNameParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the get game session by pod name params
func (o *GetGameSessionByPodNameParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPodName adds the podName to the get game session by pod name params
func (o *GetGameSessionByPodNameParams) WithPodName(podName string) *GetGameSessionByPodNameParams {
	o.SetPodName(podName)
	return o
}

// SetPodName adds the podName to the get game session by pod name params
func (o *GetGameSessionByPodNameParams) SetPodName(podName string) {
	o.PodName = podName
}

// WriteToRequest writes these params to a swagger request
func (o *GetGameSessionByPodNameParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param podName
	if err := r.SetPathParam("podName", o.PodName); err != nil {
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
