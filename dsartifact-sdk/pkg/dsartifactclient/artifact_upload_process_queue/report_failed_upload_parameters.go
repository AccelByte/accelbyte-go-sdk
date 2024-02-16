// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package artifact_upload_process_queue

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

// NewReportFailedUploadParams creates a new ReportFailedUploadParams object
// with the default values initialized.
func NewReportFailedUploadParams() *ReportFailedUploadParams {
	var ()
	return &ReportFailedUploadParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewReportFailedUploadParamsWithTimeout creates a new ReportFailedUploadParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewReportFailedUploadParamsWithTimeout(timeout time.Duration) *ReportFailedUploadParams {
	var ()
	return &ReportFailedUploadParams{

		timeout: timeout,
	}
}

// NewReportFailedUploadParamsWithContext creates a new ReportFailedUploadParams object
// with the default values initialized, and the ability to set a context for a request
func NewReportFailedUploadParamsWithContext(ctx context.Context) *ReportFailedUploadParams {
	var ()
	return &ReportFailedUploadParams{

		Context: ctx,
	}
}

// NewReportFailedUploadParamsWithHTTPClient creates a new ReportFailedUploadParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewReportFailedUploadParamsWithHTTPClient(client *http.Client) *ReportFailedUploadParams {
	var ()
	return &ReportFailedUploadParams{
		HTTPClient: client,
	}
}

/*ReportFailedUploadParams contains all the parameters to send to the API endpoint
for the report failed upload operation typically these are written to a http.Request
*/
type ReportFailedUploadParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*NodeIP
	  Node IP of the ds nomad client that failed the artifact upload

	*/
	NodeIP string
	/*PodName
	  Pod Name of the DS who owns the artifact

	*/
	PodName string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the report failed upload params
func (o *ReportFailedUploadParams) WithTimeout(timeout time.Duration) *ReportFailedUploadParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the report failed upload params
func (o *ReportFailedUploadParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the report failed upload params
func (o *ReportFailedUploadParams) WithContext(ctx context.Context) *ReportFailedUploadParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the report failed upload params
func (o *ReportFailedUploadParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the report failed upload params
func (o *ReportFailedUploadParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the report failed upload params
func (o *ReportFailedUploadParams) WithHTTPClient(client *http.Client) *ReportFailedUploadParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the report failed upload params
func (o *ReportFailedUploadParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the report failed upload params
func (o *ReportFailedUploadParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *ReportFailedUploadParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNodeIP adds the nodeIP to the report failed upload params
func (o *ReportFailedUploadParams) WithNodeIP(nodeIP string) *ReportFailedUploadParams {
	o.SetNodeIP(nodeIP)
	return o
}

// SetNodeIP adds the nodeIp to the report failed upload params
func (o *ReportFailedUploadParams) SetNodeIP(nodeIP string) {
	o.NodeIP = nodeIP
}

// WithPodName adds the podName to the report failed upload params
func (o *ReportFailedUploadParams) WithPodName(podName string) *ReportFailedUploadParams {
	o.SetPodName(podName)
	return o
}

// SetPodName adds the podName to the report failed upload params
func (o *ReportFailedUploadParams) SetPodName(podName string) {
	o.PodName = podName
}

// WriteToRequest writes these params to a swagger request
func (o *ReportFailedUploadParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// query param nodeIP
	qrNodeIP := o.NodeIP
	qNodeIP := qrNodeIP
	if qNodeIP != "" {
		if err := r.SetQueryParam("nodeIP", qNodeIP); err != nil {
			return err
		}
	}

	// query param podName
	qrPodName := o.PodName
	qPodName := qrPodName
	if qPodName != "" {
		if err := r.SetQueryParam("podName", qPodName); err != nil {
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
